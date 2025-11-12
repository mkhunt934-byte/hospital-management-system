using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace hospitalll
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnLogout_Click(object sender, EventArgs e)
        {
            // Clear all sessions
            Session.Clear();
            Session.Abandon();

            // Optionally clear authentication cookie if using Forms Auth
            if (Request.Cookies[".ASPXAUTH"] != null)
            {
                HttpCookie cookie = new HttpCookie(".ASPXAUTH");
                cookie.Expires = DateTime.Now.AddDays(-1);
                Response.Cookies.Add(cookie);
            }

            // Redirect to Login page
            Response.Redirect("AdminLogin.aspx");
        }

    }
}