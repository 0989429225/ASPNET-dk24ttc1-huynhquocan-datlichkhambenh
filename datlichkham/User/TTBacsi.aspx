<%@ Register Src="~/UserControl.ascx" TagPrefix="uc" TagName="Logout" %>
<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TTBacsi.aspx.cs" Inherits="datlichkham.User.TTBacsi" %>

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
<style>
    .box {
  background-color: #e0f7fa;
  padding: 15px;
  border: 1px solid #ccc;
  border-radius: 6px;
}

.sub-box {
  background-color: #fff3e0;
  padding: 10px;
  border: 1px dashed #999;
  border-radius: 4px;
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
    <!-- Danh sách chuyên gia -->
<div class="container">
    <div class="row" id="doctor-list">
        <!-- Card chuyên gia tim mach -->
        <div class="container mt-4" id ="bacsivinh">
            <div class="row">
        <!-- Div trái: Ảnh + Tên + Khoa -->
                <div class="col-md-6 d-flex flex-column align-items-center">
                  <img src="../Images/Image_2/bac-pham-nguyen-vinh.png" alt="Bác sĩ Phạm Nguyễn Vinh" class="img-fluid rounded mb-3" style="max-height: 300px;" />
                  <h3>PGS.TS.BS PHẠM NGUYỄN VINH</h3>
                  <p>Chuyên khoa: Tim mạch</p>
                </div>

        <!-- Div phải: Thông tin sổ xuống -->
                <div class="col-md-6 doctor-details">
                  <h3>Giới thiệu</h3>
                        <p>PGS.TS.BS Phạm Nguyễn Vinh là một trong những chuyên gia đầu ngành trong lĩnh vực Nội tim mạch tại Việt Nam. Năm 1997, bác sĩ bảo vệ thành công luận án Tiến sĩ Y khoa tại trường Đại học Y Dược TP.HCM và được phong tặng danh hiệu Phó giáo sư vào năm 2002.</p>

                    <h3>Thành tựu</h3>
                              <p>1. Nghiên cứu khoa học</p>
                          <ul>                              
                              <li>Phạm Nguyễn Vinh, Nguyễn Kỳ Chân, Nguyễn Thị Tuyết Hồng, Hà Hải Châu: Nghiên cứu tác dụng của Acebutolol – (Sectral) – trong cao huyết áp nặng vừa. Thông Tin Y Học số 3/1984, tr.27-29</li>
                              <li>Phạm Nguyễn Vinh: Traitement actuel de l’ hypertension artérielle. Informations Médicales d’Asie-francophone – No.6 Janvier-Février 1994</li>
                          </ul>
                          <p>2. Biên soạn sách</p>
                          <ul>                              
                                <li>Siêu âm tim và bệnh lý tim mạch. Tái bản lần thứ 4. Nhà xuất bản Y học 2006.</li>
                                <li>Atlas siêu âm tim 2D và Doppler màu. Nhà xuất bản Y học 2000</li>

                          </ul>
                          <p>3. Nghiên cứu – Hội nghị khoa học</p>
                          <ul>                              
                                  <li>CLARIFY: ProspeCtive observation LongitudinAl RegIstry oF patients with stable coronary arterY disease.”Nghin cứu sổ bộ, tiền cứu, quan sát dọc bệnh nhân bệnh động mạch vành mạn”. Từ 3/2010 à 3/2015.</li>

                          </ul>
 
                    <h3>Chuyên môn</h3>
                            <p>QUÁ TRÌNH ĐÀO TẠO</p>
                              <ul>
                                  <li>1971: Tốt nghiệp Bác sĩ Y khoa chuyên khoa Tim mạch trường Đại học Y khoa Sài Gòn</li>
                                  <li>1990 – 1991: Tu nghiệp tại Pháp – Bệnh viện Fochs và Bệnh viện Necker Enfant Malade</li>
 
                              </ul>
                            <p>KINH NGHIỆM CÔNG TÁC</p>
                              <ul>
                                 <li>1972 – 1975: Trưởng khoa Nội, Bệnh viện Kiến Tường (Mộc Hóa)</li>
                                 <li>1978 – 1979: Phó khoa Tim Mạch, Bệnh viện Nguyễn Tri Phương TP.HCM</li>

                             </ul>
                </div>
            </div>
        </div>
       <div class="container mt-4" id="bacsibachyen">
            <div class="row">
            <!-- Div trái: Ảnh + Tên + Khoa -->
                    <div class="col-md-6 d-flex flex-column align-items-center">
                      <img src="../Images/Image_2/nguyen-thi-bach-yen-avt-1.png" alt="TTND.PGS.TS.BS NGUYỄN THỊ BẠCH YẾN" class="img-fluid rounded mb-3" style="max-height: 300px;" />
                      <h3>TTND.PGS.TS.BS NGUYỄN THỊ BẠCH YẾN</h3>
                      <p>Chuyên khoa: Tim mạch</p>
                    </div>

            <!-- Div phải: Thông tin sổ xuống -->
                    <div class="col-md-6 doctor-details">
                      <h3>Giới thiệu</h3>
                            <p>                                            
                                Với hơn 30 năm kinh nghiệm trong việc nghiên cứu và điều trị các bệnh lý về tim mạch, TTND.PGS.TS.BS Nguyễn Thị Bạch Yến đã đạt được hàng loạt những danh hiệu cao quý như: Danh hiệu thầy thuốc nhân dân, đạt Huân chương Lao động hạng 3 và giải thưởng nhà nước về khoa học công nghệ.
                            </p>
                      <h3>Thành tựu</h3>
                              <p>DANH HIỆU, GIẢI THƯỞNG</p>
                              <ul>                              
                                 <li>Chủ tịch nước trao tặng Danh hiệu thầy thuốc nhân dân vì đã có nhiều cống hiến trong sự nghiệp bảo vệ và nâng cao sức khỏe nhân dân</li>
                                 <li>Huân chương Lao động hạng 3</li>
                                 <li>Giải thưởng nhà nước về khoa học công nghệ năm 2005</li>
                             </ul>
                             <p>CÔNG TRÌNH NGHIÊN CỨU</p>
                              <ul>                              
                                  <li>
                                      Thấp tim và bệnh Tim do thấp                                               

                                  </li>
                                  <li>
                                      Điện tim đồ trong bệnh thấp tim và các bệnh tim do thấp
                                  </li>
                                  <li>
                                      Những kỹ thuật cao và kỹ thuật cải tiến ứng dụng trong chẩn đoán và điều trị bệnh tại Bệnh viện Bạch Mai
                                  </li>
                             </ul>
                     
                        <h3>Chuyên môn</h3>
                                <p>QUÁ TRÌNH ĐÀO TẠO</p>
                                  <ul>
                                      <li>1978 – 1984: Sinh viên trường Đại học Y Hà Nội</li>
                                      <li>1983 – 1987: Bác sĩ nội trú Tim mạch, trường Đại học Y Hà Nội</li>

                                  </ul>
                                <p>KINH NGHIỆM CÔNG TÁC</p>
                                  <ul>
                                     <li>1988 – 2020: Viện Tim mạch – Bệnh viện Bạch Mai</li>
                                     <li>2007 – 2017: Phó Viện Trưởng Viện Tim mạch</li>
                                    
                                 </ul>
                    </div>
                </div>
            </div>
        <div class="container mt-4" id="bacsitrivien">
             <div class="row">
             <!-- Div trái: Ảnh + Tên + Khoa -->
                     <div class="col-md-6 d-flex flex-column align-items-center">
                       <img src="../Images/Image_2/nguyen-minh-tri-vien-avt.png" alt="THS.BS NGUYỄN MINH TRÍ VIÊN" class="img-fluid rounded mb-3" style="max-height: 300px;" />
                       <h3>THS.BS NGUYỄN MINH TRÍ VIÊN</h3>
                       <p>Chuyên khoa: Tim mạch</p>
                     </div>
             <!-- Div phải: Thông tin sổ xuống -->
                     <div class="col-md-6 doctor-details">
                       <h3>Giới thiệu</h3>
                               <p>                                            
                                    ThS.BS Nguyễn Minh Trí Viên là chuyên gia phẫu thuật tim hàng đầu Việt Nam. Ông là một trong số ít chuyên gia được đào tạo bài bản chuyên sâu về phẫu thuật tim ở nước ngoài: Bác sĩ nội trú Bệnh viện Broussais, Bệnh viện Marie Lannelongue, Paris năm 1992 – 1993, Bác sĩ thường trú Bệnh viện Royal Children, Melbourne năm 2002.                             

                               </p>
                                <br />
                               <p>
                                   Là chuyên gia tiên phong trong phẫu thuật tim bẩm sinh, phẫu thuật tim sơ sinh, ThS.BS Nguyễn Minh Trí Viên “chuyên trị” các ca bệnh phức tạp như: chuyển vị đại động mạch, tim một thất, ghép van tự thân (phẫu thuật Ross), sửa chữa hoàn toàn kênh nhĩ thất, phẫu thuật chuyển đổi đôi (double switch) trong bệnh bất tương hợp đôi…
                               </p>
                               <br />
                              <p>
                                  Với hơn 30 năm kinh nghiệm trong lĩnh vực Phẫu thuật tim bẩm sinh và người lớn tại các bệnh viện lớn cả nước như Viện Tim TP.HCM, Bệnh viện Nhi Đồng 2, Bệnh viện Tim Tâm Đức…, ThS.BS Nguyễn Minh Trí Viên đã điều trị thành công, mang lại cuộc đời mới cho hàng vạn ca bệnh khó, đặc biệt là những em bé mắc bệnh tim bẩm sinh phức tạp.
                              </p>
                               
                     </div>
                 </div>
             </div>
        <div class="container mt-4" id="bacsitruongkhanh">
            <div class="row">
            <!-- Div trái: Ảnh + Tên + Khoa -->
                    <div class="col-md-6 d-flex flex-column align-items-center">
                      <img src="../Images/Image_2/bs-vu-truong-khanh.png" alt="TTƯT.TS.BS VŨ TRƯỜNG KHANH" class="img-fluid rounded mb-3" style="max-height: 300px;" />
                      <h3>TTƯT.TS.BS VŨ TRƯỜNG KHANH</h3>
                      <p>Chuyên khoa: Viêm gan- Nhiễm mỡ</p>
                    </div>

            <!-- Div phải: Thông tin sổ xuống -->
                    <div class="col-md-6 doctor-details">
                      <h3>Giới thiệu</h3>
                            <p>                                            
                                TTƯT.TS.BS Vũ Trường Khanh là một trong những chuyên gia đầu ngành tại Việt Nam trong lĩnh vực Tiêu hóa – Gan mật – Tụy, với hơn 30 năm kinh nghiệm công tác và nghiên cứu chuyên sâu. Hiện nay, ông đang giữ chức vụ Trưởng khoa Tiêu hóa tại Bệnh viện Đa khoa Tâm Anh Hà Nội.
                            </p>
                      <h3>Thành tựu</h3>
                              <p>DANH HIỆU, GIẢI THƯỞNG</p>
                              <ul>                              
                                 <li>2016: Bằng khen của Chính phủ</li>
                                 <li>2017: Được phong Danh hiệu Thầy thuốc ưu tú</li>
                                 <li>2019: Bác sĩ Cao cấp</li>
                             </ul>
                             <p>CÔNG TRÌNH NGHIÊN CỨU</p>
                              <ul>                              
                                  <li>
                                     Nghiên cứu ứng dụng sinh học phân tử.                                             
                                  </li>
                                  <li>
                                     Hóa sinh và kỹ thuật nội soi trong sàng lọc.
                                  </li>
                                  <li>
                                      Chẩn đoán và điều trị ung thư dạ dày sớm.
                                  </li>
                             </ul>
                     
                        <h3>Chuyên môn</h3>
                                <p>QUÁ TRÌNH ĐÀO TẠO</p>
                                  <ul>
                                      <li>Năm 1994: Đào tạo Bác sĩ đa khoa tại Đại học Y Thái Bình.</li>
                                      <li>Năm 1998: Đào tạo Bác sĩ Nội trú bệnh viện chuyên ngành Nội Tổng hợp tại Đại học Y Hà Nội.</li>

                                  </ul>
                                <p>KINH NGHIỆM CÔNG TÁC</p>
                                  <ul>
                                     <li>1998 – 2007: Bác sĩ Khoa Tiêu hóa, Bệnh viện Bạch Mai</li>
                                     <li>2007 – 2016: Phó Trưởng khoa, Khoa Tiêu hóa, Bệnh viện Bạch Mai.</li>          
                                 </ul>
                    </div>
                </div>
            </div>
        <div class="container mt-4" id="bacsiquynhngan">
            <div class="row">
            <!-- Div trái: Ảnh + Tên + Khoa -->
                    <div class="col-md-6 d-flex flex-column align-items-center">
                      <img src="../Images/Image_2/le-thanh-quynh-ngan.png" alt="THS.BS.CKII LÊ THANH QUỲNH NGÂN" class="img-fluid rounded mb-3" style="max-height: 300px;" />
                      <h3>THS.BS.CKII LÊ THANH QUỲNH NGÂN</h3>
                      <p>Chuyên khoa: Viêm gan- Nhiễm mỡ</p>
                    </div>

            <!-- Div phải: Thông tin sổ xuống -->
                    <div class="col-md-6 doctor-details">
                      <h3>Giới thiệu</h3>
                            <p>                                            
                                ThS.BS.CKII Lê Thanh Quỳnh Ngân có 20 năm kinh nghiệm trong chẩn đoán, điều trị các bệnh lý về gan (viêm gan cấp, mạn, xơ gan, ung thư gan) và các bệnh tiêu hóa (viêm đại tràng, hội chứng ruột kích thích, nhiễm vi khuẩn HP…).
                            </p>
                      <h3>Thành tựu</h3>
                              <p>DANH HIỆU, GIẢI THƯỞNG</p>
                              <ul>                              
                                 <li>Chiến sĩ thi đua cấp cơ sở (nhiều năm liên tục)</li>
                                 <li>Chiến sĩ thi đua cấp thành phố</li>
                                 <li>Học tập và làm theo gương Chủ tịch Hồ Chí Minh</li>
                             </ul>
                             <p>CÔNG TRÌNH NGHIÊN CỨU</p> <br />
                              <p>Có 7 công trình nghiên cứu và bài báo được đăng trên các Tạp chí y học TP. Hồ Chí Minh, Hội Khoa học tiêu hóa Việt Nam và Hội Thầy thuốc trẻ Việt Nam.</p>
             
                        <h3>Chuyên môn</h3>
                                <p>QUÁ TRÌNH ĐÀO TẠO</p>
                                  <ul>
                                      <li>Thạc sĩ y học tại Đại học y dược Tp Hồ Chí Minh (2012)</li>
                                      <li> Bác sĩ chuyên khoa cấp 2 tại Đại học Y Khoa Phạm Ngọc Thạch (2019)</li>

                                  </ul>
                                <p>KINH NGHIỆM CÔNG TÁC</p>
                                  <ul>
                                     <li>Bác sĩ Hồi sức tích cực, Bệnh viện Nhân Dân Gia Định</li>
                                     <li>Bác sĩ điều trị khoa Nội tiêu hóa, Bệnh viện Nhân Dân Gia Định</li>          
                                 </ul>
                    </div>
                </div>
            </div>
        <div class="container mt-4" id="bacsivantrung">
             <div class="row">
             <!-- Div trái: Ảnh + Tên + Khoa -->
                     <div class="col-md-6 d-flex flex-column align-items-center">
                       <img src="../Images/Image_2/bs-huynh-van-trung-1.png" alt="BS.CKII HUỲNH VĂN TRUNG" class="img-fluid rounded mb-3" style="max-height: 300px;" />
                       <h3>BS.CKII HUỲNH VĂN TRUNG</h3>
                       <p>Chuyên khoa: Viêm gan- Nhiễm mỡ</p>
                     </div>

             <!-- Div phải: Thông tin sổ xuống -->
                     <div class="col-md-6 doctor-details">
                       <h3>Giới thiệu</h3>
                             <p>                                            
                                 Tốt nghiệp Đại học Y Dược TP.HCM – nơi được xem cái nôi đào tạo nhiều bác sĩ giỏi, là nguồn cung ứng bác sĩ đáng tin cậy cho các bệnh viện trong khu vực. BS.CKII Huỳnh Văn Trung được may mắn học tập, làm việc và trưởng thành trong môi trường chuyên nghiệp.
                             </p>
                       <h3>Chuyên môn</h3>
                                 <p>QUÁ TRÌNH ĐÀO TẠO</p>
                                   <ul>
                                       <li>Từ năm 2004 – 2010: Bác sĩ đa khoa Đại học Y dược TP.HCM</li>
                                       <li>Từ năm 2013 – 2015: Bác sĩ chuyên khoa 1 nội tổng quát Đại học Y dược TP.HCM</li>

                                   </ul>
                                 <p>KINH NGHIỆM CÔNG TÁC</p>
                                   <ul>
                                      <li>Từ năm 2010 – tháng 7/2016: Bệnh viện đa khoa khu vực Củ Chi.</li>
                                      <li>Từ tháng 7/2016 – 2020: Bệnh viện Hoàn Mỹ Sài Gòn.</li>
                             
                                  </ul>
                     </div>
                 </div>
             </div>
        <div class="container mt-4" id="bacsihuytru">
         <div class="row">
         <!-- Div trái: Ảnh + Tên + Khoa -->
                 <div class="col-md-6 d-flex flex-column align-items-center">
                   <img src="../Images/Image_2/vu-huy-tru.png" alt="PGS.TS.BS VŨ HUY TRỤ" class="img-fluid rounded mb-3" style="max-height: 300px;" />
                   <h3>PGS.TS.BS VŨ HUY TRỤ</h3>
                   <p>Chuyên khoa: Nhi</p>
                 </div>

         <!-- Div phải: Thông tin sổ xuống -->
                 <div class="col-md-6 doctor-details">
                   <h3>Giới thiệu</h3>
                         <p>                                            
                             PGS.TS.BS Vũ Huy Trụ là một trong những chuyên gia đầu ngành trong lĩnh vực khám và điều trị bệnh lý nhi khoa tại Việt Nam. Sau khi tốt nghiệp Bác sĩ Y khoa tại Trường Đại học Y Dược TP.HCM, bác sĩ Vũ Huy Trụ lựa chọn theo đuổi bộ môn Nhi, dành trọn tâm huyết, không ngừng học tập để nâng cao trình độ chuyên môn và nghiệp vụ trong công tác chăm sóc, bảo vệ sức khỏe trẻ em – “thế hệ tương lai” của đất nước.
                         </p>
                   <h3>Thành tựu</h3>
                           <p>DANH HIỆU, GIẢI THƯỞNG</p>
                           <ul>                              
                              <li>2001 – 2021: Chiến sĩ thi đua cơ sở</li>
                              <li>2008: Giấy khen của Hiệu trưởng Trường Đại học Y Dược TP.HCM, số 976/YD-KT</li>
                              <li>2009: Giấy khen của Hiệu trưởng Trường Đại học Y Dược TP.HCM, số 604/YD-KT</li>
                          </ul>
                          <p>CÔNG TRÌNH NGHIÊN CỨU</p>
                           <ul>                              
                               <li>
                                  Sinh thiết thận trong hội chứng thận hư, số 18/2003/YD/NCKH;                                               

                               </li>
                               <li>
                                   Vấn đề tái khám trong hội chứng thận hư ở trẻ em, số 16/2003/YD/NCKH;
                               </li>
                               <li>
                                   Tổn thương thận trong lupus trẻ em, số 200331122 YD/NCKH;
                               </li>
                          </ul>
              
                     <h3>Chuyên môn</h3>
                             <p>QUÁ TRÌNH ĐÀO TẠO</p>
                               <ul>
                                   <li>1974 – 1980: Sinh viên Trường Đại học Y Dược TP.HCM</li>
                                   <li>1980: Tốt nghiệp Bác sĩ Y khoa, Trường Đại học Y Dược TP.HCM</li>

                               </ul>
                             <p>KINH NGHIỆM CÔNG TÁC</p>
                               <ul>
                                  <li>1980 – 1984: Bác sĩ Nội trú Nhi, Trường Đại học Y Dược TP.HCM</li>
                                  <li>1984 – 2022: Giảng viên cao cấp Bộ môn Nhi, Trường Đại học Y Dược TP.HCM</li>
                             
                              </ul>
                 </div>
             </div>
        </div>
        <div class="container mt-4" id="bacsihanhle">
         <div class="row">
         <!-- Div trái: Ảnh + Tên + Khoa -->
                 <div class="col-md-6 d-flex flex-column align-items-center">
                   <img src="../Images/Image_2/nguyen-thi-hanh-le.png" alt="BS.CKII NGUYỄN THỊ HẠNH LÊ" class="img-fluid rounded mb-3" style="max-height: 300px;" />
                   <h3>BS.CKII NGUYỄN THỊ HẠNH LÊ</h3>
                   <p>Chuyên khoa: Nhi</p>
                 </div>

         <!-- Div phải: Thông tin sổ xuống -->
                 <div class="col-md-6 doctor-details">
                   <h3>Giới thiệu</h3>
                         <p>                                            
                             Bác sĩ Nguyễn Thị Hạnh Lê được đào tạo chuyên sâu về lĩnh vực Nhi khoa tại Trường Đại học Y khoa Odessa, USSR, Liên Bang Nga. Bằng niềm đam mê mãnh liệt, bác sĩ Hạnh Lê đã không ngừng trau dồi nâng cao kiến thức và năng lực chuyên môn. Bác sĩ đã dành 1 năm thực tập Nhi khoa tại Bệnh viện Saint Denis (Paris, Pháp), sau đó hoàn thành chương trình đào tạo Bác sĩ chuyên khoa I, Bác sĩ chuyên khoa II về Nhi khoa tại Trường Đại học Y Dược TP.HCM.
                         </p>
                   <h3>Thành tựu</h3>
                           
                          <p>CÔNG TRÌNH NGHIÊN CỨU</p>
                           <ul>                              
                               <li>
                                   Rối loạn trong hoạt động trao đổi khí ở trẻ dưới 12 tháng tuổi bị viêm phổi và suy hô hấp (1998)                                               

                               </li>
                               <li>
                                  Nghiên cứu về nhiễm trùng bệnh viện tại khoa ICU Bệnh viện Nhi đồng 2 (2001)
                               </li>
                               <li>
                                   Nghiên cứu về nhiễm khuẩn huyết tại Bệnh viện Nhi đồng 2 (2002)
                               </li>
                          </ul>
              
                     <h3>Chuyên môn</h3>
                             <p>QUÁ TRÌNH ĐÀO TẠO</p>
                               <ul>
                                   <li>1974 – 1981: Học Bác sĩ Nhi khoa, Đại học Y khoa Odessa, USSR, Liên Bang Nga</li>
                                   <li>1990: Bác sĩ chuyên khoa I Nhi, Đại học Y Dược TP.HCM</li>

                               </ul>
                             <p>KINH NGHIỆM CÔNG TÁC</p>
                               <ul>
                                  <li>1981 – 1988: Bác sĩ khoa Hồi sức cấp cứu, Bệnh viện Nhi đồng 2</li>
                                  <li>1988 – 1994: Phó khoa Hồi sức cấp cứu, Bệnh viện Nhi đồng 2</li>
                             
                              </ul>
                 </div>
             </div>
         </div>
        <div class="container mt-4" id="bacsiduchau">
         <div class="row">
         <!-- Div trái: Ảnh + Tên + Khoa -->
                 <div class="col-md-6 d-flex flex-column align-items-center">
                   <img src="../Images/Image_2/tran-duc-hau.png" alt="TS.BS TRẦN ĐỨC HẬU" class="img-fluid rounded mb-3" style="max-height: 300px;" />
                   <h3>TS.BS TRẦN ĐỨC HẬU</h3>
                   <p>Chuyên khoa: Nhi</p>
                 </div>

         <!-- Div phải: Thông tin sổ xuống -->
                 <div class="col-md-6 doctor-details">
                   <h3>Giới thiệu</h3>
                         <p>                                            
                             Bác sĩ Hậu được đào tạo chuyên ngành Nhi khoa tại trường Đại học Y Nhi Leningrad, Liên xô. Sau khi tốt nghiệp, bác sĩ tiếp tục thực tập sau đại học tại trường, tích lũy kinh nghiệm thăm khám và điều trị cho các bệnh nhi. Bác sĩ Hậu đã có hơn 30 năm kinh nghiệm trong chuyên ngành Nhi khoa.
                         </p>
                   <h3>Thành tựu</h3>
                           <p>CÔNG TRÌNH NGHIÊN CỨU</p>
                           <ul>                              
                               <li>
                                   Bác sĩ Hậu là tác giả, đồng tác giả của khoảng 30 bài báo đăng trên các tạp chí quốc tế và trong nước.                                        

                               </li>
                           </ul>
                     <h3>Chuyên môn</h3>
                             <p>QUÁ TRÌNH ĐÀO TẠO</p>
                               <ul>
                                   <li>1985-1991: Bác sĩ Nhi khoa, Đại học Y Nhi Leningrad, Liên xô.</li>
                                   <li>1991-1993: Thực tập sau đại học tại trường Đại học Y Nhi Leningrad, Liên xô.</li>
                                   <li>1999-2000: Đào tạo chuyên khoa Ung bướu tại Bệnh viện Nhi Hoàng Gia Melbourne, Australia</li>
                               </ul>
                             <p>KINH NGHIỆM CÔNG TÁC</p>
                               <ul>
                                  <li>1994 – 2023: Bệnh viện Nhi Trung ương.</li>
                                  <li>2008 – 4/2023: Bác sĩ khoa Ung bướu, Bệnh viện Nhi Trung ương.</li>
                                  <li>5/2023 – nay: Trưởng khoa Nhi – Bệnh viện Đa khoa Tâm Anh Hà Nội.</li>
                              </ul>
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
  <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
