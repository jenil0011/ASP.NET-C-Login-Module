using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Net;
using System.Net.Mail;

namespace LoginRegisterActiveAccount
{
    public partial class ResetPassword : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["conString"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            string forgot_otp = Request.QueryString["fotgot_otp"].ToString();
            string email = Request.QueryString["email"].ToString();
            con.Open();
            string checkActivation = "select user_id from [userinfo] where email='" + email + "' and fotgot_otp='" + forgot_otp + "'";
            SqlCommand checkCMD = new SqlCommand(checkActivation, con);
            SqlDataReader read = checkCMD.ExecuteReader();
            if (read.Read())
            {
                PlaceHolder1.Visible = true;
                PlaceHolder2.Visible = false;

                con.Close();    
            }
            else
            {
                PlaceHolder1.Visible = false;
                PlaceHolder2.Visible = true;
                con.Close();
            }
        }

        protected void resetpwdBtn_Click(object sender, EventArgs e)
        {
            string email = Request.QueryString["email"].ToString();
            if (password.Text.ToString() == confirm_password.Text.ToString())
            {
                con.Open();
                string updateAcc = "update [userinfo] set fotgot_otp=0,confirm_password='"+ password.Text.ToString() +"',password='"+ password.Text.ToString() +"' where email='" + email + "'";
                SqlCommand cmdUpdate = new SqlCommand(updateAcc, con);
                cmdUpdate.ExecuteNonQuery();
                lblErrorMsg.Text = "Password Reset Sucessfully.";
                lblErrorMsg.ForeColor = System.Drawing.Color.Green;
                con.Close();
            }
            else 
            {
                lblErrorMsg.Text = "Password and Confirm Password is not same.";
                lblErrorMsg.ForeColor = System.Drawing.Color.Red;
            }

           
        }
    }
}