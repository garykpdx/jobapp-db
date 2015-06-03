<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<title>Login Page</title>
<link href="${pageContext.request.contextPath}/resources/css/main.css" rel="stylesheet" type="text/css" />
</head>

<body onload='document.f.username.focus();'>

	<h1 class="title">Login</h1>
	<h2 class="title">Login to view your job applications</h2>

	<form name='f' action='${pageContext.request.contextPath}/login' method='POST'>
		<table class="login">
			<tr>
				<td align="right">User:</td>
				<td><input type='text' name='username' value=''></td>
			</tr>
			<tr>
				<td align="right">Password:</td>
				<td><input type='password' name='password' /></td>
			</tr>
			<tr>
				<td colspan='2'><input name="submit" type="submit" value="Login" /></td>
			</tr>
			
			<c:if test="${param.fail != null}">
				<tr>
					<td colspan="2" class="fail">Login Failed</td>
				</tr>
			</c:if>
			
		</table>
		<input name="${_csrf.parameterName}" type="hidden" value="${_csrf.token}" />
	</form>

</body>
</html>