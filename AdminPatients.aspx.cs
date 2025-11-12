using System;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Web.UI.WebControls;

namespace hospitalll
{
    public partial class AdminPatients : System.Web.UI.Page
    {
        // NOTE: we read the connection string from web.config by name "HospitalDB"
        private string connString = ConfigurationManager.ConnectionStrings["HospitalDB"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindPatients();
            }
        }

        private void BindPatients()
        {
            try
            {
                using (SqlConnection con = new SqlConnection(connString))
                {
                    using (SqlCommand cmd = new SqlCommand("SELECT PatientID, FullName, Age, Gender, Contact, Address FROM Patients ORDER BY PatientID", con))
                    {
                        using (SqlDataAdapter da = new SqlDataAdapter(cmd))
                        {
                            DataTable dt = new DataTable();
                            da.Fill(dt);
                            rptPatients.DataSource = dt;
                            rptPatients.DataBind();
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                // show error so you can debug — remove or change to logging in production
                Response.Write("<script>alert('Error loading patients: " + ex.Message.Replace("'", "\\'") + "');</script>");
            }
        }

        protected void rptPatients_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            if (e.CommandName == "DeletePatient")
            {
                // validate argument
                int patientId;
                if (!Int32.TryParse(Convert.ToString(e.CommandArgument), out patientId))
                {
                    Response.Write("<script>alert('Invalid Patient ID.');</script>");
                    return;
                }

                try
                {
                    using (SqlConnection con = new SqlConnection(connString))
                    {
                        using (SqlCommand cmd = new SqlCommand("DELETE FROM Patients WHERE PatientID = @PatientID", con))
                        {
                            cmd.Parameters.AddWithValue("@PatientID", patientId);
                            con.Open();
                            int rowsAffected = cmd.ExecuteNonQuery();
                            con.Close();

                            if (rowsAffected > 0)
                            {
                                // success — rebind the repeater so UI updates
                                BindPatients();
                                Response.Write("<script>alert('Patient deleted successfully.');</script>");
                            }
                            else
                            {
                                // no rows affected: maybe wrong column name or id mismatch
                                Response.Write("<script>alert('No patient deleted — check PatientID and table name.');</script>");
                            }
                        }
                    }
                }
                catch (SqlException sqlex)
                {
                    Response.Write("<script>alert('SQL Error while deleting: " + sqlex.Message.Replace("'", "\\'") + "');</script>");
                }
                catch (Exception ex)
                {
                    Response.Write("<script>alert('Error while deleting: " + ex.Message.Replace("'", "\\'") + "');</script>");
                }
            }
        }

        protected void btnAddNew_Click(object sender, EventArgs e)
        {
            Response.Redirect("AddPatient.aspx");
        }
    }
}
