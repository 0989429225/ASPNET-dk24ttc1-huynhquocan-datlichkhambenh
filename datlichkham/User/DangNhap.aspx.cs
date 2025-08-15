using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Doan.User
{
    public partial class DangNhap : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnLogin_Click(object sender, EventArgs e)
        {
            string username = txtUser.Text.Trim();
            string password = txtPass.Text.Trim();

            string connStr = System.Configuration.ConfigurationManager.ConnectionStrings["conn"].ConnectionString;
            using (SqlConnection conn = new SqlConnection(connStr))
            {
                conn.Open();

                // Truy vấn lấy ID người dùng thay vì chỉ đếm
                string query = "SELECT userID FROM Users WHERE username = @username AND password = @password";
                SqlCommand cmd = new SqlCommand(query, conn);
                cmd.Parameters.AddWithValue("@username", username);
                cmd.Parameters.AddWithValue("@password", password);

                object result = cmd.ExecuteScalar();
                
                if (result != null)
                {
                    FormsAuthentication.SetAuthCookie(username, true);
                    int userID = Convert.ToInt32(result);
                    Session["userID"] = userID;              // ✅ Gán userID vào Session
                    Session["username"] = username;          // (tuỳ chọn) lưu thêm tên người dùng
                    Response.Redirect("XemTT.aspx");         // Chuyển hướng sau khi đăng nhập
                }
                else
                {
                    Response.Write("<script>alert('Sai tên đăng nhập hoặc mật khẩu!');</script>");
                }
            }
        }

    }
}