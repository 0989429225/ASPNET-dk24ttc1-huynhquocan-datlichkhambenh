<%@ Register Src="~/UserControl.ascx" TagPrefix="uc" TagName="Logout" %>

<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="XemTT.aspx.cs" Inherits="Doan.User.XemTT" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8"/>
  <meta name="viewport" content="width=device-width, initial-scale=1"/>
  <title>Trang Chủ</title>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"/>
    <!-- Boxicons -->
<link href="https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css" rel="stylesheet" />
 <link href ="../Css/style.css" rel="stylesheet" />
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
    <img src="../Images/Image_3/thongtin1.jpg" alt="ĐỘI NGŨ CHUYÊN GIA"/>
    <div class="body-text">
      <h3>ĐỘI NGŨ CHUYÊN GIA</h3>
      <p>Các chuyên viên giỏi ở các lĩnh vực hỗ trợ cũng được tập hợp để tạo nên các quy trình dịch vụ toàn diện, khoa học, hiệu quả.</p>
    </div>
  </div>
  <div class="body-item">
    <img src="../Images/Image_3/thongtin2.jpg" alt="BỆNH VIỆN KHÁCH SẠN 5 SAO"/>
    <div class="body-text">
      <h3>BỆNH VIỆN KHÁCH SẠN 5 SAO</h3>
      <p>
          Bệnh viện được xây dựng theo mô hình bệnh viện khách sạn chú trọng đến việc đáp ứng đầy đủ các điều kiện cho hoạt động chuyên môn khám chữa bệnh, đồng thời mang lại những trải nghiệm chất lượng cao của khách hàng về mặt không gian, cảnh quan, phòng nội trú, nhà hàng…
      </p>
    </div>
  </div>
  <div class="body-item">
    <img src="../Images/Image_3/thongtin4.jpg" alt="QUY TRÌNH KHOA HỌC – TOÀN DIỆN"/>
    <div class="body-text">
      <h3>QUY TRÌNH KHOA HỌC – TOÀN DIỆN</h3>
      <p>Quy trình thăm khám, điều trị được xây dựng toàn diện khoa học, giúp tiết kiệm thời gian chi phí và công sức của khách hàng, người bệnh. Dịch vụ chăm sóc khách hàng chuyên nghiệp tận tâm. Hệ thống tổng đài chăm sóc khách hàng chuyên nghiệp trên nhiều kênh tiếp cận như tổng đài điện thoại, website, mạng xã hội,…</p>
    </div>
  </div>
    <div class="body-item">
  <img src="../Images/Image_3/thongtin3.jpg" alt="CƠ SỞ VẬT CHẤT – TRANG THIẾT BỊ HIỆN ĐẠI"/>
  <div class="body-text">
    <h3>CƠ SỞ VẬT CHẤT – TRANG THIẾT BỊ HIỆN ĐẠI</h3>
    <p>
        Bệnh viện Đa khoa Tâm Anh là đơn vị hàng đầu tại Việt Nam đầu tư lớn cho các trang thiết bị máy móc, phương pháp chẩn đoán và điều trị bệnh hàng đầu thế giới. Nhiều trang thiết bị máy móc có số lượng ít trên thế giới và hiếm có ở Việt Nam như:
    </p>
      <ul>
          <li>Hệ thống phòng mổ đạt chuẩn Hybrid sẵn sàng phục vụ cho các ca đại phẫu thuật;</li>
          <li>Hệ thống thiết bị chẩn đoán và điều trị bệnh tiền đình;</li>
          <li>Hệ thống máy và phần mềm ứng dụng trí tuệ nhân tạo trong nuôi cấy phôi phục vụ quá trình thụ tinh ống nghiệm;</li>
      </ul>
  </div>
</div>
    <div class="body-item">
  <img src="../Images/Image_3/thongtin5.jpg" alt="DỊCH VỤ CAO CẤP – GIÁ THÀNH HỢP LÝ"/>
  <div class="body-text">
    <h3>DỊCH VỤ CAO CẤP – GIÁ THÀNH HỢP LÝ</h3>
    <p>
        Bệnh viện hướng tới phục vụ đông đảo khách hàng, người bệnh với giá thành hợp lý, nhiều chính sách ưu đãi về chi phí, hỗ trợ trả góp không lãi suất cho nhiều dịch vụ khám chữa bệnh.
    </p>
  </div>
</div>
    <div class="body-item">
      <img src="../Images/Image_3/thongtin6.jpg" alt="Trách nhiệm với người lao động"/>
      <div class="body-text">
        <h3>TRÁCH NHIỆM VỚI NGƯỜI LAO ĐỘNG</h3>
        <p>
            Bệnh viện chú trọng chăm lo đời sống cán bộ nhân viên chuyên gia bác sĩ … với các chế độ chính sách cao cấp cả vật chất và tinh thần, trở thành môi trường làm việc lý tưởng của người lao động.
        </p>
      </div>
    </div>
    <div class="body-item">
      <img src="../Images/Image_3/thongtin7.jpg" alt="TRÁCH NHIỆM VỚI CỘNG ĐỒNG"/>
      <div class="body-text">
        <h3>TRÁCH NHIỆM VỚI CỘNG ĐỒNG</h3>
        <p>
            Bệnh viện luôn thực hiện tốt, có trách nhiệm với cộng đồng thông qua nhiều hoạt động từ thiện, xã hội có ý nghĩa như đồng hành với Quỹ hỗ trợ bệnh nhân ung thư “Ngày mai tươi sáng”, tài trợ chi phí cho các ca bệnh học ung thư phức tạp, thay xương khớp cho các bệnh nhân ung thư, ủng hộ các chương trình hỗ trợ đồng bào bị bão lụt…
        </p>
    </div>
    </div>
    <div class="body-item">
      <img src="../Images/Image_3/thongtin8.jpg" alt="HỢP TÁC & ĐÀO TẠO CHUYÊN SÂU"/>
      <div class="body-text">
        <h3>HỢP TÁC & ĐÀO TẠO CHUYÊN SÂU</h3>
        <p>
            Bệnh viện là bệnh viện ngoài công lập đầu tiên xây dựng trung tâm nghiên cứu khoa học và đào tạo với quy mô lớn, hoạt động bài bản với nhiều hoạt động đào tạo, hội thảo, hội nghị quốc tế và trong nước về các vấn đề chuyên môn. Là bệnh viện ngoài công lập đầu tiên được cấp mã số đào tạo thường xuyên cho nhiều chuyên ngành như sản, nhi, và hỗ trợ sinh sản, chứng chỉ an toàn tiêm chủng.
        </p>
      </div>
    </div>
    <div class="body-item">
      <img src="../Images/Image_3/thongtin9.jpg" alt="PHÁT TRIỂN BỀN VỮNG"/>
      <div class="body-text">
        <h3>PHÁT TRIỂN BỀN VỮNG</h3>
        <p>
            Với những thành tích đặc biệt, bệnh viện Đa Khoa Tâm Anh đã nhận được nhiều bằng khen và giấy khen của Bộ Y Tế, UBND TP. Hà Nội, UBND Quận Long Biên, các quỹ, các chương trình từ thiện. Đặc biệt nhận được sự tin tưởng của hàng trăm ngàn người dân trên khắp mọi miền đất nước. Đó là những thành quả đáng tự hào và là động lực to lớn để toàn thể bác sĩ, điều dưỡng, nhân viên nỗ lực phát triển kiến thức và kinh nghiệm.
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
