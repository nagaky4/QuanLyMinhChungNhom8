<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
 
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">
  <meta content="" name="keywords">
  <meta content="" name="description">

   <!-- Favicons -->
  <link href="<c:url value="./img/UTEion.png"/>" rel="icon">
  
  <link href="<c:url  value="./img/UTEion.png"/>" rel="apple-touch-icon">


  <!-- Bootstrap CSS File -->
  <link href="<c:url  value="./lib/bootstrap/css/bootstrap.min.css"/>" rel="stylesheet">

  <!-- Libraries CSS Files -->
  <link href="<c:url  value="./lib/font-awesome/css/font-awesome.min.css" />"rel="stylesheet">
  <link href="<c:url  value="./lib/animate/animate.min.css"/>" rel="stylesheet">

  <!-- JavaScript Libraries -->
  <script src="<c:url  value="./lib/jquery/jquery.min.js"/>"></script>
  <script src="<c:url  value="./lib/jquery/jquery-migrate.min.js"/>"></script>
  <script src="<c:url  value="./lib/bootstrap/js/bootstrap.bundle.min.js"/>"></script>
  <script src="<c:url  value="./lib/easing/easing.min.js"/>"></script>
  <script src="<c:url  value="./lib/wow/wow.min.js"/>"></script>
  
  <script src="<c:url  value="./lib/waypoints/waypoints.min.js"/>"></script>
  <script src="<c:url  value="./lib/counterup/counterup.min.js"/>"></script>
  <script src="<c:url  value="./lib/superfish/hoverIntent.js"/>"></script>
  <script src="<c:url  value="./lib/superfish/superfish.min.js"/>"></script>

  <!-- Contact Form JavaScript File -->
  <script src="<c:url  value="./contactform/contactform.js"/>"></script>

  <!-- Template Main Javascript File -->
  <script src="<c:url  value="./js/main.js"/>"></script>
	
	<!-- ckEditor -->
	<script src="./ckeditor/ckeditor.js"></script>
	<script src="<c:url  value="static/ckeditor/ckeditor.js"/>"></script>

  <!-- Main Stylesheet File -->
  <link href="<c:url  value="./css/style.css"/>" rel="stylesheet">

<title></title>
</head>
<body>

	<%@ include file="header.jsp" %>

  <main id="main">

    <!--==========================
      About Us Section
    ============================-->
    <section id="gioiThieuChung">
      <div class="container">
        <div class="row about-container">

          <div class="col-lg-6 content order-lg-1 order-2">
            <h2 class="title">Giới thiệu chung</h2>
            <p>
              Nằm ở cửa ngõ phía bắc Tp. Hồ Chí Minh, cách trung tâm thành phố khoảng 10 km, tọa lạc tại số 1 Võ Văn Ngân, quận Thủ Đức, Trường đại học Sư phạm Kỹ thuật Tp. Hồ Chí Minh tập hợp được các ưu điểm của một cơ sở học tập rộng rãi, khang trang, an toàn, nằm ở ngoại ô nhưng giao thông bằng xe bus vào các khu vực của thành phố, đến sân bay và các vùng lân cận rất thuận tiện.
            </p>

            <div class="icon-box wow fadeInUp">
              <div class="icon"><i class="fa fa-shopping-bag"></i></div>
              <h4 class="title"><a href="">Chức năng - Nhiệm vụ</a></h4>
              <p class="description">Đào tạo và bồi dưỡng giáo viên kỹ thuật cho các trường đại học, cao đẳng, trung cấp chuyên nghiệp và dạy nghề, các trường phổ thông trung học.</p>
              <p class="description">Đào tạo đội ngũ kỹ sư công nghệ và bồi dưỡng nguồn nhân lực lao động kỹ thuật thích ứng với thị trường lao động.</p>
              <p class="description">Nghiên cứu khoa học và phục vụ sản xuất trên các lĩnh vực giáo dục chuyên nghiệp và khoa học công nghệ.</p>
              <p class="description">Quan hệ hợp tác với các cơ sở khoa học và đào tạo giáo viên kỹ thuật ở nước ngoài.</p>

            </div>

            <div class="icon-box wow fadeInUp" data-wow-delay="0.2s">
              <div class="icon"><i class="fa fa-photo"></i></div>
              <h4 class="title"><a href="">Chính sách chất lượng</a></h4>
              <p class="description">Không ngừng nâng cao chất lượng dạy, học, nghiên cứu khoa học nhằm cung cấp cho người học những điều kiện tốt nhất để phát triển toàn diện các năng lực, đáp ứng nhu cầu phát triển kinh tế, xã hội của đất nước và hội nhập quốc tế</p>
            </div>

            <div class="icon-box wow fadeInUp" data-wow-delay="0.4s">
              <div class="icon"><i class="fa fa-bar-chart"></i></div>
              <h4 class="title"><a href="">Thành tích của nhà trường</a></h4>
              <p class="description">Với những nỗ lực to lớn của nhiều thế hệ, Trường Đại học Sư phạm Kỹ thuật Tp. Hồ Chí Minh đã vững bước phát triển về mọi mặt. Trường đã được Đảng và Nhà nước dành cho những phần thưởng cao quý:</p>
				<p class="description">Nhà trường được Chủ tịch nước tặng thưởng Huân chương Độc lập hạng ba (năm 2007), Huân chương Lao động hạng Nhất (năm 2001), Huân chương Lao động hạng Nhì (năm 1996), Huân chương Lao động hạng Ba (năm 1985).</p>
            </div>

            <div class="icon-box wow fadeInUp" data-wow-delay="0.6s">
              <div class="icon"><i class="fa fa-bar-chart"></i></div>
              <h4 class="title"><a href="">Định hướng phát triển của nhà trường</a></h4>
              <p class="description">Phấn đấu trở thành một trong tốp 10 trường đại học hàng đầu của Việt Nam theo các tiêu chí kiểm định chất lượng trường đại học, trên một số mặt ngang tầm với những trường có uy tín của các nước trong khu vực; Trở thành một trường đa lĩnh vực; Sinh viên tốt nghiệp có việc làm phù hợp và phát huy được năng lực của mình một cách tối đa để cống hiến cho xã hội. Chương trình đào tạo có tính thích ứng cao, bằng cấp của Trường được công nhận một cách rộng rãi trong khu vực và thế giới. Tạo được ảnh hưởng tích cực đến đời sống tinh thần và vật chất của xã hội, đặc biệt là Thành phố Hồ Chí Minh và khu vực phía Nam.</p>
            </div>

          </div>

          <div class="col-lg-6 background order-lg-2 order-1 wow fadeInRight"></div>
        </div>

      </div>
    </section><!-- #gioiThieuChung -->

    <!--==========================
      Facts Section
    ============================-->
    <section id="mucTieu">
      <div class="container wow fadeIn">
        <div class="section-header">
          <h3 class="section-title">Mục tiêu</h3>
          <p class="section-description">Phấn đấu trở thành một trong tốp 10 trường đại học hàng đầu của Việt Nam theo các tiêu chí kiểm định chất lượng trường đại học, trên một số mặt ngang tầm với những trường có uy tín của các nước trong khu vực; Trở thành một trường đa lĩnh vực; Sinh viên tốt nghiệp có việc làm phù hợp và phát huy được năng lực của mình một cách tối đa để cống hiến cho xã hội. Chương trình đào tạo có tính thích ứng cao, bằng cấp của Trường được công nhận một cách rộng rãi trong khu vực và thế giới. Tạo được ảnh hưởng tích cực đến đời sống tinh thần và vật chất của xã hội, đặc biệt là Thành phố Hồ Chí Minh và khu vực phía Nam.</p>
        </div>
        <div class="row counters">

  				<div class="col-lg-2 col-6 text-center">
            <span data-toggle="counter-up">12,000</span>
            <p>Sinh viên khoá 2017</p>
  				</div>

          <div class="col-lg-2 col-6 text-center">
            <span data-toggle="counter-up">9,700</span>
            <p>Sinh viên khoá 2016</p>
  				</div>

          <div class="col-lg-2 col-6 text-center">
            <span data-toggle="counter-up">9,578</span>
            <p>Sinh viên khoá 2015</p>
  			</div>

          <div class="col-lg-2 col-6 text-center">
            <span data-toggle="counter-up">9,154</span>
            <p>Sinh viên khoá 2014</p>
  				</div>

  		  <div class="col-lg-2 col-6 text-center">
            <span data-toggle="counter-up">7,121</span>
            <p>Sinh viên khoá 2013</p>
  				</div>

  		  <div class="col-lg-2 col-6 text-center">
            <span data-toggle="counter-up">5,121</span>
            <p>Sinh viên khoá kéo dài</p>
  				</div>

  			</div>

      </div>
    </section><!-- #facts -->

    <!--==========================
      Services Section
    ============================-->
    <section id="thongTin">
      <div class="container wow fadeIn">
        <div class="section-header">
          <h3 class="section-title">Thông tin</h3>
          <p class="section-description">Các thông tin của nhà trường</p>
        </div>
        <div class="row">
          <div class="col-lg-12 col-md-12 wow fadeInUp" data-wow-delay="0.2s">
            <div class="hihi" >

             		<c:if test="${sessionScope.user !=null }">
             			<form action="/ckeditor" method="post">
							<textarea name="editor1" id="editor1" class="ckeditor" cols="20" rows="20" >
								<c:forEach var="ck" items="${data }">
									${ck.getMydata() }
								</c:forEach>
							</textarea>
							<input type="submit" value="submit" />
						</form>	
								            		
             		</c:if>          
            </div>
            <div>
             	<c:forEach var="ck" items="${data }">
					${ck.getMydata() }
				</c:forEach>
            </div>
            
          </div>
        </div>

      </div>
    </section><!-- #thongTin -->

    <!--==========================
      Portfolio Section
    ============================-->
    <section id="portfolio">
      <div class="container wow fadeInUp">
        <div class="section-header">
          <h3 class="section-title">Tổng hợp các thông tin của nhà trường</h3>
          <p class="section-description">Các thông tin của nhà trường</p>
        </div>
        <div class="row">

          <div class="col-lg-12">
            <ul id="portfolio-flters">
              <li data-filter=".filter-app, .filter-card, .filter-logo, .filter-web" class="filter-active">Tất cả</li>
              <li data-filter=".filter-app">Tin tức - Sự kiện</li>
              <li data-filter=".filter-card">Tuyển sinh</li>
              <li data-filter=".filter-logo">Thông báo</li>
              <li data-filter=".filter-web">Học bổng - Việc làm</li>
            </ul>
          </div>
        </div>

        <div class="row" id="portfolio-wrapper">
          <div class="col-lg-3 col-md-6 portfolio-item filter-app">
            <a href="">
              <img src="img/portfolio/ttsk1.jpg" alt="">
              <div class="details">
                <h4>Trao 105 suất học bổng cho sinh viên bị ảnh hưởng bởi cơn bảo số 12</h4>
                <span>Đăng ngày 13/11/2017</span>
              </div>
            </a>
          </div>

          <div class="col-lg-3 col-md-6 portfolio-item filter-card">
            <a href="">
              <img src="img/portfolio/ts1.jpg" alt="">
              <div class="details">
                <h4>Tuyển sinh chương trình đại học chính quy chất lượng cao theo tiêu chuẩn Nhật Bản</h4>
                <span>Đăng ngày 13/11/2017</span>
              </div>
            </a>
          </div>

          <div class="col-lg-3 col-md-6 portfolio-item filter-logo">
            <a href="">
              <img src="img/portfolio/tb1.jpg" alt="">
              <div class="details">
                <h4>Xét chuyển tiếp sinh cao học đợt 1 năm 2018</h4>
                <span>Đăng ngày 13/11/2017</span>
              </div>
            </a>
          </div>

          <div class="col-lg-3 col-md-6 portfolio-item filter-web">
            <a href="">
              <img src="img/portfolio/hbvl1.jpg" alt="">
              <div class="details">
                <h4>Thư mời phỏng vấn tuyển dụng Kỹ sư tại Trường ngày 14/11 và 15/11/2017</h4>
                <span>Đăng ngày 13/11/2017</span>
              </div>
            </a>
          </div>

          <div class="col-lg-3 col-md-6 portfolio-item filter-logo">
            <a href="">
              <img src="img/portfolio/card2.jpg" alt="">
              <div class="details">
                <h4>Tuyển sinh sau Đại học đợt 1 năm 2018</h4>
                <span>Đăng ngày 8/11/2017</span>
              </div>
            </a>
          </div>

          <div class="col-lg-3 col-md-6 portfolio-item filter-app">
            <a href="">
              <img src="img/portfolio/ttsk2.jpg" alt="">
              <div class="details">
                <h4>215 tân kỹ sư nhận bằng tốt nghiệp hệ vừa làm vừa học tại trường Đại học Sư Phạm Kỹ Thuật Thành Phố Hồ Chí Minh</h4>
                <span>Đăng ngày 6/11/2017</span>
              </div>
            </a>
          </div>

          <div class="col-lg-3 col-md-6 portfolio-item filter-web">
            <a href="">
              <img src="img/portfolio/hbvl2.jpg" alt="">
              <div class="details">
                <h4>Công ty CP Máy nén khí TUSEIKI tham gia chương trình “Kết Nối Để Thành Công 2017” tại trường Đại học Sư Phạm Kỹ Thuật TP.HCM</h4>
                <span>Đăng ngày 6/11/2017</span>
              </div>
            </a>
          </div>

          <div class="col-lg-3 col-md-6 portfolio-item filter-app">
            <a href="">
              <img src="img/portfolio/ttsk3.jpg" alt="">
              <div class="details">
                <h4>Khởi nghiệp sáng tạo”</h4>
                <span>Đăng ngày 2/11/2017</span>
              </div>
            </a>
          </div>

          <div class="col-lg-3 col-md-6 portfolio-item filter-logo">
            <a href="">
              <img src="img/portfolio/logo1.jpg" alt="">
              <div class="details">
                <h4>Trung tâm Đào tạo ngắn hạn chiêu sinh khóa học</h4>
                <span>Đăng ngày 1/11/2017</span>
              </div>
            </a>
          </div>

          <div class="col-lg-3 col-md-6 portfolio-item filter-web">
            <a href="">
              <img src="img/portfolio/hbvl3.jpg" alt="">
              <div class="details">
                <h4>Chương trình tuyển dụng của công ty Esuhai ngày 02/11/2017</h4>
                <span>Đăng ngày 30/10/2017</span>
              </div>
            </a>
          </div>

          <div class="col-lg-3 col-md-6 portfolio-item filter-logo">
            <a href="">
              <img src="img/portfolio/web1.jpg" alt="">
              <div class="details">
                <h4>Kết quả tuyển dụng nhân sự năm 2017 (đợt bổ sung)</h4>
                <span>Đăng ngày 23/10/2017</span>
              </div>
            </a>
          </div>

          <div class="col-lg-3 col-md-6 portfolio-item filter-app">
            <a href="">
              <img src="img/portfolio/ttsk4.jpg" alt="">
              <div class="details">
                <h4>HCMUTE đăng cai tổ chức Hội thảo CLB KHCN các trường đại học kỹ thuật lần thứ 51 tại Đồng Tháp và ký kết hợp tác toàn diện với Cao đẳng nghề Đồng Tháp</h4>
                <span>Đăng ngày 21/10/2017</span>
              </div>
            </a>
          </div>

        </div>

      </div>
    </section><!-- #portfolio -->

    <!--==========================
      Team Section
    ============================-->
    <section id="tinVan">
      <div class="container wow fadeInUp">
        <div class="section-header">
          <h3 class="section-title">Tin vắn</h3>
          <p class="section-description"><strong>Các tin vắn của nhà trường</strong></p>
        </div>
        <div class="row">
          <div class="col-lg-4 col-md-6">
            <div class="member">
              <div class="pic"><img src="img/tv1.jpg" alt=""></div>
              <a href=""><h4>Tân sinh viên khóa 2017 nhập học</h4></a>
              <span>3/11/2017</span>
            </div>
          </div>

          <div class="col-lg-4 col-md-6">
            <div class="member">
              <div class="pic"><img src="img/tv2.jpg" alt=""></div>
              <a href=""><h4>HCMUTE khai trương Thư viện chất lượng cao cho sinh viên nghỉ trưa đọc sách, nằm võng</h4></a>
              <span>3/11/2017</span>
            </div>
          </div>

          <div class="col-lg-4 col-md-6">
            <div class="member">
              <div class="pic"><img src="img/tv3.jpg" alt=""></div>
              <a href=""><h4>Hội thảo Khoa học Kỹ thuật & Công nghệ Xanh lần 7</h4></a>
              <span>3/11/2017</span>
            </div>
          </div>

      </div>
    </section><!-- #tinVan -->

    <!--==========================

  </main>

  <!--==========================
    Footer
  ============================-->
	<%@ include file = "footer.jsp" %>
  <!-- #footer -->

  <a href="#" class="back-to-top"><i class="fa fa-chevron-up"></i></a>

</body>
</html>