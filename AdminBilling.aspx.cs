using System;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace hospitalll
{
    public partial class AdminBilling : System.Web.UI.Page
    {
        private readonly string conStr = ConfigurationManager.ConnectionStrings["db"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
                BindGrid();
        }

        private void BindGrid()
        {
            using (SqlConnection con = new SqlConnection(conStr))
            {
                using (SqlCommand cmd = new SqlCommand("SELECT * FROM Billing ORDER BY Id DESC", con))
                {
                    con.Open();
                    gvBilling.DataSource = cmd.ExecuteReader();
                    gvBilling.DataBind();
                }
            }
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            if (string.IsNullOrWhiteSpace(txtPatientName.Text) || string.IsNullOrWhiteSpace(txtAmount.Text))
            {
                lblMsg.Text = "Please fill required fields.";
                lblMsg.ForeColor = System.Drawing.Color.Red;
                return;
            }

            using (SqlConnection con = new SqlConnection(conStr))
            {
                string query = "INSERT INTO Billing (PatientName, DoctorName, ServiceType, PaymentDate, Amount, PaymentMethod, Status) VALUES (@p, @d, @s, @pd, @a, @pm, @st)";
                using (SqlCommand cmd = new SqlCommand(query, con))
                {
                    cmd.Parameters.AddWithValue("@p", txtPatientName.Text.Trim());
                    cmd.Parameters.AddWithValue("@d", txtDoctorName.Text.Trim());
                    cmd.Parameters.AddWithValue("@s", ddlServiceType.SelectedValue);
                    cmd.Parameters.AddWithValue("@pd", string.IsNullOrEmpty(txtPaymentDate.Text) ? (object)DBNull.Value : txtPaymentDate.Text);
                    cmd.Parameters.AddWithValue("@a", Convert.ToDecimal(txtAmount.Text));
                    cmd.Parameters.AddWithValue("@pm", ddlPaymentMethod.SelectedValue);
                    cmd.Parameters.AddWithValue("@st", ddlStatus.SelectedValue);

                    con.Open();
                    cmd.ExecuteNonQuery();
                }
            }

            ClearForm();
            lblMsg.ForeColor = System.Drawing.Color.Green;
            lblMsg.Text = "Billing record added successfully.";
            BindGrid();
        }

        private void ClearForm()
        {
            txtPatientName.Text = txtDoctorName.Text = "";
            ddlServiceType.SelectedIndex = 0;
            txtPaymentDate.Text = "";
            txtAmount.Text = "";
            ddlPaymentMethod.SelectedIndex = 0;
            ddlStatus.SelectedIndex = 0;
        }

        protected void gvBilling_RowEditing(object sender, System.Web.UI.WebControls.GridViewEditEventArgs e)
        {
            gvBilling.EditIndex = e.NewEditIndex;
            BindGrid();
        }

        protected void gvBilling_RowCancelingEdit(object sender, System.Web.UI.WebControls.GridViewCancelEditEventArgs e)
        {
            gvBilling.EditIndex = -1;
            BindGrid();
        }

        protected void gvBilling_RowUpdating(object sender, System.Web.UI.WebControls.GridViewUpdateEventArgs e)
        {
            int id = Convert.ToInt32(gvBilling.DataKeys[e.RowIndex].Value);
            string patient = ((System.Web.UI.WebControls.TextBox)gvBilling.Rows[e.RowIndex].Cells[1].Controls[0]).Text;
            string doctor = ((System.Web.UI.WebControls.TextBox)gvBilling.Rows[e.RowIndex].Cells[2].Controls[0]).Text;
            string service = ((System.Web.UI.WebControls.TextBox)gvBilling.Rows[e.RowIndex].Cells[3].Controls[0]).Text;
            string date = ((System.Web.UI.WebControls.TextBox)gvBilling.Rows[e.RowIndex].Cells[4].Controls[0]).Text;
            string amount = ((System.Web.UI.WebControls.TextBox)gvBilling.Rows[e.RowIndex].Cells[5].Controls[0]).Text;
            string method = ((System.Web.UI.WebControls.TextBox)gvBilling.Rows[e.RowIndex].Cells[6].Controls[0]).Text;
            string status = ((System.Web.UI.WebControls.TextBox)gvBilling.Rows[e.RowIndex].Cells[7].Controls[0]).Text;

            using (SqlConnection con = new SqlConnection(conStr))
            {
                string q = "UPDATE Billing SET PatientName=@p, DoctorName=@d, ServiceType=@s, PaymentDate=@pd, Amount=@a, PaymentMethod=@pm, Status=@st WHERE Id=@id";
                using (SqlCommand cmd = new SqlCommand(q, con))
                {
                    cmd.Parameters.AddWithValue("@p", patient);
                    cmd.Parameters.AddWithValue("@d", doctor);
                    cmd.Parameters.AddWithValue("@s", service);
                    cmd.Parameters.AddWithValue("@pd", string.IsNullOrEmpty(date) ? (object)DBNull.Value : date);
                    cmd.Parameters.AddWithValue("@a", Convert.ToDecimal(amount));
                    cmd.Parameters.AddWithValue("@pm", method);
                    cmd.Parameters.AddWithValue("@st", status);
                    cmd.Parameters.AddWithValue("@id", id);
                    con.Open();
                    cmd.ExecuteNonQuery();
                }
            }

            gvBilling.EditIndex = -1;
            BindGrid();
        }

        protected void gvBilling_RowDeleting(object sender, System.Web.UI.WebControls.GridViewDeleteEventArgs e)
        {
            int id = Convert.ToInt32(gvBilling.DataKeys[e.RowIndex].Value);
            using (SqlConnection con = new SqlConnection(conStr))
            {
                string q = "DELETE FROM Billing WHERE Id=@id";
                using (SqlCommand cmd = new SqlCommand(q, con))
                {
                    cmd.Parameters.AddWithValue("@id", id);
                    con.Open();
                    cmd.ExecuteNonQuery();
                }
            }
            BindGrid();
        }
    }
}
