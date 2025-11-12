using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace hospitalll
{
    public partial class Login : System.Web.UI.Page
    {

        string s = ConfigurationManager.ConnectionStrings["db"].ConnectionString;
        SqlConnection con;
        SqlCommand cmd;
        SqlDataAdapter da;
        DataSet ds;

        protected void Page_Load(object sender, EventArgs e)
        {
            getcon();
        }
        void getcon()
        {
            con = new SqlConnection(s);
            con.Open();
        }
        void clen()
        {
            txtUsername.Text = "";
            txtPassword.Text = "";

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            getcon();
            cmd = new SqlCommand("INSERT INTO Login (Username, Password) VALUES ('" + txtUsername.Text + "', '" + txtPassword.Text + "')", con);
            cmd.ExecuteNonQuery();
            clen();
            Response.Redirect("Home.aspx");
        }
    }
}
