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
    public partial class Login : System.Web.UI.Page
    {

        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["conString"].ConnectionString);

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void loginBtn_Click(object sender, EventArgs e)
        {
            con.Open();
            string selectUser = "select first_name,email from [userinfo] where email='"+ email.Text.ToString() +"' and password = '"+ password.Text.ToString() +"' and is_active=1";
            SqlCommand  selCmd = new SqlCommand(selectUser, con);
            SqlDataReader read = selCmd.ExecuteReader();
            if(read.Read())
            {
                Session["first_name"] = read.GetValue(0).ToString();
                Session["email"] = read.GetValue(1).ToString(); 
                con.Close();
                Response.Redirect("Home.aspx"); // it will redirect to home page
            }
            else 
            {
                lblErrorMsg.Text = "Invalid Email or Password.";
                lblErrorMsg.ForeColor = System.Drawing.Color.Red;
                con.Close();
            }
        }
    }
}