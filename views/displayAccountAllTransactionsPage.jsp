<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Transaction Details</title>
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
	<h1>Transaction Details</h1>
		<table border="1">
			<tr>	
				<th>Transaction Id</th>
				<th>Amount</th>
				<th>Transaction Type</th>
			</tr>
			<c:forEach var="transaction" items="${listTransaction}">
				<tr>
					<td>${transaction.transactionId}</td>
					<td>${transaction.amount}</td>
					<td>${transaction.transactionType}</td>
				</tr>
			</c:forEach>
		</table>
	</div>
</body>
</html>