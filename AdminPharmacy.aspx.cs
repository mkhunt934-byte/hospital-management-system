using System;
using System.Data;
using System.Web.UI;

namespace hospitalll
{
    public partial class AdminPharmacy : Page
    {
        private DataTable PharmacyTable
        {
            get
            {
                if (ViewState["Pharmacy"] == null)
                {
                    DataTable dt = new DataTable();
                    dt.Columns.Add("Id");
                    dt.Columns.Add("MedicineName");
                    dt.Columns.Add("Category");
                    dt.Columns.Add("Quantity");
                    dt.Columns.Add("Price");
                    dt.Columns.Add("ExpiryDate");
                    ViewState["Pharmacy"] = dt;
                }
                return (DataTable)ViewState["Pharmacy"];
            }
            set { ViewState["Pharmacy"] = value; }
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindPharmacy();
            }
        }

        protected void btnAddMedicine_Click(object sender, EventArgs e)
        {
            string name = txtMedicineName.Text.Trim();
            string category = txtCategory.Text.Trim();
            string quantity = txtQuantity.Text.Trim();
            string price = txtPrice.Text.Trim();
            string expiry = txtExpiryDate.Text;

            if (string.IsNullOrWhiteSpace(name) || string.IsNullOrWhiteSpace(category) ||
                string.IsNullOrWhiteSpace(quantity) || string.IsNullOrWhiteSpace(price))
            {
                lblMsg.Text = "⚠ Please fill in all required fields!";
                lblMsg.ForeColor = System.Drawing.Color.Red;
                return;
            }

            DataTable dt = PharmacyTable;
            DataRow newRow = dt.NewRow();
            newRow["Id"] = dt.Rows.Count + 1;
            newRow["MedicineName"] = name;
            newRow["Category"] = category;
            newRow["Quantity"] = quantity;
            newRow["Price"] = price;
            newRow["ExpiryDate"] = expiry;
            dt.Rows.Add(newRow);
            PharmacyTable = dt;

            gvPharmacy.DataSource = dt;
            gvPharmacy.DataBind();

            lblMsg.ForeColor = System.Drawing.Color.Green;
            lblMsg.Text = "✅ Medicine added successfully!";

            txtMedicineName.Text = "";
            txtCategory.Text = "";
            txtQuantity.Text = "";
            txtPrice.Text = "";
            txtExpiryDate.Text = "";
        }

        private void BindPharmacy()
        {
            gvPharmacy.DataSource = PharmacyTable;
            gvPharmacy.DataBind();
        }
    }
}
