using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Doan.User
{
    public partial class dichvu : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadChuyenKhoa();
            }

        }

        private void LoadChuyenKhoa()
        {
            string connectionString = ConfigurationManager.ConnectionStrings["conn"].ConnectionString;
            using (SqlConnection conn = new SqlConnection(connectionString))
            {
                string query = "SELECT id_chuyen_khoa, ten_chuyen_khoa FROM ChuyenKhoa";
                SqlCommand cmd = new SqlCommand(query, conn);
                conn.Open();
                SqlDataReader reader = cmd.ExecuteReader();
                ddlChuyenKhoa.Items.Clear();
                ddlChuyenKhoa.Items.Add(new System.Web.UI.WebControls.ListItem("-- Chọn chuyên khoa --", ""));
                while (reader.Read())
                {
                    ddlChuyenKhoa.Items.Add(new System.Web.UI.WebControls.ListItem(
                        reader["ten_chuyen_khoa"].ToString(),
                        reader["id_chuyen_khoa"].ToString()));
                }
            }
        }

        protected void ddlChuyenKhoa_SelectedIndexChanged(object sender, EventArgs e)
        {
            int idChuyenKhoa;
            if (int.TryParse(ddlChuyenKhoa.SelectedValue, out idChuyenKhoa))
            {
                LoadBacSiTheoChuyenKhoa(idChuyenKhoa);
            }
        }

        private void LoadBacSiTheoChuyenKhoa(int idChuyenKhoa)
        {
            string connectionString = ConfigurationManager.ConnectionStrings["conn"].ConnectionString;
            using (SqlConnection conn = new SqlConnection(connectionString))
            {
                string query = "SELECT id_bac_si, ten_bac_si FROM BacSi WHERE id_chuyen_khoa = @id_chuyen_khoa";
                SqlCommand cmd = new SqlCommand(query, conn);
                cmd.Parameters.Add("@id_chuyen_khoa", SqlDbType.Int).Value = idChuyenKhoa;
                conn.Open();
                SqlDataReader reader = cmd.ExecuteReader();
                ddlBacSi.Items.Clear();
                ddlBacSi.Items.Add(new System.Web.UI.WebControls.ListItem("-- Chọn bác sĩ --", ""));
                while (reader.Read())
                {
                    ddlBacSi.Items.Add(new System.Web.UI.WebControls.ListItem(
                        reader["ten_bac_si"].ToString(),
                        reader["id_bac_si"].ToString()));
                }
            }
        }

        protected void btnDatLich_Click(object sender, EventArgs e)
        {
            string loaiDichVu = rblLoaiDichVu.SelectedValue;
            string loaiHinhKham = rblLoaiHinhKham.SelectedValue;
            string chuyenKhoa = ddlChuyenKhoa.SelectedItem.Text;
            string bacSi = ddlBacSi.SelectedItem.Text;
            DateTime ngayKham = calendarNgayKham.SelectedDate;
            if (ngayKham < new DateTime(1753, 1, 1))
            {
                ngayKham = DateTime.Today;
            }
            string noiDung = txtNoiDung.Text;

            // Lấy ID từ dropdown
            int idChuyenKhoa = int.Parse(ddlChuyenKhoa.SelectedValue);
            int idBacSi = int.Parse(ddlBacSi.SelectedValue);

            // Lấy userID từ Session (giả sử đã đăng nhập)
            int userID = Convert.ToInt32(Session["userID"]);

            string connectionString = ConfigurationManager.ConnectionStrings["conn"].ConnectionString;
            using (SqlConnection conn = new SqlConnection(connectionString))
            {
                string query = @"INSERT INTO LichKham (userID, dichvu_kham, loai_hinh_kham, id_chuyen_khoa, id_bac_si, ngay_kham, noi_dung)
                         VALUES (@userID, @dichvu_kham, @loai_hinh_kham, @id_chuyen_khoa, @id_bac_si, @ngay_kham, @noi_dung)";
                SqlCommand cmd = new SqlCommand(query, conn);
                cmd.Parameters.AddWithValue("@userID", userID);
                cmd.Parameters.AddWithValue("@dichvu_kham", loaiDichVu);
                cmd.Parameters.AddWithValue("@loai_hinh_kham", loaiHinhKham);
                cmd.Parameters.AddWithValue("@id_chuyen_khoa", idChuyenKhoa);
                cmd.Parameters.AddWithValue("@id_bac_si", idBacSi);
                cmd.Parameters.AddWithValue("@ngay_kham", ngayKham);
                cmd.Parameters.AddWithValue("@noi_dung", noiDung);

                conn.Open();
                cmd.ExecuteNonQuery();
            }

            // Hiển thị thông tin đã đặt
            string thongTin = $"Bạn đã đặt lịch khám:\n" +
                              $"- Dịch vụ: {loaiDichVu}\n" +
                              $"- Loại hình: {loaiHinhKham}\n" +
                              $"- Chuyên khoa: {chuyenKhoa}\n" +
                              $"- Bác sĩ: {bacSi}\n" +
                              $"- Ngày khám: {ngayKham.ToShortDateString()}\n" +
                              $"- Nội dung: {noiDung}";

            ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('" + thongTin.Replace("\n", "\\n") + "');", true);
        }
    }
}