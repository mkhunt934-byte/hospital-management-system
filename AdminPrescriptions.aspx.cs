using System;
using System.Data;
using System.Web.UI;

namespace hospitalll
{
    public partial class AdminPrescriptions : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindPrescriptions();
            }
        }

        private void BindPrescriptions()
        {
            // Example data for testing
            DataTable dt = new DataTable();
            dt.Columns.Add("PrescriptionId");
            dt.Columns.Add("PatientName");
            dt.Columns.Add("MedicineName");
            dt.Columns.Add("Dosage");
            dt.Columns.Add("Date");

            dt.Rows.Add("1", "Darsyyy", "Paracetamol", "500mg", DateTime.Now.ToShortDateString());
            dt.Rows.Add("2", "Mahi", "Amoxicillin", "250mg", DateTime.Now.AddDays(-1).ToShortDateString());
            dt.Rows.Add("3", "Hemu", "Ibuprofen", "400mg", DateTime.Now.AddDays(-2).ToShortDateString());
            dt.Rows.Add("4", "Binal", "Stopak", "400mg", DateTime.Now.AddDays(-2).ToShortDateString());
            dt.Rows.Add("5", "Mitva", "Dolo", "400mg", DateTime.Now.AddDays(-2).ToShortDateString());
            dt.Rows.Add("6", "Motu", "Paracetamol", "400mg", DateTime.Now.AddDays(-2).ToShortDateString());
            dt.Rows.Add("7", "Dharti", "shirap", "400mg", DateTime.Now.AddDays(-2).ToShortDateString());
            dt.Rows.Add("8", "Hiral", "disney", "400mg", DateTime.Now.AddDays(-2).ToShortDateString());

            gvPrescriptions.DataSource = dt;
            gvPrescriptions.DataBind();
        }
    }
}
