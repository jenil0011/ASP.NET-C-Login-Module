using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LoginRegisterActiveAccount.admin
{
    public partial class admin_activateaccount : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["conString"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            string activation_code = Request.QueryString["activation_code"].ToString();
            string email = Request.QueryString["email"].ToString();

            con.Open();
            string checkActivation = "select admin_id from [admininfo] where email='" + email + "' and activation_code='" + activation_code + "' and activation_code !=0 and is_active !=1";
            SqlCommand checkCMD = new SqlCommand(checkActivation, con);
            SqlDataReader read = checkCMD.ExecuteReader();
            if (read.Read())
            {
                con.Close();
                con.Open();
                string updateAcc = "update [admininfo] set is_active=1,activation_code=0 where email='" + email + "'";
                SqlCommand cmdUpdate = new SqlCommand(updateAcc, con);
                cmdUpdate.ExecuteNonQuery();
                con.Close();
                lblErrorMsg.Text = "Your Account is Activated Sucessfully. please login to your Account.";
                lblErrorMsg.ForeColor = System.Drawing.Color.Green;
            }
            else
            {
                lblErrorMsg.Text = "Link is Expired.";
                lblErrorMsg.ForeColor = System.Drawing.Color.Red;
                con.Close();
            }
        }
    }
}