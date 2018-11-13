<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Get Deposit Details</title>
<style type="text/css">
h1 {
	color: red;
}

body {
	background-color: skyblue;
}
</style>
</head>
<body>
	<form:form action="Deposit" method="post" modelAttribute="account">
		<div align="center">
			<h1>Enter Deposit Details</h1>
			<table>
			<tr>
					<td>Account Number:</td>
					<td><form:input path="accountNo" size="25" /></td>
					<td><form:errors path="accountNo" cssClass="error" /></td>
				</tr>
				<tr>
					<td>Deposit Amount:</td>
					<td><form:input path="accountBalance" size="25" /></td>
					<td><form:errors path="accountBalance" cssClass="error" /></td>
				</tr>
				<tr>
					<td></td>
					<td><button type="submit">Proceed</button></td>
				</tr>
			</table>
		</div>
	</form:form>
	<div align="center">
		<a href="/home">Return to home page</a>
	</div>
</body>
</html>