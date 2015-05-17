<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title><c:out value="${title }" /></title>
<link href="${pageContext.request.contextPath}/resources/css/main.css" rel="stylesheet" type="text/css" />

</head>
<body>
	<h1 class="title">List Applications</h1>

	<table class="jobs">
		<tr>
			<th class="formentry">Title</th>
			<th class="formentry">Job Number</th>
			<th class="formentry">Applied Date</th>
			<th class="formentry">Status</th>
			<th class="formentry">Company</th>
			<th class="formentry">Location</th>
		</tr>
		
		<c:forEach var="row" items="${jobApps}">
		<tr>
			<td name="leftalign" class="formentry">${row.title}</td>
			<td class="formentry">${row.jobNumber}</td>
			<td class="formentry"><fmt:formatDate pattern="dd/MM/yy" value="${row.appliedDate}" /></td>
			<td class="formentry">${row.status}</td>
			<td class="formentry">${row.company}</td>
			<td class="formentry">${row.location}</td>
		</tr>
		</c:forEach>
	</table>

	<p>
		<a href="newapp">Add Application</a>
	</p>

	<div class="footer">Gary Krug</div>

</body>
</html>