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
  <link href="<c:url  value="./css/cssLoaiMinhChung.css" />"rel="stylesheet">

<title></title>
</head>
<body>
	<!-- Header -->
	<%@ include file="Header.jsp" %>
	<!-- Header -->
	<section id="loaiminhchung">
      <div class="container wow fadeInUp">
        <div class="section-header">
          <h3 class="section-title">Tổng hợp các thông tin của nhà trường</h3>
          <p class="section-description">Các thông tin của nhà trường</p>
        </div>
        <div class="row">

          <div class="col-lg-12">
            <ul id="loaiminhchung-menu">
            <form action="${pageContext.request.contextPath}/cauLacBo" method="post" >
              <li class="filter-active">
              	<input type="submit" value="TẤT CẢ" name="tatca">
              </li>
              <li>
              	<input type="submit" value="TIN TỨC-SỰ KIỆN" name="ttsk">
              </li>
              <li>
              	<input type="submit" value="THÔNG BÁO" name="thongbao">
              </li>
              <li>
              	<input type="submit" value="BÁO CÁO" name="baocao">
              </li>
              <li>
              	<input type="submit" value="THỐNG KÊ" name="thongke">
              </li> 
              </form>            	              	                          	
            </ul>
          </div>
        </div>
      </div>
    </section><!-- #portfolio -->
    
      
      <% if(request.getAttribute("MaLoaiMC")=="LMC-001")
			{%> 
				<c:forEach items="${listMC}" var="tenMC">
				<div class="row tinTucSuKien-item">
					<div class="col-sm-3">
						<img class="tinTucSuKien-image" src="<c:url value="${tenMC.getHinhAnhMoTa()}"/>" alt="">
					</div>
					<div class="tinTucSuKien-content col-sm-9">
						<a href="<c:url value="./MinhChung.jsp?maMC=${tenMC.getMaMC()}"/>"><strong>${tenMC.getTenMC()}</strong></a>
					</div>
				</div>
				</c:forEach> 
			<%}%>
			
			<% if(request.getAttribute("MaLoaiMC")=="LMC-002")
			{%> 
				<c:forEach items="${listMC}" var="tenMC">
				<div class="row tinTucSuKien-item">
					<div class="col-sm-3">
						<img class="tinTucSuKien-image" src="<c:url value="${tenMC.getHinhAnhMoTa()}"/>" alt="">
					</div>
					<div class="tinTucSuKien-content col-sm-9">
						<a href="<c:url value="./MinhChung.jsp?maMC=${tenMC.getMaMC()}"/>"><strong>${tenMC.getTenMC()}</strong></a>
					</div>
				</div>
				</c:forEach> 
			<%}%>
			
		<% if(request.getAttribute("MaLoaiMC")=="LMC-003")
			{%> 
				<c:forEach items="${listMC}" var="tenMC">
				<div class="row tinTucSuKien-item">
					<div class="col-sm-3">
						<img class="tinTucSuKien-image" src="<c:url value="${tenMC.getHinhAnhMoTa()}"/>" alt="">
					</div>
					<div class="tinTucSuKien-content col-sm-9">
						<a href="<c:url value="./MinhChung.jsp?maMC=${tenMC.getMaMC()}"/>"><strong>${tenMC.getTenMC()}</strong></a>
					</div>
				</div>
				</c:forEach> 
			<%}%>
			
			<% if(request.getAttribute("MaLoaiMC")=="LMC-004")
			{%> 
				<c:forEach items="${listMC}" var="tenMC">
				<div class="row tinTucSuKien-item">
					<div class="col-sm-3">
						<img class="tinTucSuKien-image" src="<c:url value="${tenMC.getHinhAnhMoTa()}"/>" alt="">
					</div>
					<div class="tinTucSuKien-content col-sm-9">
						<a href="<c:url value="./MinhChung.jsp?maMC=${tenMC.getMaMC()}"/>"><strong>${tenMC.getTenMC()}</strong></a>
					</div>
				</div>
				</c:forEach> 
			<%}%>
			
			<% if(request.getParameter("tatca")!=null)
			{%> 
				<c:forEach items="${listMC}" var="tenMC">
				<div class="row tinTucSuKien-item">
					<div class="col-sm-3">
						<img class="tinTucSuKien-image" src="<c:url value="${tenMC.getHinhAnhMoTa()}"/>" alt="">
					</div>
					<div class="tinTucSuKien-content col-sm-9">
						<a href="<c:url value="./MinhChung.jsp?maMC=${tenMC.getMaMC()}"/>"><strong>${tenMC.getTenMC()}</strong></a>
					</div>
				</div>
				</c:forEach> 
			<%}%>
			
</body>
      <!--==========================     
    Footer
  ============================-->
	<%@ include file = "Footer.jsp" %>
  <!-- #footer -->
    
</body>
</html>