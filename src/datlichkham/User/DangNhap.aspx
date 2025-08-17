<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DangNhap.aspx.cs" Inherits="Doan.User.DangNhap" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Đăng Nhập</title>
    <link href="https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css" rel="stylesheet" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" />
    <link href="../CSS/Style.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="container py-5 px-3">
            <div class="row justify-content-center">
                <div class="col-12 col-md-6">
                    <div class="card shadow-sm">
                        <div class="card-body">
                            <h3 class="text-center mb-4"><i class='bx bx-lock-alt'></i> Đăng nhập</h3>

                            <div class="mb-3">
                                <label for="txtUser" class="form-label"><i class='bx bx-user'></i> Tên đăng nhập</label>
                                <asp:TextBox ID="txtUser" runat="server" CssClass="form-control" placeholder="Nhập tên đăng nhập" />
                            </div>

                            <div class="mb-3">
                                <label for="txtPass" class="form-label"><i class='bx bx-key'></i> Mật khẩu</label>
                                <asp:TextBox ID="txtPass" runat="server" CssClass="form-control" placeholder="Nhập mật khẩu" TextMode="Password" />
                            </div>

                            <asp:Button ID="btnLogin" runat="server" Text="Đăng nhập" CssClass="btn btn-primary w-100" OnClick="btnLogin_Click" />
                            <asp:Label ID="lblThongBao" runat="server" CssClass="text-danger text-center d-block mt-3" />
                            <p class="mt-3 text-center">
                                Chưa có tài khoản? <a href="DangKy.aspx">Đăng ký</a>
                            </p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
