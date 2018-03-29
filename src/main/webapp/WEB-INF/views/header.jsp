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
  <link href="<c:url  value="./css/cssHeader.css"/>" rel="stylesheet">

<title></title>
</head>
<body>
	<header id="header">
    <div class="container">

      <div id="logo" class="pull-left">
        <a href="http://www.hcmute.edu.vn/" style="font-size: 30px;">HCMUTE</a>
      </div>
      <nav id="nav-menu-container">
        <ul class="nav-menu">
          <li class="menu-active"><a href="<c:url value="./TrangChu.jsp"/>"><font size="4">HOME</font></a></li>
          <li><a href="#"><font size="4">KHOA</font></a>
          	<ul>
				<c:forEach items="${listTenKhoa}" var="tenKhoa" >
				<li><a href="/cauLacBo?id=${tenKhoa.getMaCap()}">${tenKhoa.getTenCap()}</a></li>
				</c:forEach>
          	</ul>
          </li>   
          <li><a href="#"><font size="4">ĐOÀN HỘI</font></a>
          	<ul>
				<c:forEach items="${listTenDoanHoi}" var="tenDoanHoi" >
				<li><a href="/cauLacBo?id=${tenDoanHoi.getMaCap()}">${tenDoanHoi.getTenCap()}</a></li>
				</c:forEach>
          	</ul> 
          </li>  
          <li><a href="#"><font size="4">CÂU LẠC BỘ</font></a> 
          	<ul>
				<c:forEach items="${listTenCLB}" var="tenCLB" >
				<li><a href="/cauLacBo?id=${tenCLB.getMaCap()}">${tenCLB.getTenCap()}</a></li>
				</c:forEach>
          	</ul>     	
          </li>
          <c:choose>
          		<c:when test="${sessionScope.user==null}">
          			<li><a href=<c:url  value="/login" />><font size="4" >ĐĂNG NHẬP</font></a></li>
          		</c:when>
          		<c:when test="${sessionScope.user!=null}">
          			<li><a href=<c:url  value="/qlminhchung" />><font size="4" style="color: red;">Quản Lý Minh Chứng</font></a></li>
          			<li><a href=<c:url  value="/logout" />><font size="4" style="color: red;" > ${user} || Đăng Xuất</font></a></li>
          		</c:when>
          </c:choose>
          
        </ul>
      </nav><!-- #nav-menu-container -->
    </div>
  </header><!-- #header -->
  
  
   <section id="hero">
    <div class="hero-container">
      <h1>Trường Đại Học Sư Phạm Kỹ Thuật</h1>
      <h2>Thành Phố Hồ Chí Minh</h2>
    </div>
  </section><!-- #hero -->
  
</body>
</html>