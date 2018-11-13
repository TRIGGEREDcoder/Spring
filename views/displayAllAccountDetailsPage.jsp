<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>All Accounts Details</title>
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
	<div align="center">
		<h1>All Accounts Details</h1>
		<table border=1px>
			<tr>
				<th colspan=3>Account Details</th>
			</tr>
			<tr>
				<th>Account Number</th>
				<th>Account Type</th>
				<th>Account Balance</th>
			</tr>
			<c:forEach var="account" items="${accounts}">
				<tr>
					<td><c:out value="${account.accountNo}" /></td>
					<td><c:out value="${account.accountType}" /></td>
					<td><c:out value="${account.accountBalance}" /></td>
				</tr>
			</c:forEach>
		</table>
	</div>
</body>
</html>