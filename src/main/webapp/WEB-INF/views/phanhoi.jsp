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

  <!-- Main Stylesheet File -->
  <link href="<c:url  value="./css/style.css"/>" rel="stylesheet">

<title></title>
</head>
<body>
	<section id="lienHe">
      <div class="container wow fadeInUp">
        <div class="section-header">
          <h3 class="section-title">Liên hệ</h3>
          <p class="section-description">Nếu bạn có ý kiến hoặc thắc mắc, hãy liên hệ với chúng tôi. Chúng tôi sẽ hồi đáp cho bạn sớm nhất !!</p>
        </div>
      </div>

      <div class="container wow fadeInUp">
        <div class="row justify-content-center">

          <div class="col-lg-3 col-md-4">

            <div class="info">
              <div>
                <i class="fa fa-map-marker"></i>
                <p>Số 1 Võ Văn Ngân<br>Quận Thủ Đức,Thành Phố Hồ Chí Minh</p>
              </div>

              <div>
                <i class="fa fa-envelope"></i>
                <p>pmo@hcmute.edu.vn</p>
              </div>

              <div>
                <i class="fa fa-phone"></i>
                <p>(+84 - 8) 38968641<br>(+84 - 8) 38961333</p>
              </div>
            </div>

            <div class="social-links">
              <a href="#" class="twitter"><i class="fa fa-twitter"></i></a>
              <a href="#" class="facebook"><i class="fa fa-facebook"></i></a>
              <a href="#" class="instagram"><i class="fa fa-instagram"></i></a>
              <a href="#" class="google-plus"><i class="fa fa-google-plus"></i></a>
            </div>

          </div>

          <div class="col-lg-5 col-md-8">
            <div class="form">
              <div id="sendmessage">Your message has been sent. Thank you!</div>
              <div id="errormessage"></div>
              <form action="${pageContext.request.contextPath}/Controller_PhanHoi" method="post">
                <div class="form-group">
                  <input type="text" name="name" class="form-control" name="name" placeholder="Your Name" data-rule="minlen:4" data-msg="Please enter at least 4 chars" />
                  <div class="validation"></div>
                </div>
                <div class="form-group">
                  <input type="email" class="form-control"  name="email" placeholder="Your Email" data-rule="email" data-msg="Please enter a valid email" />
                  <div class="validation"></div>
                </div>
                <div class="form-group">
                  <textarea class="form-control" name="message" rows="5" data-rule="required" data-msg="Please write something for us" placeholder="Message"></textarea>
                  <div class="validation"></div>
                </div>
                <div class="text-center"><button type="submit" name="phanhoi">Send Message</button>
                </div>
              </form>
            </div>
          </div>

        </div>

      </div>
    </section>


<!-- 	 Footer -->
<!--   ============================-->
	<%@ include file = "Footer.jsp" %>
  <!-- #footer -->

</body>
</html>