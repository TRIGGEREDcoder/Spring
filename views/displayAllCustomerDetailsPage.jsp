<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>All Customer Details</title>
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
		<h1>All Customers Details</h1>
		<table border=1px>
			<tr>
				<th colspan=5>Customers Details</th>
			</tr>
			<tr>
				<th>Customer Id</th>
				<th>Customer Name</th>
				<th>Email Id</th>
				<th>Address</th>
				<th>Pan Card</th>
			</tr>
			<c:forEach var="customer" items="${customers}">
				<tr>
					<td><c:out value="${customer.customerId}" /></td>
					<td><c:out value="${customer.customerName}" /></td>
					<td><c:out value="${customer.emailId}" /></td>
					<td><c:out value="${customer.address}" /></td>
					<td><c:out value="${customer.pancard}" /></td>
				</tr>
			</c:forEach>
		</table>
	</div>
</body>
</html>