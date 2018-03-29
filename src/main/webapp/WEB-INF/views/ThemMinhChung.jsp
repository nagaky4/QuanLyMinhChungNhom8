<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<title>Quan Ly Minh Chung</title>
	<script type="text/javascript" src="<c:url  value="./js/jquery-2.0.2.min.js"/>"></script>
	<link href="<c:url  value="./css/admin-style.css"/>" rel="stylesheet" type="text/css"/>	
	
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
					<h3 class="form-title">Thêm minh chứng</h3>
					<div class="container">
					  <form action="/themMC" method="post">
					  
					  	<div class="form-group">
					      <label class="control-label col-sm-2" for="email">Tên minh chứng</label>
					      <div class="col-sm-10">
					        <input type="text" class="form-control" id="email" name="MaMC" placeholder="Mã Minh Chứng" >
					      </div>
					    </div>
					    
					    <div class="form-group">
					      <label class="control-label col-sm-2" for="email">Tên minh chứng</label>
					      <div class="col-sm-10">
					        <input type="text" class="form-control" id="email" name="TenMC" placeholder="Nhập vào tên" >
					      </div>
					    </div>
					    
					    <div class="form-group" >
					      <label class="control-label col-sm-2" for="pwd">Nội dung:</label>
					      <div class="col-sm-10">          
					        <input type="text" class="form-control" id="pwd" name="NoiDung" placeholder="Nhập vào nội dung">
					      </div>
					    </div>
					    <div class="form-group" style="padding-top:15px;padding-bottom:15px;">
					    	<label class="control-label col-sm-2" for="pwd">Cấp minh chứng:</label>    
							<select
									name="MaCapMC">
								<c:forEach items="${lstcmc}" var="tenCap" >
								<option value="${tenCap.getMaCap()}">${tenCap.getTenCap()}</option>
								</c:forEach>
          					</select>	
					    </div>
					    <div class="form-group" style="padding-top:15px;padding-bottom:15px;">
					    	<label class="control-label col-sm-2" for="pwd">Loại minh chứng:</label>    
							<select
									name="MaLoaiMC">
									<option value="LMC-001">Báo cáo</option>
									<option value="LMC-002">Thống kê</option>
									<option value="LMC-003">Tin tức-Sự kiện</option>
									<option value="LMC-004">Thông báo</option>
							</select>	
					    </div>
					    <br/>
					    <div class="form-group">
					    	<label class="control-label col-sm-2" for="pwd">Hình ảnh mô tả: </label>     
					        <input type="file"  name="HinhAnhMoTa" value="Url hình ảnh ...">      			
						</div>
					    	
					    <div class="form-group">
					    	<label class="control-label col-sm-2" for="pwd">Hình ảnh minh chứng: </label>     
					        <input type="file"  name="HinhAnhMC" value="Url hình ảnh ...">      			
						</div>
									    
					    <div class="form-group">        
					      <div class="col-sm-offset-2 col-sm-10">
					        <button type="submit" class="btn btn-default">Thêm</button>
					      </div>
					    </div>
					  </form>
					</div>
				</div><!--end .list-wrap-->


			</div><!--end .main-content-->
		</div><!--end .main-content-wrap-->
	</div><!--end #admin-content-->
</div><!--end #container-->

<div id="footer">
	<h1>Design by: Nhom 8 Quý Trúc Hùng<a href=""></a></h1>
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