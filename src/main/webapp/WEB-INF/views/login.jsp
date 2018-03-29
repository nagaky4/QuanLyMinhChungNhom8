<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  	<meta content="width=device-width, initial-scale=1.0" name="viewport">
  	<meta content="" name="keywords">
  	<meta content="" name="description">
    <title></title>
<link href="<c:url  value="${pageContext.request.contextPath}/css/login.css" />"rel="stylesheet">
     <!-- <link rel="stylesheet" href="./css/login.css"> -->
</head>

<body>
    <div class="main">
        <div class="login-box">
        	<c:if test="${errorlogin !=null}">
        		<div class="info"> ${errorlogin } </div>
        	</c:if>
        	<c:if test="${errorlogin ==null}">
        		<div class="info">Login into your account!</div>           
        	</c:if>          
            <form action="/checklogin" method="post">
                <input type="text" name="user" class="inp" placeholder="username" required>
                <br>
                <input type="password" name="pass" class="inp" placeholder="********" required>
                <br>
                <input type="checkbox" name="rem" class="rem"><span>Remember me</span>
                <a href="#" class="f-pass">Forgot Password</a>
                <input type="submit" name="submit" value="Login" class="sub-btn">
            </form>
        </div>
    </div>
</body>
</html>