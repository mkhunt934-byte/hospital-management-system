using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace hospitalll
{
    public partial class AdminAppointments : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // This code runs when the page loads
            if (!IsPostBack)
            {
                // Optionally, load existing appointments here
                LoadAppointments();
            }
        }

        protected void btnBook_Click(object sender, EventArgs e)
        {
            string patientName = txtPatientName.Text;
            string doctorName = txtDoctorName.Text;
            string appointmentDate = txtDate.Text;
            string appointmentTime = txtTime.Text;
            string reason = txtReason.Text;

            // You can later replace this with DB insert logic
            lblMsg.Text = "Appointment booked successfully for " + patientName + " with " + doctorName + " on " + appointmentDate + " at " + appointmentTime + ".";
            lblMsg.ForeColor = System.Drawing.Color.Green;

            // Optional: clear form after booking
            txtPatientName.Text = "";
            txtDoctorName.Text = "";
            txtDate.Text = "";
            txtTime.Text = "";
            txtReason.Text = "";
        }

        private void LoadAppointments()
        {
            // In real use, you would bind data from DB here
            // For now, we can simulate a few sample appointments
            var data = new[]
            {
                new { Id = 1, PatientName = "John Smith", DoctorName = "Dr. Brown", AppointmentDate = "2025-11-10", AppointmentTime = "10:00 AM", Reason = "Checkup" },
                new { Id = 2, PatientName = "Maria Jones", DoctorName = "Dr. Patel", AppointmentDate = "2025-11-12", AppointmentTime = "02:30 PM", Reason = "Follow-up" },
                new { Id = 3, PatientName = "David Lee", DoctorName = "Dr. Sharma", AppointmentDate = "2025-11-14", AppointmentTime = "11:15 AM", Reason = "Consultation" }
            };

            GridView1.DataSource = data;
            GridView1.DataBind();
        }
    }
}
