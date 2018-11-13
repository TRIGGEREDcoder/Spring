<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>All Transactions Details</title>
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
		<h1>All Transactions Details</h1>
		<table border=1px>
			<tr>
				<th colspan=4>Transactions Details</th>
			</tr>
			<tr>
				<th>Account Number</th>
				<th>Transaction Id</th>
				<th>Amount</th>
				<th>Transaction Type</th>
			</tr>
			<c:forEach var="transaction" items="${transactions}">
				<tr>
					<td><c:out value="${transaction.account.accountNo}" /></td>
					<td><c:out value="${transaction.transactionId}" /></td>
					<td><c:out value="${transaction.amount}" /></td>
					<td><c:out value="${transaction.transactionType}" /></td>
				</tr>
			</c:forEach>
		</table>
	</div>
</body>
</html>