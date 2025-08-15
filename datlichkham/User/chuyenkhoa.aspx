<%@ Register Src="~/UserControl.ascx" TagPrefix="uc" TagName="Logout" %>

<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="chuyenkhoa.aspx.cs" Inherits="Doan.User.chuyenkhoa" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8"/>
  <meta name="viewport" content="width=device-width, initial-scale=1"/>
  <title>Chuyên Khoa</title>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"/>
    <!-- Boxicons -->
<link href="https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css" rel="stylesheet" />
 <link href ="../Css/style.css" rel="stylesheet" />
    <style>
        body {
  font-family: Arial, sans-serif;
  background: #f5f5f5;
  margin: 0;
  padding: 20px;
}

.grid-container {
  display: grid;
  grid-template-columns: repeat(auto-fit, minmax(180px, 1fr));
  gap: 20px;
}

.grid-item {
  background: white;
  border-radius: 12px;
  padding: 20px;
  text-align: center;
  box-shadow: 0 4px 8px rgba(0,0,0,0.1);
  transition: transform 0.3s ease;
}

.grid-item:hover {
  transform: translateY(-5px);
}

.grid-item i {
  font-size: 60px;
  color: #007BFF;
  margin-bottom: 10px;
}

.grid-item p {
  font-size: 14px;
  color: #333;
  line-height: 1.4;
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

    <section class="grid-container">
    <div class="grid-item">
      <i class='bx bx-child'></i>
      <p>Khoa Ngoại Nhi</p>
    </div>
    <div class="grid-item">
      <i class='bx bx-health'></i>
      <p>Trung Tâm Viêm Gan Và Gan Nhiễm Mỡ</p>
    </div>
    <div class="grid-item">
      <i class='bx bx-body'></i>
      <p>Trung Tâm Kiểm Soát Cân Nặng Và Điều Trị Béo Phì</p>
    </div>
    <div class="grid-item">
      <i class='bx bx-brain'></i>
      <p>Khoa Ngoại Thần Kinh – Cột Sống</p>
    </div>
    <div class="grid-item">
      <i class='bx bx-female'></i>
      <p>Trung Tâm Hỗ Trợ Sinh Sản</p>
    </div>
    <div class="grid-item">
      <i class='bx bx-show-alt'></i>
      <p>Trung Tâm Mắt Công Nghệ Cao</p>
    </div>
    <div class="grid-item">
      <i class='bx bx-dish'></i>
      <p>Trung Tâm Nội Soi & Phẫu Thuật Nội Soi Tiêu Hóa</p>
    </div>
    <div class="grid-item">
      <i class='bx bx-capsule'></i>
      <p>Khoa Tiêu Hóa – Gan Mật – Tụy</p>
    </div>
    <div class="grid-item">
      <i class='bx bx-user'></i>
      <p>Khoa Ngoại Tổng Hợp</p>
    </div>
    <div class="grid-item">
      <i class='bx bx-brain'></i>
      <p>Trung Tâm Khoa Học Thần Kinh</p>
    </div>
    <div class="grid-item">
      <i class='bx bx-bone'></i>
      <p>Trung Tâm Chấn Thương Chỉnh Hình</p>
    </div>
    <div class="grid-item">
      <i class='bx bx-walk'></i>
      <p>Khoa Cơ Xương Khớp</p>
    </div>
    <div class="grid-item">
      <i class='bx bx-heart'></i>
      <p>Khoa Tim Mạch</p>
</div>
  </section>
        <br/>
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
