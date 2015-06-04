<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Create New Job Application</title>
<link href="${pageContext.request.contextPath}/resources/css/main.css" rel="stylesheet" type="text/css" />
</head>
<body>
	<div class="wrapper">
		<div class="pageheader">
			<h1 class="title">Create New Application</h1>
		</div>

		<div class="menu">
			<a href="newapp">Add Application</a> <br /> <a href="admin">Administration</a> <br />
		</div>
		<div class="main">
			<sf:form commandName="jobApp" action='${pageContext.request.contextPath}/appcreated' method='POST'>

				<table class="formdata">
					<tr>
						<td class="formentry">Title</td>
						<td><sf:input path="title" type="text" width="100" maxlength="100" tabindex="1" /></td>
					</tr>
					<tr>
						<td class="formentry">Job Number</td>
						<td><sf:input name="jobNumber" path="jobNumber" type="text" width="30" maxlength="30" tabindex="2" /></td>
					</tr>
					<tr>
						<td class="formentry">Status</td>
						<td><sf:select path="status" tabindex="3">
								<option value="new">New</option>
								<option selected="selected" value="Applied">Applied</option>
								<option value="interviewed">Interviewed</option>
								<option value="closed">Closed</option>
								<option value="offered">Offered</option>
								<option value="unknown">Unknown</option>
							</sf:select></td>
					</tr>
					<tr>
						<td class="formentry">Applied Date</td>
						<td><sf:input path="appliedDate" type="date" tabindex="4" /></td>
					</tr>
					<tr>
						<td class="formentry">Company</td>
						<td><sf:input path="company" type="text" width="80" maxlength="80" tabindex="5" /></td>
					</tr>
					<tr>
						<td class="formentry">Location</td>
						<td><sf:input path="location" type="text" width="100" maxlength="100" tabindex="6" /></td>
					</tr>
				</table>

				<input class="control" type="submit" value="Submit App" />
			</sf:form>
		</div>

		<div class="clear"></div>

		<div class="footer">Gary Krug</div>
	</div>
</body>
</html>