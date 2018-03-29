<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html >
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
  <link href="<c:url  value="./css/cssLoaiMinhChung.css" />"rel="stylesheet">
<title>Insert title here</title>
</head>

<body>
	<div class="row">
		<div class="col-sm-3"></div>
		<div class="tinTucSuKien-content col-sm-6">
			<p><strong><%-- <%=tenMC%> --%></strong></p>
		</div>
		<div class="col-sm-3"></div>
	</div>
	<c:forEach var="mc" items="${lstmc}">
		<div class="row">
		<div class="col-sm-3"></div>
		<div class="col-sm-6">
			<img class="tinTucSuKien-image" alt="" src="${mc.getHinhAnhMC() }">
		</div>
		<div class="col-sm-3"></div>
	</div>
	<div class="row">
		<div class="col-sm-3"></div>
		<div class="tinTucSuKien-content col-sm-6">
			<a ><strong>${mc.getNoiDung() }</strong></a>
		</div>
		<div class="col-sm-3"></div>
	</div>
	</c:forEach>
	
</body>
</html>