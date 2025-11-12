using System;
using System.Configuration;
using System.Data.SqlClient;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace hospitalll
{
    public partial class Booking : System.Web.UI.Page
    {
        string s = ConfigurationManager.ConnectionStrings["db"].ConnectionString;
        SqlConnection con;
        SqlCommand cmd;
        SqlDataAdapter da;
        System.Data.DataSet ds;

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
            txtPhone.Text = "";
            txtDate.Text = "";
            ddlDepartment.SelectedIndex = 0;
            ddlDoctor.SelectedIndex = 0;
            txtMessage.Text = "";
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            getcon();
            cmd = new SqlCommand("INSERT INTO Appointments (FullName, Email, Phone, AppointmentDate, Department, Doctor, Message) " +
                                 "VALUES ('" + txtName.Text + "', '" + txtEmail.Text + "', '" + txtPhone.Text + "', '" + txtDate.Text + "', '" + ddlDepartment.SelectedValue + "', '" + ddlDoctor.SelectedValue + "', '" + txtMessage.Text + "')", con);
            cmd.ExecuteNonQuery();
            clen();
            lblStatus.Text = "✅ Appointment Booked Successfully!";
            lblStatus.ForeColor = System.Drawing.Color.Green;
        }
    }
}
