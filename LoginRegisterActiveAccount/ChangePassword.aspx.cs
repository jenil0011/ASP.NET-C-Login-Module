using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

namespace LoginRegisterActiveAccount
{
    public partial class ChangePassword : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["conString"].ConnectionString);

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["email"] == null)
            {
                Response.Redirect("Login.aspx");
            }
        }

        protected void changePwd_Click(object sender, EventArgs e)
        {
            con.Open();
            String cmd = "select user_id from [userinfo] where password= '" + oldpassword.Text.ToString() + "' and email='" + Session["email"] + "'";
            SqlCommand change_password = new SqlCommand(cmd, con);
            SqlDataReader reade = change_password.ExecuteReader();


            if (reade.Read()) 
            { 
                con.Close();
                if(newpassword.Text.Trim() == confirmpassword.Text.Trim())
                {
                    con.Open() ;
                    string strUPDT = "update [userinfo] set password='" + newpassword.Text.ToString() + "',confirm_password='" + newpassword.Text.ToString() + "' where email='" + Session["email"] + "'";
                    SqlCommand cmdUpdate = new SqlCommand(strUPDT, con);
                    cmdUpdate.ExecuteNonQuery();
                    con.Close();
                    lblErrorMsg.Text = "Password Changed sucessfully.";
                    lblErrorMsg.ForeColor = System.Drawing.Color.Green;
                }
                else 
                {
                    lblErrorMsg.Text = "New Password and Confirm Password is Not Same";
                    lblErrorMsg.ForeColor= System.Drawing.Color.Red;
                }

            }
            else 
            {
                lblErrorMsg.Text = "Incorrect Old Password.";
                lblErrorMsg.ForeColor = System.Drawing.Color.Red;
            }
        }
    }
}