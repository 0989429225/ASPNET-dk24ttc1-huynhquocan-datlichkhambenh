<%@ Register Src="~/UserControl.ascx" TagPrefix="uc" TagName="Logout" %>

<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="dichvu.aspx.cs" Inherits="Doan.User.dichvu" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8"/>
  <meta name="viewport" content="width=device-width, initial-scale=1"/>
  <title>Dịch Vụ</title>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"/>
    <!-- Boxicons -->
<link href="https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css" rel="stylesheet" />
 <link href ="../Css/style.css" rel="stylesheet" />
    <style>
        .form-group {
            margin-bottom: 15px;
        }
        label {
            font-weight: bold;
        }
    </style>

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

  
    <div style="width: 600px; margin: auto;">
            <h2>🩺 Đặt lịch khám bệnh</h2>

            <!-- 1. Dịch vụ khám -->
            <div class="form-group">
                <label>Dịch vụ khám:</label><br />
                <asp:RadioButtonList ID="rblLoaiDichVu" runat="server" RepeatDirection="Horizontal">
                    <asp:ListItem Text="Trong giờ" Value="Trong giờ" />
                    <asp:ListItem Text="Ngoài giờ" Value="Ngoài giờ" />
                </asp:RadioButtonList>
            </div>

            <!-- 2. Loại hình khám -->
            <div class="form-group">
                <label>Loại hình khám:</label><br />
                <asp:RadioButtonList ID="rblLoaiHinhKham" runat="server" RepeatDirection="Horizontal">
                    <asp:ListItem Text="Tiêu chuẩn" Value="Tiêu chuẩn" />
                    <asp:ListItem Text="VIP" Value="VIP" />
                </asp:RadioButtonList>
            </div>

            <!-- 3. Chuyên khoa -->
            <div class="form-group">
                <label>Chuyên khoa:</label><br />
                <asp:DropDownList ID="ddlChuyenKhoa" runat="server" AutoPostBack="true" OnSelectedIndexChanged="ddlChuyenKhoa_SelectedIndexChanged">
                    <asp:ListItem Text="-- Chọn chuyên khoa --" Value="" />
                </asp:DropDownList>
            </div>

            <!-- 4. Bác sĩ -->
            <div class="form-group">
                <label>Bác sĩ:</label><br />
                <asp:DropDownList ID="ddlBacSi" runat="server">
                    <asp:ListItem Text="-- Chọn bác sĩ --" Value="" />
                </asp:DropDownList>
            </div>

            <!-- 5. Ngày khám -->
            <div class="form-group">
                <label>Ngày khám:</label><br />
                <asp:Calendar ID="calendarNgayKham" runat="server" />
            </div>

            <!-- 6. Nội dung khám -->
            <div class="form-group">
                <label>Nội dung khám:</label><br />
                <asp:TextBox ID="txtNoiDung" runat="server" TextMode="MultiLine" Rows="4" Columns="50" />
            </div>

            <!-- Nút gửi -->
            <div class="form-group">
                <asp:Button ID="btnDatLich" runat="server" Text="Đặt lịch khám" OnClick="btnDatLich_Click" />
            </div>
        </div>


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
