using System;
using System.Web;
using System.Web.UI;

namespace hospitalll
{
    public partial class AdminLogout : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // End session
            Session.Clear();
            Session.Abandon();

            // Optional: clear authentication cookie if used
            if (Request.Cookies[".ASPXAUTH"] != null)
            {
                HttpCookie cookie = new HttpCookie(".ASPXAUTH");
                cookie.Expires = DateTime.Now.AddDays(-1d);
                Response.Cookies.Add(cookie);
            }

            // Redirect to login page
            Response.AddHeader("REFRESH", "2;URL=AdminLogin.aspx");
        }
    }
}
