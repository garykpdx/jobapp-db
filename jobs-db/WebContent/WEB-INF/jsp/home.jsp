<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

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
	border-top: 2px solid #A04040;
	border-left: 2px solid #A04040;
	border-right: 2px solid #A04040;
	width: 100%;
}

th {
	font-family: sans-serif;
	color: blue;
	text-align: center;
	border-bottom: 2px solid;
}

td.entry {
	border-bottom: 2px solid;
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
	<h1 class="title">List Applications</h1>

	<table class="jobs">
		<tr>
			<th>Title</th>
			<th>Job Number</th>
			<th>Applied Date</th>
			<th>Status</th>
			<th>Company</th>
			<th>Location</th>
		</tr>
		
		<c:forEach var="row" items="${jobApps}">
		<tr>
			<td class="entry">${row.title}</td>
			<td class="entry">${row.jobNumber}</td>
			<td class="entry"><fmt:formatDate pattern="dd/MM/yy" value="${row.appliedDate}" /></td>
			<td class="entry">${row.status}</td>
			<td class="entry">${row.company}</td>
			<td class="entry">${row.location}</td>
		</tr>
		</c:forEach>
	</table>

	<p>
		<a href="newapp">Add Application</a>
	</p>

	<div class="footer">Gary Krug</div>

</body>
</html>