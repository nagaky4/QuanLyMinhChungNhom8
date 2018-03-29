<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<title>Quan Ly Minh Chung</title>
	<script type="text/javascript" src="./js/jquery-2.0.2.min.js"></script>
	<link href="./css/admin-style.css" rel="stylesheet" type="text/css"/>	
	<link href="./css/mystyle.css"  rel="stylesheet" type="text/css" />
</head>
<body>


<div id="header">
	<div id="logo">
		<a href="#">Quản lý minh chứng</a>
	</div>
	<div id="user-bar">		
		<div id="user-option">
			<a id="user-info" href="<c:url  value="/logout"/>">
				<span style="color: red;"> ${sessionScope.user} || Đăng Xuất</span>
			</a>
		</div>	
		<div id="user-option">
			<a id="user-info" href="<c:url  value="/"/>">
				<span>Trang Chủ</span>
			</a>
		</div>	
	</div>
</div><!--end #header-->

<div id="container">
	<div id="sidebar-menu">
		<ul id="menu">
			<li><a class="super-menu" href="#">Minh Chứng</a>
				<ul>
					<li><a href="/qlminhchung"><em>1</em>Danh sách minh chứng</a></li>
					<li><a href="<c:url value="/themminhchung"/>"><em>2</em>Thêm mới</a></li>					
				</ul>
			</li>
		</ul>
	</div><!--end #sidebar-menu-->

	<div id="admin-content">
		<h2 class="admin-title">Quản lý</h2>

		<div class="main-content-wrap">
			<div class="main-content">

				<div class="list-wrap">
					<h3 class="form-title">Danh sách minh chứng</h3>
					<form>					
					<table class="list-table">
						<tr>
							<th>ID minh chứng</th>
							<th>Tên minh chứng</th>
							<th>Mã Loại MC</th>
							<th>Mã cấp minh chứng</th>
							<th></th>
							<th></th>
						</tr>																		
						<c:forEach var="mc" items="${lstmc }">
						<tr> 
							<td>${mc.getMaMC() }</td> 
							<td>${mc.getTenMC() }</td> 																		
							<td>${mc.getMaLoaiMC() }</td>
							<td>${mc.getMaCapMC() }</td> 	
							<td><a href="/xoa?ID=${mc.getMaMC()}" class="newclick" >Xóa</a></td>														
							<td><a href="/suaminhchung?ID=${mc.getMaMC()}">Sửa</a></td>								
						</tr>
						
						</c:forEach> 						
					</table>
					</form>					
					
				</div><!--end .list-wrap-->
				
				
			</div><!--end .main-content-->
		</div><!--end .main-content-wrap-->
	</div><!--end #admin-content-->
</div><!--end #container-->

<div id="footer">
	<h1>Design by: Nhóm 8 Quý Trúc Hùng<a href=""></a></h1>
</div><!--end #footer-->

<script type="text/javascript">
	$(document).ready(function(){
		$(".super-menu").click(function(){
			$(this).parent().find("ul").slideToggle(100);
			$(this).toggleClass("menu-item-opened");
			return false;
		});	
		
	});	
		
</script>

</body>
</html>