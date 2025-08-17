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
            string tenDN = txtUser.Text.Trim();
            string mk = txtPass.Text.Trim();

            using (SqlConnection conn = new SqlConnection("Server=localhost;Database=dangkykhambenh;Trusted_Connection=True;"))
            {
                string sql = "SELECT userID, role FROM Users WHERE username=@tenDN AND password=@mk";
                SqlCommand cmd = new SqlCommand(sql, conn);
                cmd.Parameters.AddWithValue("@tenDN", tenDN);
                cmd.Parameters.AddWithValue("@mk", mk);

                conn.Open();
                SqlDataReader reader = cmd.ExecuteReader();

                if (reader.Read())
                {
                    int userID = Convert.ToInt32(reader["userID"]);
                    string role = reader["role"].ToString();

                    // Gán session đầy đủ
                    Session["userID"] = userID;
                    Session["username"] = tenDN;
                    Session["role"] = role;

                    // Điều hướng theo role
                    if (role == "Admin")
                        Response.Redirect("~/Admin/QuanLyTaiKhoan.aspx");
                    else if (role == "User")
                        Response.Redirect("xemTT.aspx");
                }
                else
                {
                    lblThongBao.Text = "❌ Sai tên đăng nhập hoặc mật khẩu!";
                }
            }
        }
    }
}
