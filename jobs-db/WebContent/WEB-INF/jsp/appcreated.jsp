<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title><c:out value="${title }" /></title>

<style>
h1.title {
	font-family: sans-serif;
	text-align: center;
}

table.jobs {
	border: 2px solid #A04040;
	width: 600px;
}

table.formdata {
	margin: 10px;
}

td.formentry {
	border-left: 1px solid blue;
	border-bottom: 1px solid blue;
}

th {
	font-family: sans-serif;
	text-align: center;
}

div.footer {
	height: 100%;
	font-size: x-small;
	text-align: right;
	vertical-align: bottom;
}
</style>

</head>
<body>
	<h1 class="title">Add New Application</h1>
	<div class="mainarea">
		<p>Creation was successful!</p>
		<p>Return to <a href="${pageContext.request.contextPath}/">view applications</a></p>
	</div>
	<div class="footer">Gary Krug</div>

</body>
</html>