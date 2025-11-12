using System;
using System.Configuration;
using System.Data.SqlClient;
using System.Drawing; // ✅ Needed for label color

namespace hospitalll
{
    public partial class AddPatient : System.Web.UI.Page
    {
        // ✅ Make sure Web.config contains <connectionStrings><add name="db" ... /></connectionStrings>
        string cs = ConfigurationManager.ConnectionStrings["db"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            // No special logic for now
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            // ✅ Basic validation before saving
            if (string.IsNullOrWhiteSpace(txtFullName.Text) ||
                string.IsNullOrWhiteSpace(txtAge.Text) ||
                string.IsNullOrWhiteSpace(ddlGender.SelectedValue) ||
                string.IsNullOrWhiteSpace(txtContact.Text) ||
                string.IsNullOrWhiteSpace(txtAddress.Text))
            {
                lblMessage.Text = "⚠️ Please fill all fields.";
                lblMessage.ForeColor = Color.Red;
                return;
            }

            try
            {
                using (SqlConnection con = new SqlConnection(cs))
                {
                    string query = "INSERT INTO Patients (FullName, Age, Gender, Contact, Address) VALUES (@FullName, @Age, @Gender, @Contact, @Address)";
                    SqlCommand cmd = new SqlCommand(query, con);
                    cmd.Parameters.AddWithValue("@FullName", txtFullName.Text);
                    cmd.Parameters.AddWithValue("@Age", txtAge.Text);
                    cmd.Parameters.AddWithValue("@Gender", ddlGender.SelectedValue);
                    cmd.Parameters.AddWithValue("@Contact", txtContact.Text);
                    cmd.Parameters.AddWithValue("@Address", txtAddress.Text);

                    con.Open();
                    int rows = cmd.ExecuteNonQuery();

                    if (rows > 0)
                    {
                        lblMessage.Text = "✅ Patient added successfully!";
                        lblMessage.ForeColor = Color.Green;

                        // ✅ Clear form fields after success
                        txtFullName.Text = "";
                        txtAge.Text = "";
                        ddlGender.SelectedIndex = 0;
                        txtContact.Text = "";
                        txtAddress.Text = "";
                    }
                    else
                    {
                        lblMessage.Text = "❌ Failed to add patient. Try again.";
                        lblMessage.ForeColor = Color.Red;
                    }
                }
            }
            catch (Exception ex)
            {
                lblMessage.Text = "❌ Error: " + ex.Message;
                lblMessage.ForeColor = Color.Red;
            }
        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {
            // ✅ Redirect back to AdminPatients page
            Response.Redirect("AdminPatients.aspx");
        }

        protected void btnBack_Click(object sender, EventArgs e)
        {
            // ✅ Redirect to Admin Dashboard page
            Response.Redirect("AdminPatients.aspx", false);
            Context.ApplicationInstance.CompleteRequest();
        }
    }
}
