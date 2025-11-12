using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace hospitalll
{
    public partial class AdminDoctors : System.Web.UI.Page
    {
        string s = ConfigurationManager.ConnectionStrings["db"].ConnectionString;
        SqlConnection con;
        SqlCommand cmd;
        SqlDataAdapter da;
        DataSet ds;
        string drimg;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindDoctors();
            }
        }

        void getcon()
        {
            con = new SqlConnection(s);
            if (con.State == ConnectionState.Closed)
                con.Open();
        }

        void clean()
        {
            ddlDepartment.ClearSelection();
            txtSpecialization.Text = "";
            txtQualification.Text = "";
            txtExperience.Text = "";
            txtFees.Text = "";
            txtStartTime.Text = "";
            txtEndTime.Text = "";
            chkDays.ClearSelection();
            ViewState["DoctorID"] = null;
            ViewState["DoctorImage"] = null;
        }

        void imageupload()
        {
            if (fileDoctorImage.HasFile)
            {
                drimg = "imag/" + Path.GetFileName(fileDoctorImage.FileName);
                fileDoctorImage.SaveAs(Server.MapPath("~/" + drimg));
            }
            else if (ViewState["DoctorImage"] != null)
            {
                drimg = ViewState["DoctorImage"].ToString();
            }
            else
            {
                drimg = "imag/default.png";
            }
        }

        void BindDoctors()
        {
            getcon();
            cmd = new SqlCommand("SELECT * FROM Doctors", con);
            da = new SqlDataAdapter(cmd);
            ds = new DataSet();
            da.Fill(ds);
            con.Close();

            if (ds.Tables[0].Rows.Count > 0)
            {
                DataListDoctors.DataSource = ds;
                DataListDoctors.DataBind();
            }
            else
            {
                DataListDoctors.DataSource = null;
                DataListDoctors.DataBind();
            }
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            getcon();
            imageupload();

            // Collect selected days if multiple
            string selectedDays = "";
            foreach (ListItem item in chkDays.Items)
            {
                if (item.Selected)
                    selectedDays += item.Value + ",";
            }
            if (selectedDays.EndsWith(",")) selectedDays = selectedDays.TrimEnd(',');

            if (ViewState["DoctorID"] == null)
            {
                // INSERT query
                string insertQuery = "INSERT INTO Doctors (Department, Specialization, Qualification, Experience, ConsultingFees, AvailableDays, StartTime, EndTime, DoctorImage) " +
                                     "VALUES ('" + ddlDepartment.SelectedValue + "', '" + txtSpecialization.Text.Trim() + "', '" + txtQualification.Text.Trim() + "', '" + txtExperience.Text.Trim() + "', '" + txtFees.Text.Trim() + "', '" + selectedDays + "', '" + txtStartTime.Text.Trim() + "', '" + txtEndTime.Text.Trim() + "', '" + drimg + "')";
                cmd = new SqlCommand(insertQuery, con);
                cmd.ExecuteNonQuery();
            }
            else
            {
                // UPDATE query
                string updateQuery = "UPDATE Doctors SET " +
                                     "Department='" + ddlDepartment.SelectedValue + "', " +
                                     "Specialization='" + txtSpecialization.Text.Trim() + "', " +
                                     "Qualification='" + txtQualification.Text.Trim() + "', " +
                                     "Experience='" + txtExperience.Text.Trim() + "', " +
                                     "ConsultingFees='" + txtFees.Text.Trim() + "', " +
                                     "AvailableDays='" + selectedDays + "', " +
                                     "StartTime='" + txtStartTime.Text.Trim() + "', " +
                                     "EndTime='" + txtEndTime.Text.Trim() + "', " +
                                     "DoctorImage='" + drimg + "' " +
                                     "WHERE DoctorID='" + ViewState["DoctorID"] + "'";
                cmd = new SqlCommand(updateQuery, con);
                cmd.ExecuteNonQuery();
            }

            con.Close();
            clean();
            BindDoctors();
        }

        protected void DataListDoctors_ItemCommand(object source, DataListCommandEventArgs e)
        {
            int doctorId = Convert.ToInt32(e.CommandArgument);

            if (e.CommandName == "EditDoctor")
            {
                getcon();
                string selectQuery = "SELECT * FROM Doctors WHERE DoctorID='" + doctorId + "'";
                cmd = new SqlCommand(selectQuery, con);
                SqlDataReader dr = cmd.ExecuteReader();

                if (dr.Read())
                {
                    // Department dropdown
                    if (ddlDepartment.Items.FindByValue(dr["Department"].ToString()) != null)
                        ddlDepartment.SelectedValue = dr["Department"].ToString();

                    txtSpecialization.Text = dr["Specialization"].ToString();
                    txtQualification.Text = dr["Qualification"].ToString();
                    txtExperience.Text = dr["Experience"].ToString();
                    txtFees.Text = dr["ConsultingFees"].ToString();
                    txtStartTime.Text = dr["StartTime"].ToString();
                    txtEndTime.Text = dr["EndTime"].ToString();

                    // Available days checkbox selection
                    string[] selectedDays = dr["AvailableDays"].ToString().Split(',');
                    foreach (ListItem item in chkDays.Items)
                    {
                        item.Selected = Array.Exists(selectedDays, d => d.Trim() == item.Value);
                    }

                    ViewState["DoctorID"] = doctorId;
                    ViewState["DoctorImage"] = dr["DoctorImage"].ToString();
                }
                dr.Close();
                con.Close();
            }
            else if (e.CommandName == "DeleteDoctor")
            {
                getcon();
                string deleteQuery = "DELETE FROM Doctors WHERE DoctorID='" + doctorId + "'";
                cmd = new SqlCommand(deleteQuery, con);
                cmd.ExecuteNonQuery();
                con.Close();

                BindDoctors();
            }
        }
    }
}
