<%@ Register Src="~/UserControl.ascx" TagPrefix="uc" TagName="Logout" %>

<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="lienhe.aspx.cs" Inherits="Doan.User.lienhe" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8"/>
  <meta name="viewport" content="width=device-width, initial-scale=1"/>
  <title>Liên Hệ</title>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"/>
    <!-- Boxicons -->
<link href="https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css" rel="stylesheet" />
 <link href ="../Css/style.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
    <!-- Header -->
    <header>
  <div class="logo">Bệnh viện Tâm Anh</div>
  <div class="menu-toggle" onclick="toggleMenu()">☰</div>
  <div class="nav-links" id="navLinks">
    <a href="../User/XemTT.aspx">Trang chủ</a>
    <a href="../User/chuyenkhoa.aspx">Chuyên khoa</a>
    <a href="../User/chuyengia_bacsi.aspx">Chuyên gia - Bác sĩ</a>
    <a href="../User/dichvu.aspx">Dịch vụ</a>
    <a href="../User/thanhtuu.aspx">Thành tựu</a>
    <a href="../User/lienhe.aspx">Liên hệ</a>
    <uc:Logout runat="server" ID="ucLogout" />
  </div>
</header>

   <!-- Carousel Banner for Bootstrap 4.5.2 -->
<div id="expertCarousel" class="carousel slide" data-ride="carousel">
  <!-- Indicators -->
  <ol class="carousel-indicators">
    <li data-target="#expertCarousel" data-slide-to="0" class="active"></li>
    <li data-target="#expertCarousel" data-slide-to="1"></li>
    <li data-target="#expertCarousel" data-slide-to="2"></li>
  </ol>

  <!-- Slides -->
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img src="../Images/Image_2/sieu-may-ct-tam-soat-dot-quy-dk.jpg" class="d-block w-100" alt="Chuyên gia 1"/>
    </div>
    <div class="carousel-item">
      <img src="../Images/Image_2/chuyen-khoa-benh-vien-tam-anh.jpg" class="d-block w-100" alt="Chuyên gia 2"/>
    </div>
    <div class="carousel-item">
      <img src="../Images/Image_2/banner-chuyen-gia-bac-si-desk.jpg" class="d-block w-100" alt="Chuyên gia 3"/>
    </div>
  </div>

  <!-- Controls -->
  <a class="carousel-control-prev" href="#expertCarousel" role="button" data-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="sr-only">Trước</span>
  </a>
  <a class="carousel-control-next" href="#expertCarousel" role="button" data-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="sr-only">Tiếp</span>
  </a>
</div>
        <br />

   <div class="container mt-5">
            <h2 class="text-center">LIÊN HỆ</h2>
            <asp:Label ID="lblMessage" runat="server" ForeColor="Green" Font-Bold="True" CssClass="d-block text-center mb-3" />

            <div class="form-group">
                <label for="txtSoDienThoai">Số điện thoại:</label>
                <asp:TextBox ID="txtSoDienThoai" runat="server" CssClass="form-control" />
                <asp:RequiredFieldValidator ID="rfvSoDienThoai" runat="server"
                    ControlToValidate="txtSoDienThoai" ErrorMessage="Vui lòng nhập số điện thoại"
                    ForeColor="Red" Display="Dynamic" />
            </div>

            <div class="form-group">
                <label for="txtHoTen">Họ & Tên:</label>
                <asp:TextBox ID="txtHoTen" runat="server" CssClass="form-control" />
                <asp:RequiredFieldValidator ID="rfvHoTen" runat="server"
                    ControlToValidate="txtHoTen" ErrorMessage="Vui lòng nhập họ tên"
                    ForeColor="Red" Display="Dynamic" />
            </div>

            <div class="form-group">
                <label for="txtLoiNhan">Lời nhắn:</label>
                <asp:TextBox ID="txtLoiNhan" runat="server" TextMode="MultiLine" Rows="4" CssClass="form-control" />
                <asp:RequiredFieldValidator ID="rfvLoiNhan" runat="server"
                    ControlToValidate="txtLoiNhan" ErrorMessage="Vui lòng nhập lời nhắn"
                    ForeColor="Red" Display="Dynamic" />
            </div>

            <div class="text-center">
                <asp:Button ID="btnGuiThongTin" runat="server" Text="GỬI THÔNG TIN" OnClick="btnGuiThongTin_Click" CssClass="btn btn-primary" />
            </div>
        </div>
<br />



    <!-- Footer -->
    <footer class="text-center" style="background-color:#17A2B8">
    <p>Liên hệ: Huỳnh Quốc An - DK24TTC1</p>
    <p>
        <a href="https://www.facebook.com/hqan2205" class="text-light me-3"><i class='bx bxl-facebook'></i> Facebook</a>
        <a href="https://mail.google.com/mail/u/1/#inbox" class="text-light"><i class='bx bxl-gmail'></i> Gmail</a>
    </p>
</footer>
</form>
  <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
