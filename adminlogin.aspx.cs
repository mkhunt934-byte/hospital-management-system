using System;
using System.Configuration;
using System.Data.SqlClient;

namespace hospitalll
{
    public partial class AddPatient : System.Web.UI.Page
    {
        string cs = ConfigurationManager.ConnectionStrings["db"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            if (string.IsNullOrWhiteSpace(txtFullName.Text) ||
                string.IsNullOrWhiteSpace(txtAge.Text) ||
                string.IsNullOrWhiteSpace(ddlGender.SelectedValue) ||
                string.IsNullOrWhiteSpace(txtContact.Text) ||
                string.IsNullOrWhiteSpace(txtAddress.Text))
            {
                lblMessage.Text = "⚠️ Please fill all fields.";
                lblMessage.ForeColor = System.Drawing.Color.Red;
                return;
            }

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
                con.Close();

                if (rows > 0)
                {
                    lblMessage.Text = "✅ Patient added successfully!";
                    lblMessage.ForeColor = System.Drawing.Color.Green;

                    // Clear fields after save
                    txtFullName.Text = "";
                    txtAge.Text = "";
                    ddlGender.SelectedIndex = 0;
                    txtContact.Text = "";
                    txtAddress.Text = "";
                }
                else
                {
                    lblMessage.Text = "❌ Error adding patient. Try again.";
                    lblMessage.ForeColor = System.Drawing.Color.Red;
                }
            }
        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {
            // Clear all fields
            txtFullName.Text = "";
            txtAge.Text = "";
            ddlGender.SelectedIndex = 0;
            txtContact.Text = "";
            txtAddress.Text = "";
            lblMessage.Text = "";
        }

        protected void btnBack_Click(object sender, EventArgs e)
        {
            // Redirect to AdminPatients.aspx
            Response.Redirect("AdminPatients.aspx");
        }
    }
}
