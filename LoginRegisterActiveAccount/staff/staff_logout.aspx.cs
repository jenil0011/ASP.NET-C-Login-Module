using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LoginRegisterActiveAccount.staff
{
    public partial class staff_logout : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["first_name"] == null)
            {
                Response.Redirect("staff_login.aspx");
            }
            else
            {
                Session.Clear();
                // Abandon session
                Session.Abandon();
                Response.Redirect("staff_login.aspx");
            }
        }
    }
}