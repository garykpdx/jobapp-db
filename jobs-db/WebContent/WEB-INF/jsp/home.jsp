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
				<a href="newapp">Add Application</a> <br/>
				<a href="admin">Administration</a> <br/>
		</div>

		<div class="main">
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
						<td class="formentry"><fmt:formatDate pattern="MM/dd/yy" value="${row.appliedDate}" /></td>
						<td class="formentry">${row.status}</td>
						<td class="formentry">${row.company}</td>
						<td class="formentry">${row.location}</td>
					</tr>
				</c:forEach>
			</table>
		</div>

		<div class="clear"></div>

		<div class="footer">Gary Krug</div>
	</div>

</body>
</html>