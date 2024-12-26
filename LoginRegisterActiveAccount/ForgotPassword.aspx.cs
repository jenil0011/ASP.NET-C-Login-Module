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
    public partial class ForgotPassword : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["conString"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void forgotPwdBtn_Click(object sender, EventArgs e)
        {
            con.Open();
            string selectUser = "select user_id from [userinfo] where email='" + email.Text.ToString() + "' and is_active=1";
            SqlCommand selCmd = new SqlCommand(selectUser, con);
            SqlDataReader read = selCmd.ExecuteReader();
            if (read.Read())
            {
                con.Close();
                Random random = new Random();
                int myRandom = random.Next(10000000, 99999999);
                string fotgot_otp = myRandom.ToString();

                con.Open();
                string updateAcc = "update [userinfo] set fotgot_otp='"+ fotgot_otp +"' where email='" + email.Text.ToString() + "'";
                SqlCommand cmdUpdate = new SqlCommand(updateAcc, con);
                cmdUpdate.ExecuteNonQuery();
                con.Close();

                MailMessage mail = new MailMessage();
                mail.To.Add(email.Text.ToString());
                mail.From = new MailAddress("jenilrevdiwala01@gmail.com");
                mail.Subject = "Reset Password Link";

                string emailBody = "";

                emailBody += "<h1>Hello User,<h1/>";
                emailBody += "Click Below Link for Reset Your Password.<br/>";
                emailBody += "<p><a href='" + "https://localhost:44360/ResetPassword.aspx?fotgot_otp=" + fotgot_otp + "" + "&email=" + email.Text.ToString() + "'>Click here to Reset Password</a></p>";
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

                lblErrorMsg.Text = "Reset Password Link sent Successfully.";
                lblErrorMsg.ForeColor = System.Drawing.Color.Green;
               
            }
            else
            {
                lblErrorMsg.Text = "Your Email is Not Associated With Us.";
                lblErrorMsg.ForeColor = System.Drawing.Color.Red;
                con.Close();
            }
        }
    }
}