using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Doan.Admin
{
    public partial class QuanLyThongTin : System.Web.UI.Page
    {
        string connStr = "Data Source=.;Initial Catalog=dangkykhambenh;Integrated Security=True";

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadLichKham();
            }

        }
        void LoadLichKham()
        {
            using (SqlConnection conn = new SqlConnection(connStr))
            {
                SqlDataAdapter da = new SqlDataAdapter("SELECT * FROM LichKham", conn);
                DataTable dt = new DataTable();
                da.Fill(dt);
                gvLichKham.DataSource = dt;
                gvLichKham.DataBind();
            }
        }

    }
}