using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Doan.Admin
{
    public partial class QuanLyTaiKhoan : System.Web.UI.Page
    {
        string connStr = "Data Source=.;Initial Catalog=dangkykhambenh;Integrated Security=True";

        enum ActionType { None, Add, Edit, Delete }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["role"] == null || Session["role"].ToString() != "Admin")
            {
                Response.Redirect("DangNhap.aspx");
            }

        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            ViewState["Action"] = ActionType.Add;
            gvUsers.ShowFooter = true;
            LoadUsers();
        }

        protected void btnEdit_Click(object sender, EventArgs e)
        {
            ViewState["Action"] = ActionType.Edit;
            gvUsers.ShowFooter = false;
            LoadUsers();
        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            ViewState["Action"] = ActionType.Delete;
            gvUsers.ShowFooter = false;
            LoadUsers();
        }

        protected void btnConfirm_Click(object sender, EventArgs e)
        {
            // Tùy theo hành động hiện tại, xử lý tương ứng
            ActionType action = (ActionType)ViewState["Action"];

            if (action == ActionType.Add)
            {
                TextBox txtUsername = (TextBox)gvUsers.FooterRow.FindControl("txtUsername");
                TextBox txtPassword = (TextBox)gvUsers.FooterRow.FindControl("txtPassword");
                TextBox txtEmail = (TextBox)gvUsers.FooterRow.FindControl("txtEmail");

                using (SqlConnection conn = new SqlConnection(connStr))
                {
                    SqlCommand cmd = new SqlCommand("INSERT INTO Users (username, password, email) VALUES (@u, @p, @e)", conn);
                    cmd.Parameters.AddWithValue("@u", txtUsername.Text);
                    cmd.Parameters.AddWithValue("@p", txtPassword.Text);
                    cmd.Parameters.AddWithValue("@e", txtEmail.Text);
                    conn.Open();
                    cmd.ExecuteNonQuery();
                }
            }

            ViewState["Action"] = ActionType.None;
            gvUsers.ShowFooter = false;
            LoadUsers();
        }

        void LoadUsers()
        {
            using (SqlConnection conn = new SqlConnection(connStr))
            {
                SqlDataAdapter da = new SqlDataAdapter("SELECT * FROM Users", conn);
                DataTable dt = new DataTable();
                da.Fill(dt);

                gvUsers.DataSource = dt;
                gvUsers.DataBind();
            }

            if ((ActionType)ViewState["Action"] == ActionType.Add)
            {
                AddFooterRow();
            }
        }

        void AddFooterRow()
        {
            gvUsers.FooterRow.Cells[1].Controls.Add(new TextBox { ID = "txtUsername", CssClass = "form-control" });
            gvUsers.FooterRow.Cells[2].Controls.Add(new TextBox { ID = "txtPassword", CssClass = "form-control" });
            gvUsers.FooterRow.Cells[3].Controls.Add(new TextBox { ID = "txtEmail", CssClass = "form-control" });
        }

        protected void gvUsers_RowEditing(object sender, GridViewEditEventArgs e)
        {
            gvUsers.EditIndex = e.NewEditIndex;
            LoadUsers();
        }

        protected void gvUsers_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            int userID = Convert.ToInt32(gvUsers.DataKeys[e.RowIndex].Value);
            GridViewRow row = gvUsers.Rows[e.RowIndex];

            TextBox txtUsername = (TextBox)row.FindControl("txtEditUsername");
            TextBox txtPassword = (TextBox)row.FindControl("txtEditPassword");
            TextBox txtEmail = (TextBox)row.FindControl("txtEditEmail");

            string username = txtUsername.Text;
            string password = txtPassword.Text;
            string email = txtEmail.Text;

            using (SqlConnection conn = new SqlConnection(connStr))
            {
                SqlCommand cmd = new SqlCommand("UPDATE Users SET username=@u, password=@p, email=@e WHERE userID=@id", conn);
                cmd.Parameters.AddWithValue("@u", username);
                cmd.Parameters.AddWithValue("@p", password);
                cmd.Parameters.AddWithValue("@e", email);
                cmd.Parameters.AddWithValue("@id", userID);
                conn.Open();
                cmd.ExecuteNonQuery();
            }

            gvUsers.EditIndex = -1;
            LoadUsers();
        }

        protected void gvUsers_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int userID = Convert.ToInt32(gvUsers.DataKeys[e.RowIndex].Value);

            using (SqlConnection conn = new SqlConnection(connStr))
            {
                SqlCommand cmd = new SqlCommand("DELETE FROM Users WHERE userID=@id", conn);
                cmd.Parameters.AddWithValue("@id", userID);
                conn.Open();
                cmd.ExecuteNonQuery();
            }

            LoadUsers();
        }

        protected void gvUsers_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            gvUsers.EditIndex = -1;
            LoadUsers();
        }
    }
}


