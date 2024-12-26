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
    public partial class Register : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["conString"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
       
        }

        protected void regBtn_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand checkEmail = new SqlCommand("select email from [userinfo] where email=' " +email.Text.ToString() + " '",con);
            SqlDataReader read = checkEmail.ExecuteReader();
            if (read.HasRows) 
            {
                lblErrorMsg.Text = "Email address is already exist.please try with different email address.";
                lblErrorMsg.ForeColor = System.Drawing.Color.Red;
                con.Close();    
            }
            else 
            {
                con.Close ();

                if (password.Text.ToString() == confirm_password.Text.ToString())
                {
                    Random random = new Random();
                    int myRandom = random.Next(10000000, 99999999);
                    string activation_code = myRandom.ToString();

                    con.Open();
                    string insertUser = "insert into [userinfo] (first_name,last_name,email,password,confirm_password,activation_code,is_active) values(@first_name,@last_name,@email,@password,@confirm_password,@activation_code,@is_active)";
                    SqlCommand insertCmd = new SqlCommand(insertUser, con);
                    insertCmd.Parameters.AddWithValue("@first_name", firstname.Text.ToString());
                    insertCmd.Parameters.AddWithValue("@last_name", lastname.Text.ToString());
                    insertCmd.Parameters.AddWithValue("@password", password.Text.ToString());
                    insertCmd.Parameters.AddWithValue("@confirm_password", confirm_password.Text.ToString());
                    insertCmd.Parameters.AddWithValue("@email", email.Text.ToString());
                    insertCmd.Parameters.AddWithValue("@activation_code", activation_code);
                    insertCmd.Parameters.AddWithValue("@is_active", 0);
                    insertCmd.ExecuteNonQuery();

                    MailMessage mail = new MailMessage();
                    mail.To.Add(email.Text.ToString());
                    mail.From = new MailAddress("jenilrevdiwala01@gmail.com");
                    mail.Subject = "Thank you for registering in Online Toy Shop Managment System.";

                    string emailBody = "";

                    emailBody += "<h1>Hello " + firstname.Text.ToString() + ",<h1/>";
                    emailBody += "Click Below Link for activate your Account.<br/>";
                    emailBody += "<p><a href='" + "https://localhost:44360/ActivateAccount.aspx?activation_code=" + activation_code + "" + "&email=" + email.Text.ToString() + "'>Click here to activate</a></p>";
                    emailBody += "Thank you...";

                    mail.Body = emailBody;
                    mail.IsBodyHtml = true;

                    SmtpClient smtp = new SmtpClient();
                    smtp.Port = 587;
                    smtp.EnableSsl = true;
                    smtp.UseDefaultCredentials = false;
                    smtp.Host = "smtp.gmail.com";
                    smtp.Credentials = new System.Net.NetworkCredential("jenilrevdiwala01@gmail.com", "dxcz zmzt norg bkfz");
                    smtp.Send(mail);

                    lblErrorMsg.Text = "You are Registered Sucessfully. Please check your Inbox/spam for activation code";
                    lblErrorMsg.ForeColor = System.Drawing.Color.Green;
                    con.Close();
                }
                else 
                {
                    lblErrorMsg.Text = "Passwords Doesnt matched!";
                    lblErrorMsg.ForeColor = System.Drawing.Color.Red;
                }
                
            }
        }
    }
}