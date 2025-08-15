using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Doan.User
{
    public partial class lienhe : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
            if (Session["userID"] == null || Session["username"] == null)
            {
                Response.Redirect("DangNhap.aspx");
            }
        }
        protected void btnGuiThongTin_Click(object sender, EventArgs e)
        {
            string soDienThoai = txtSoDienThoai.Text.Trim();
            string hoTen = txtHoTen.Text.Trim();
            string loiNhan = txtLoiNhan.Text.Trim();

            // Lấy userID và username từ Session
            int userID = Convert.ToInt32(Session["userID"]);
            string username = Session["username"].ToString();

            // Truy vấn email từ bảng Users
            string email = "";
            string connectionString = ConfigurationManager.ConnectionStrings["conn"].ConnectionString;

            try
            {
                using (SqlConnection conn = new SqlConnection(connectionString))
                {
                    conn.Open();

                    // Truy vấn email từ userID
                    string emailQuery = "SELECT email FROM Users WHERE userID = @userID";
                    SqlCommand emailCmd = new SqlCommand(emailQuery, conn);
                    emailCmd.Parameters.AddWithValue("@userID", userID);

                    object result = emailCmd.ExecuteScalar();
                    if (result != null)
                    {
                        email = result.ToString();
                    }

                    // Lưu thông tin liên hệ
                    string insertQuery = @"INSERT INTO lienhe (userID, so_dien_thoai, ho_ten, email, loi_nhan)
                                       VALUES (@userID, @soDienThoai, @hoTen, @email, @loiNhan)";
                    SqlCommand insertCmd = new SqlCommand(insertQuery, conn);
                    insertCmd.Parameters.AddWithValue("@userID", userID);
                    insertCmd.Parameters.AddWithValue("@soDienThoai", soDienThoai);
                    insertCmd.Parameters.AddWithValue("@hoTen", hoTen);
                    insertCmd.Parameters.AddWithValue("@email", email);
                    insertCmd.Parameters.AddWithValue("@loiNhan", loiNhan);

                    insertCmd.ExecuteNonQuery();
                }

                lblMessage.Text = "✅ Thông tin đã được gửi thành công!";
                txtHoTen.Text = "";
                txtSoDienThoai.Text = "";
                txtLoiNhan.Text = "";
            }
            catch (Exception ex)
            {
                lblMessage.Text = "❌ Có lỗi xảy ra: " + ex.Message;
            }


        }
    }
}