<%@ Register Src="~/UserControl.ascx" TagPrefix="uc" TagName="Logout" %>

<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="thanhtuu.aspx.cs" Inherits="Doan.User.thanhtuu" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8"/>
  <meta name="viewport" content="width=device-width, initial-scale=1"/>
  <title>Thành Tựu</title>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"/>
        <style>
        .body-section {
  display: flex;
  flex-direction: column;
  gap: 40px;
  padding: 40px 20px;
  background: #fff;
}

.body-item {
  display: flex;
  flex-wrap: wrap;
  align-items: center;
  gap: 20px;
}

.body-item img {
  width: 100%;
  max-width: 400px;
  border-radius: 12px;
  box-shadow: 0 4px 8px rgba(0,0,0,0.1);
}

.body-text {
  flex: 1;
  min-width: 250px;
}

.body-text h3 {
  font-size: 20px;
  color: #007BFF;
  margin-bottom: 10px;
}

.body-text p {
  font-size: 16px;
  color: #333;
  line-height: 1.6;
}

/* Responsive */
@media (min-width: 768px) {
  .body-item {
    flex-direction: row;
  }
}

@media (max-width: 767px) {
  .body-item {
    flex-direction: column;
    text-align: center;
  }

  .body-text h3 {
    font-size: 18px;
  }

  .body-text p {
    font-size: 15px;
  }
}
    </style>
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

   <section class="body-section">
      <div class="body-item">
        <img src="../Images/Image_4/be-trai-ngoai-quoc.jpg" alt="Chuyển viện trong tử cung cứu bé trai ngoại quốc"/>
        <div class="body-text">
          <h3 style="display: flex; align-items: center; gap: 8px;" >
              <i class='bx bx-medal' style="font-size: 2em;" ></i>
              CHUYỂN VIỆN TRONG TỬ CUNG CỨU BÉ TRAI NGOẠI QUỐC
          </h3>
          <p>TP HCM_BVĐK Tâm Anh đưa xe cấp cứu chuyên dụng đến cửa khẩu Mộc Bài, “chuyển viện trong tử cung” cứu thai phụ Campuchia dọa sinh non ở tuần 23, thai nhi được nuôi sống ngoạn mục. Ba tháng trước,...</p>
        </div>
      </div>
      <div class="body-item">
          <div class="body-text">
              <h3 style="display: flex; align-items: center; gap: 8px;" >
                <i class='bx bx-medal' style="font-size: 2em;" ></i>
                SINH CON THÀNH CÔNG SAU 6 NĂM CẮT BUỒNG TRỨNG CHỮA UNG THƯ
             </h3>
              <p>
                  Chị Ngân, 31 tuổi, sau 6 năm cắt buồng trứng để chữa ung thư, nay thụ tinh ống nghiệm thành công sinh con khỏe mạnh. Năm 2018, chị Ngân không may được chẩn đoán ung thư buồng trứng trái giai đoạn...
              </p>
            </div>
        <img src="../Images/Image_4/buong-trung-chua-ung-thu.jpg" alt="SINH CON THÀNH CÔNG SAU 6 NĂM CẮT BUỒNG TRỨNG CHỮA UNG THƯ"/>
      </div>
      <div class="body-item">
        <img src="../Images/Image_4/phau-thuat-tim-cho-be-tu-ky.jpg" alt="EM BÉ TỰ KỶ VÀ 'VỊ KHÁCH ĐẶC BIỆT' TRONG PHÒNG MỔ TIM"/>
        <div class="body-text">
           <h3 style="display: flex; align-items: center; gap: 8px;" >
               <i class='bx bx-medal' style="font-size: 2em;" ></i>
               EM BÉ TỰ KỶ VÀ 'VỊ KHÁCH ĐẶC BIỆT' TRONG PHÒNG MỔ TIM
            </h3>
          <p>
              Ca mổ hôm đó thật đặc biệt, chưa từng có tiền lệ trong phòng mổ tim khi bạn búp bê nhỏ được đặc cách vào cùng “chiến binh nhí” là em bé tự kỷ với lỗ thông liên nhĩ lớn. Nhìn bé Anh Thư (7 tuổi, ngụ...
          </p>
        </div>
      </div>
      <div class="body-item">
          <div class="body-text">
            <h3 style="display: flex; align-items: center; gap: 8px;" >
                <i class='bx bx-medal' style="font-size: 2em;" ></i>
                MỔ TRONG BỤNG MẸ VÀ CỨU SỐNG HNAGF TRĂM THAI NHI
             </h3>
            <p>
                Tháng 2/2018, lần đầu tiên, các bác sĩ Bệnh viện Đa khoa Tâm Anh thực hiện thành công ca phẫu thuật nội soi điều trị hội chứng Truyền máu song thai - một biến chứng Sản khoa nguy hiểm. “Thẻ xanh”...
            </p>           
          </div>
           <img src="../Images/Image_4/mo-trong-bung-me-cuu-song-thai-nhi.jpg" alt="MỔ TRONG BỤNG MẸ VÀ CỨU SỐNG HNAGF TRĂM THAI NHI"/>
    </div>
      <div class="body-item">
      <img src="../Images/Image_4/ky-thuat-cao-trong-nuoi-tre-sinh-cuc-non.jpg" alt="KỸ THUẬT CAO TRONG NUÔI TRẺ SINH CỰC NON"/>
      <div class="body-text">
        <h3 style="display: flex; align-items: center; gap: 8px;" >
            <i class='bx bx-medal' style="font-size: 2em;" ></i>
            KỸ THUẬT CAO TRONG NUÔI TRẺ SINH CỰC NON
         </h3>
        <p>
            10h sáng 18/5, BS.CKI Tô Vũ Thiên Hương nhận nhiệm vụ đón bé sinh non 26 tuần nặng 800 gram đang nằm hồi sức ở một bệnh viện phụ sản lớn trên thành phố. Bệnh nhi chuyển viện đến Trung tâm Sơ sinh BVĐK...
        </p>
      </div>
    </div>
      <div class="body-item">
          <div class="body-text">
            <h3 style="display: flex; align-items: center; gap: 8px;" >
                <i class='bx bx-medal' style="font-size: 2em;" ></i>
                TẾ BÀO GỐC MÁU VÀ MÔ DÂY RỐN - TỪ "RÁC THẢI Y TẾ" ĐẾN Y HỌC TÁI TẠO TIỀM NĂNG
            </h3>
            <p>
                Sau nhiều năm tiếp cận công nghệ sinh học tế bào gốc thế giới, Việt Nam đã thành công trong việc biến "rác thải y tế” máu và mô dây rốn thành nguồn dự trữ sinh học quý giá cho nghiên cứu, ứng dụng...
            </p>
          </div>
            <img src="../Images/Image_4/te-bao-goc-mau.jpg" alt="TẾ BÀO GỐC MÁU"/>
        </div>
      <div class="body-item">
          <img src="../Images/Image_4/cuu-benh-nhan-nhoi-mau-co-tim.jpg" alt="27 PHÚT THẦN TỐC CỨU BỆNH NHÂN NHÒI MÁU CƠ TIM"/>
          <div class="body-text">
            <h3 style="display: flex; align-items: center; gap: 8px;" >
                <i class='bx bx-medal' style="font-size: 2em;" ></i>
                27 PHÚT THẦN TỐC CỨU BỆNH NHÂN NHÒI MÁU CƠ TIM
            </h3>
            <p>
                Các bác sĩ đặt stent khơi thông mạch máu bị tắc, cứu trái tim trước nguy cơ ngừng đập chỉ trong 27 phút, bằng 1/3 thời gian khuyến cáo của thế giới....
            </p>
            </div>
        </div>
      <div class="body-item">
          <div class="body-text">
            <h3 style="display: flex; align-items: center; gap: 8px;" >
                <i class='bx bx-medal' style="font-size: 2em;" ></i>
                TẮC ĐỘNG MẠCH PHỔI SAU 3 NĂM UỐNG THUỐC NGỪA THAI
            </h3>
            <p>
                Chị Ánh uống thuốc ngừa thai hơn 3 năm, đột nhiên ngất xỉu, cấp cứu phát hiện huyết khối lấp đầy các nhánh động mạch phổi gây tắc mạch đe dọa tính mạng. BS.CKI Lê Văn Tuyến, Trung tâm Can thiệp...
            </p>
          </div>
            <img src="../Images/Image_4/thuyen-tac-phoi-vi-thuoc-tranh-thai.jpg" alt="TẮC ĐỘNG MẠCH PHỔI SAU 3 NĂM UỐNG THUỐC NGỪA THAI"/>
      </div>
      <div class="body-item">
          <img src="../Images/Image_4/cu-ong-duoc-chan-doan-thieu-mau-co-tim.jpg" alt="MẮT MỜ KHÁM PHÁT HIỆN THIẾU MÁU NUÔI TIM, NGUY CƠ ĐỘT TỬ"/>
          <div class="body-text">
            <h3 style="display: flex; align-items: center; gap: 8px;" >
                <i class='bx bx-medal' style="font-size: 2em;" ></i>
                MẮT MỜ KHÁM PHÁT HIỆN THIẾU MÁU NUÔI TIM, NGUY CƠ ĐỘT TỬ
            </h3>
            <p>
                Cụ ông được chẩn đoán thiếu máu cơ tim khi đi khám mắt, nguyên nhân do tắc hẹp mạch vành nặng cần đặt stent ngay để tránh đột tử. Trở về phòng nội trú sau khi được đưa đi siêu âm tim, đo điện tâm...
            </p>
            </div>
      </div>
</section>

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
