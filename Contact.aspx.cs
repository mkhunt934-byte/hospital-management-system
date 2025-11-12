using System;
using System.Configuration;
using System.Data.SqlClient;
using System.Web.UI;

namespace hospitalll
{
    public partial class Contact : System.Web.UI.Page
    {
        string s = ConfigurationManager.ConnectionStrings["db"].ConnectionString;
        SqlConnection con;
        SqlCommand cmd;

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
            txtName.Text = "";
            txtEmail.Text = "";
            txtSubject.Text = "";
            txtMessage.Text = "";
        }

        protected void btnSend_Click(object sender, EventArgs e)
        {
            getcon();
            cmd = new SqlCommand("INSERT INTO ContactMessages (FullName, Email, Subject, Message) " +
                                 "VALUES ('" + txtName.Text + "', '" + txtEmail.Text + "', '" + txtSubject.Text + "', '" + txtMessage.Text + "')", con);
            cmd.ExecuteNonQuery();
            clen();
            lblStatus.Text = "✅ Your message has been sent successfully!";
            lblStatus.ForeColor = System.Drawing.Color.Green;
        }
    }
}
