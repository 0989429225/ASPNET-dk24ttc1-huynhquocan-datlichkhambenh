<%@ Register Src="~/UserControl.ascx" TagPrefix="uc" TagName="Logout" %>
<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="chuyengia_bacsi.aspx.cs" Inherits="Doan.User.chuyengia_bacsi" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8"/>
  <meta name="viewport" content="width=device-width, initial-scale=1"/>
  <title>Chuyên gia - Bác sĩ</title>
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

    <!-- Bộ lọc và tìm kiếm -->
    <div class="container mb-4">
      <div class="row">
        <div class="col-md-3">
          <asp:DropDownList ID="ddlSpecialty" runat="server" CssClass="form-control">
            <asp:ListItem Text="Chọn chuyên khoa" Value="" />
            <asp:ListItem Text="Tim mạch" Value="tim-mach" />
            <asp:ListItem Text="Nhi" Value="nhi" />
            <asp:ListItem Text="Viêm gan nhiễm mỡ" Value="viem-gan-nhiem-mo" />
          </asp:DropDownList>
        </div>
        <div class="col-md-6">
          <asp:TextBox ID="txtSearch" runat="server" CssClass="form-control" placeholder="Tìm kiếm theo tên..."></asp:TextBox>
        </div>
        <div class="col-md-3">
          <asp:Button ID="btnSearch" runat="server" CssClass="btn btn-primary btn-block" Text="Tìm kiếm" OnClientClick="filterDoctors(); return false;" />
        </div>
      </div>
    </div>

    <!-- Danh sách chuyên gia -->
    <div class="container">
      <div class="row" id="doctor-list">
        <!-- Card chuyên gia tim mach -->
        <div class="col-md-4 doctor-card" data-specialty="tim-mach">
          <div class="card mb-4">
            <img src="../Images/Image_2/bac-pham-nguyen-vinh.png" class="card-img-top" alt="PGS.TS.BS PHẠM NGUYỄN VINH" />
            <div class="card-body">
              <h5 class="card-title">PGS.TS.BS PHẠM NGUYỄN VINH</h5>
              <p class="card-text">Chuyên khoa: Tim mạch</p>
              <a href="TTBacsi.aspx#bacsivinh" class="btn btn-outline-primary">Xem chi tiết</a>
            </div>
          </div>
        </div>

          <div class="col-md-4 doctor-card" data-specialty="tim-mach">
          <div class="card mb-4">
            <img src="../Images/Image_2/nguyen-thi-bach-yen-avt-1.png" class="card-img-top" alt="TTND.PGS.TS.BS NGUYỄN THỊ BẠCH YẾN" />
            <div class="card-body">
              <h5 class="card-title">TTND.PGS.TS.BS NGUYỄN THỊ BẠCH YẾN</h5>
              <p class="card-text">Chuyên khoa: Tim mạch</p>
              <a href="TTBacsi.aspx#bacsibachyen" class="btn btn-outline-primary">Xem chi tiết</a>
            </div>
          </div>
        </div>

          <div class="col-md-4 doctor-card" data-specialty="tim-mach">
          <div class="card mb-4">
            <img src="../Images/Image_2/nguyen-minh-tri-vien-avt.png" class="card-img-top" alt="THS.BS NGUYỄN MINH TRÍ VIÊN" />
            <div class="card-body">
              <h5 class="card-title">THS.BS NGUYỄN MINH TRÍ VIÊN</h5>
              <p class="card-text">Chuyên khoa: Tim mạch</p>
              <a href="TTBacsi.aspx#bacsitrivien" class="btn btn-outline-primary">Xem chi tiết</a>
            </div>
          </div>
        </div>

          <!-- Card chuyên gia viemgan_nhiemmo -->
          <div class="col-md-4 doctor-card" data-specialty="viem-gan-nhiem-mo">
          <div class="card mb-4">
            <img src="../Images/Image_2/bs-vu-truong-khanh.png" class="card-img-top" alt="TTƯT.TS.BS VŨ TRƯỜNG KHANH" />
            <div class="card-body">
              <h5 class="card-title">TTƯT.TS.BS VŨ TRƯỜNG KHANH</h5>
              <p class="card-text">Chuyên khoa: Viêm gan- Nhiễm mỡ</p>
              <a href="TTBacsi.aspx#bacsitruongkhanh" class="btn btn-outline-primary">Xem chi tiết</a>
            </div>
          </div>
        </div>

          <div class="col-md-4 doctor-card" data-specialty="viem-gan-nhiem-mo">
            <div class="card mb-4">
              <img src="../Images/Image_2/le-thanh-quynh-ngan.png" class="card-img-top" alt="THS.BS.CKII LÊ THANH QUỲNH NGÂN" />
              <div class="card-body">
                <h5 class="card-title">THS.BS.CKII LÊ THANH QUỲNH NGÂN</h5>
                <p class="card-text">Chuyên khoa: Viêm gan- Nhiễm mỡ</p>
                <a href="TTBacsi.aspx#bacsiquynhngan" class="btn btn-outline-primary">Xem chi tiết</a>
              </div>
            </div>
            </div>

           <div class="col-md-4 doctor-card" data-specialty="viem-gan-nhiem-mo">
            <div class="card mb-4">
              <img src="../Images/Image_2/bs-huynh-van-trung-1.png" class="card-img-top" alt="BS.CKII HUỲNH VĂN TRUNG" />
              <div class="card-body">
                <h5 class="card-title">BS.CKII HUỲNH VĂN TRUNG</h5>
                <p class="card-text">Chuyên khoa: Viêm gan- Nhiễm mỡ</p>
                <a href="TTBacsi.aspx#bacsivantrung" class="btn btn-outline-primary">Xem chi tiết</a>
              </div>
            </div>
           </div>
            <!-- Card chuyên gia khoa nhi  -->
            
            <div class="col-md-4 doctor-card" data-specialty="nhi">
             <div class="card mb-4">
               <img src="../Images/Image_2/vu-huy-tru.png" class="card-img-top" alt="PGS.TS.BS VŨ HUY TRỤ" />
               <div class="card-body">
                 <h5 class="card-title">PGS.TS.BS VŨ HUY TRỤ</h5>
                 <p class="card-text">Chuyên khoa: Nhi</p>
                 <a href="TTBacsi.aspx#bacsihuytru" class="btn btn-outline-primary">Xem chi tiết</a>
               </div>
             </div>
            </div>

            <div class="col-md-4 doctor-card" data-specialty="nhi">
             <div class="card mb-4">
               <img src="../Images/Image_2/nguyen-thi-hanh-le.png" class="card-img-top" alt="BS.CKII NGUYỄN THỊ HẠNH LÊ" />
               <div class="card-body">
                 <h5 class="card-title">BS.CKII NGUYỄN THỊ HẠNH LÊ</h5>
                 <p class="card-text">Chuyên khoa: Nhi</p>
                 <a href="TTBacsi.aspx#bacsihanhle" class="btn btn-outline-primary">Xem chi tiết</a>
               </div>
             </div>
            </div>

            <div class="col-md-4 doctor-card" data-specialty="nhi">
             <div class="card mb-4">
               <img src="../Images/Image_2/tran-duc-hau.png" class="card-img-top" alt="TS.BS TRẦN ĐỨC HẬU" />
               <div class="card-body">
                 <h5 class="card-title">TS.BS TRẦN ĐỨC HẬU</h5>
                 <p class="card-text">Chuyên khoa: Nhi</p>
                 <a href="TTBacsi.aspx#bacsiduchau" class="btn btn-outline-primary">Xem chi tiết</a>
               </div>
             </div>
            </div>
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
  <!-- Script lọc -->
  <script>
    function filterDoctors() {
      const specialty = document.getElementById('<%= ddlSpecialty.ClientID %>').value.toLowerCase();
      const keyword = document.getElementById('<%= txtSearch.ClientID %>').value.toLowerCase();
      const cards = document.querySelectorAll('.doctor-card');

      cards.forEach(card => {
        const name = card.querySelector('.card-title').textContent.toLowerCase();
        const cardSpecialty = card.getAttribute('data-specialty');

        const matchSpecialty = !specialty || cardSpecialty === specialty;
        const matchKeyword = !keyword || name.includes(keyword);

        card.style.display = (matchSpecialty && matchKeyword) ? 'block' : 'none';
      });
    }
      
    
  </script>
  <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
