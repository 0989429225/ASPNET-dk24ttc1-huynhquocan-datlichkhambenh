<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DangKy.aspx.cs" Inherits="Doan.User.DangKy" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Đăng ký</title>
    <!-- Bootstrap 5 -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" />
    <!-- Boxicons -->
    <link href="https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css" rel="stylesheet" />
</head>
<body class="bg-light">
    <form id="form1" runat="server">
        <div class="container py-5 px-3">
            <div class="row justify-content-center">
                <div class="col-12 col-md-6">
                    <div class="card shadow-sm">
                        <div class="card-body">
                            <h3 class="text-center mb-4"><i class='bx bx-user-plus'></i> Đăng ký</h3>

                            <div class="mb-3">
                                <label for="txtNewUser" class="form-label"><i class='bx bx-user'></i> Tên đăng nhập</label>
                                <asp:TextBox ID="txtNewUser" runat="server" CssClass="form-control" placeholder="Nhập tên đăng nhập" />
                            </div>

                            <div class="mb-3">
                                <label for="txtNewPass" class="form-label"><i class='bx bx-lock'></i> Mật khẩu</label>
                                <asp:TextBox ID="txtNewPass" runat="server" CssClass="form-control" placeholder="Nhập mật khẩu" TextMode="Password" />
                            </div>

                            <div class="mb-3">
                                <label for="txtNewEmail" class="form-label"><i class='bx bx-envelope'></i> Email</label>
                                <asp:TextBox ID="txtNewEmail" runat="server" CssClass="form-control" placeholder="Nhập email" TextMode="Email" />
                            </div>

                            

                            <asp:Button ID="btnRegister" runat="server" Text="Đăng ký" CssClass="btn btn-success w-100" OnClick="btnRegister_Click" />

                            <p class="mt-3 text-center">
                                Đã có tài khoản? <a href="DangNhap.aspx">Đăng nhập</a>
                            </p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>