<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<title>Login</title>
<link href="${pageContext.request.contextPath}/resources/css/main.css" rel="stylesheet" type="text/css" />
</head>

<body onload='document.f.username.focus();'>

	<div class="wrapper">
		<div class="pageheader">
			<h1 class="title">Login</h1>
		</div>

		<div class="menu">
			<a href="${pageContext.request.contextPath}/">List Applications</a> <br/>
			<a href="${pageContext.request.contextPath}/newapp">Add Application</a> <br/>
			<a href="${pageContext.request.contextPath}/admin">Administration</a> <br/>
			<a href="${pageContext.request.contextPath}/login">Login</a> <br />
		</div>

		<div class="main">
			<h1>Loggedout</h1>
		</div>

		<div class="clear"></div>

		<div class="footer">Gary Krug</div>
	</div>
</body>
</html>