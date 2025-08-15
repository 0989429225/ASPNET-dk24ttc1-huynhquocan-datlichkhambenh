<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="QuanLyTaiKhoan.aspx.cs" Inherits="Doan.Admin.QuanLyTaiKhoan" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8"/>
      <title>Trang Quản Lý Admin</title>
      <meta name="viewport" content="width=device-width, initial-scale=1"/>
      <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css" />
      <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
      <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'/>
      <style>
        .jumbotron { margin-bottom: 0; padding: 30px 15px; }
        .admin-title { font-size: 48px; font-weight: bold; }
        .admin-sub { font-size: 20px; margin-top: 10px; }
        .navbar { margin-bottom: 30px; }
        footer { background-color: #f2f2f2; padding: 25px; }
        .glyphicon { margin-right: 5px; }
        html, body {
                      height: 100%;
                      margin: 0;
                    }

                    .wrapper {
                      min-height: 100%;
                      display: flex;
                      flex-direction: column;
                    }

                    .main-content {
                      flex: 1;
                    }

                    .footer {
                      background-color: #f1f1f1;
                      text-align: center;
                      padding: 10px;
                      font-size: 14px;
                      color: #333;
                    }
      </style>

</head>
<body>
    <form id="form1" runat="server">
        <div class="jumbotron text-center">
      <div class="row">
        <div class="col-sm-4 admin-title">Admin</div>
        <div class="col-sm-8">
          <div class="row">
            <div class="col-sm-6 admin-sub">
              <a href="QuanLyTaiKhoan.aspx" style="text-decoration: none; color: inherit;">
                Quản lý tài khoản
              </a>
            </div>

            <div class="col-sm-6 admin-sub">
              <a href="QuanLyThongTin.aspx" style="text-decoration: none; color: inherit;">
                Quản lý lịch đăng ký
              </a>
            </div>
          </div>
        </div>
      </div>
    </div>

    <!-- Navbar -->
    <nav class="navbar navbar-default text-center">
      <div class="container-fluid">
        <asp:Button ID="btnAdd" runat="server" CssClass="btn btn-success" Text="Thêm" OnClick="btnAdd_Click" />
        <asp:Button ID="btnEdit" runat="server" CssClass="btn btn-warning" Text="Sửa" OnClick="btnEdit_Click" />
        <asp:Button ID="btnDelete" runat="server" CssClass="btn btn-danger" Text="Xóa" OnClick="btnDelete_Click" />
      </div>
    </nav>

    <!-- User Table -->
    <div class="container">
      <asp:GridView ID="gvUsers" runat="server" CssClass="table table-bordered table-hover"
  AutoGenerateColumns="False" DataKeyNames="userID"
  OnRowEditing="gvUsers_RowEditing" OnRowUpdating="gvUsers_RowUpdating"
  OnRowDeleting="gvUsers_RowDeleting" OnRowCancelingEdit="gvUsers_RowCancelingEdit">
  <Columns>

    
    <asp:TemplateField HeaderText="UserID">
      <ItemTemplate>
        <%# Eval("userID") %>
      </ItemTemplate>
    </asp:TemplateField>

   
    <asp:TemplateField HeaderText="Username">
      <ItemTemplate>
        <%# Eval("username") %>
      </ItemTemplate>
      <EditItemTemplate>
        <asp:TextBox ID="txtEditUsername" runat="server" Text='<%# Bind("username") %>' CssClass="form-control" />
      </EditItemTemplate>
      <FooterTemplate>
        <asp:TextBox ID="txtUsername" runat="server" CssClass="form-control" />
      </FooterTemplate>
    </asp:TemplateField>

    <asp:TemplateField HeaderText="Password">
      <ItemTemplate>
        <%# Eval("password") %>
      </ItemTemplate>
      <EditItemTemplate>
        <asp:TextBox ID="txtEditPassword" runat="server" Text='<%# Bind("password") %>' CssClass="form-control" />
      </EditItemTemplate>
      <FooterTemplate>
        <asp:TextBox ID="txtPassword" runat="server" CssClass="form-control" />
      </FooterTemplate>
    </asp:TemplateField>

    
    <asp:TemplateField HeaderText="Email">
      <ItemTemplate>
        <%# Eval("email") %>
      </ItemTemplate>
      <EditItemTemplate>
        <asp:TextBox ID="txtEditEmail" runat="server" Text='<%# Bind("email") %>' CssClass="form-control" />
      </EditItemTemplate>
      <FooterTemplate>
        <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" />
      </FooterTemplate>
    </asp:TemplateField>

    
    <asp:CommandField ShowEditButton="True" ShowDeleteButton="True" />

  </Columns>
</asp:GridView>
    </div>

    <!-- Footer -->
<div class="wrapper">

  <div class="main-content">
    <!-- GridView, các nút Thêm/Sửa/Xóa, form quản lý tài khoản -->
  </div>

  <div class="footer">
    Liên hệ: Huỳnh Quốc An | 📞 0989429225 | 📧 hqan2205@gmail.com
  </div>

</div>

  </form>

</body>
</html>
