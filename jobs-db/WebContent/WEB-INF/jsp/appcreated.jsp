<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Application Created</title>

<link href="${pageContext.request.contextPath}/resources/css/main.css" rel="stylesheet" type="text/css" />

</head>
<body>

	<div class="wrapper">
		<div class="pageheader">
			<h1 class="title">Application Created</h1>
		</div>

		<div class="menu">
			<a href="newapp">Add Application</a> <br /> <a href="admin">Administration</a> <br />
		</div>

		<div class="main">

			<div class="">
				<p>Creation was successful!</p>
				<p>
					Return to <a href="${pageContext.request.contextPath}/">List Applications</a>
				</p>
			</div>

			<div class="clear"></div>

			<div class="footer">Gary Krug</div>
		</div>
</body>
</html>