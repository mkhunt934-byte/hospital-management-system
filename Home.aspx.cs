using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI;

namespace hospitalll
{
    public partial class Home : System.Web.UI.Page
    {
        string s = ConfigurationManager.ConnectionStrings["db"].ConnectionString;
        SqlConnection con;
        SqlCommand cmd;
        SqlDataAdapter da;
        DataSet ds;

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
            con.Open();
        }

        void BindDoctors()
        {
            getcon();
            cmd = new SqlCommand("SELECT * FROM Doctors", con);
            da = new SqlDataAdapter(cmd);
            ds = new DataSet();
            da.Fill(ds);

            if (ds.Tables[0].Rows.Count > 0)
            {
                DataListDoctors.DataSource = ds;
                DataListDoctors.DataBind();
            }
        }
    }
}
