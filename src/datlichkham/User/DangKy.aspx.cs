using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Doan.User
{
    public partial class DangKy : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnRegister_Click(object sender, EventArgs e)
        {
            string username = txtNewUser.Text.Trim();
            string password = txtNewPass.Text.Trim();
            string email = txtNewEmail.Text.Trim();
            // Thêm dòng debug ở đây
            Response.Write($"DEBUG → username: {username}, email: {email}, password: {password}");



            string connStr = System.Configuration.ConfigurationManager.ConnectionStrings["conn"].ConnectionString;
            using (SqlConnection conn = new SqlConnection(connStr))
            {
                conn.Open();

                // Kiểm tra tài khoản đã tồn tại
                string checkQuery = "SELECT COUNT(*) FROM Users WHERE username = @username";
                SqlCommand checkCmd = new SqlCommand(checkQuery, conn);
                checkCmd.Parameters.AddWithValue("@username", username);
                int count = (int)checkCmd.ExecuteScalar();

                if (count > 0)
                {
                    Response.Write("<script>alert('Tên đăng nhập đã tồn tại!');</script>");
                    return;
                }

                // Thêm tài khoản mới
                string insertQuery = "INSERT INTO Users (username, password, email) VALUES (@username, @password, @email)";
                SqlCommand insertCmd = new SqlCommand(insertQuery, conn);
                insertCmd.Parameters.AddWithValue("@username", username);
                insertCmd.Parameters.AddWithValue("@password", password);
                insertCmd.Parameters.AddWithValue("@email", email);
                
                insertCmd.ExecuteNonQuery();

                Response.Write("<script>alert('Đăng ký thành công!'); window.location='DangNhap.aspx';</script>");
            }
        }

    }
}