using System;
using System.Data;
using System.Web.UI;

namespace hospitalll
{
    public partial class AdminAppointments : Page
    {
        // Keep data in ViewState so it persists after postbacks
        private DataTable AppointmentsTable
        {
            get
            {
                if (ViewState["Appointments"] == null)
                {
                    DataTable dt = new DataTable();
                    dt.Columns.Add("Id");
                    dt.Columns.Add("PatientName");
                    dt.Columns.Add("DoctorName");
                    dt.Columns.Add("AppointmentDate");
                    dt.Columns.Add("AppointmentTime");
                    dt.Columns.Add("Reason");
                    ViewState["Appointments"] = dt;
                }
                return (DataTable)ViewState["Appointments"];
            }
            set { ViewState["Appointments"] = value; }
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindAppointments();
            }
        }

        protected void btnBook_Click(object sender, EventArgs e)
        {
            // Get form values
            string patient = txtPatientName.Text.Trim();
            string doctor = txtDoctorName.Text.Trim();
            string date = txtDate.Text;
            string time = txtTime.Text;
            string reason = txtReason.Text.Trim();

            // Validate
            if (string.IsNullOrWhiteSpace(patient) || string.IsNullOrWhiteSpace(doctor) ||
                string.IsNullOrWhiteSpace(date) || string.IsNullOrWhiteSpace(time))
            {
                lblMsg.Text = "⚠ Please fill in all required fields!";
                lblMsg.ForeColor = System.Drawing.Color.Red;
                return;
            }

            // Create a new row
            DataTable dt = AppointmentsTable;
            DataRow newRow = dt.NewRow();
            newRow["Id"] = dt.Rows.Count + 1;
            newRow["PatientName"] = patient;
            newRow["DoctorName"] = doctor;
            newRow["AppointmentDate"] = date;
            newRow["AppointmentTime"] = time;
            newRow["Reason"] = reason;
            dt.Rows.Add(newRow);
            AppointmentsTable = dt;

            // Update grid
            GridView1.DataSource = dt;
            GridView1.DataBind();

            // Success message
            lblMsg.ForeColor = System.Drawing.Color.Green;
            lblMsg.Text = "✅ Appointment booked successfully!";

            // Clear form
            txtPatientName.Text = "";
            txtDoctorName.Text = "";
            txtDate.Text = "";
            txtTime.Text = "";
            txtReason.Text = "";
        }

        private void BindAppointments()
        {
            GridView1.DataSource = AppointmentsTable;
            GridView1.DataBind();
        }
    }
}
