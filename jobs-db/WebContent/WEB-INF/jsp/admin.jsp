<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title><c:out value="${title }" /></title>
<link href="${pageContext.request.contextPath}/resources/css/main.css" rel="stylesheet" type="text/css" />

</head>
<body>
	<div class="wrapper">
		<div class="pageheader">
			<h1 class="title">List Applications</h1>
		</div>

		<div class="menu">
			<a href="/">List Applications</a> <br/>
			<a href="newapp">Add Application</a> <br/>
			Administration <br/>
			<a href="login">Login</a> <br/>
		</div>

		<div class="main"></div>

		<div class="clear"></div>

		<div class="footer">Gary Krug</div>
	</div>

</body>
</html>