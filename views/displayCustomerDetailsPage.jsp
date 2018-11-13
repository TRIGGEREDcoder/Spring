<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="com.cg.banking.beans.Customer"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Associate Details</title>
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
		<h1>Customer details for customerId:
			${customer.customerId}</h1>
		<table border=1px>
			<tr>
				<th  colspan=2>Customer Details</th>
			</tr>
			<tr>
				<td>Customer Name</td>
				<td>${customer.customerName}</td>
			</tr>
			<tr>
				<td>Email Id</td>
				<td>${customer.emailId}</td>
			</tr>
			<tr>
				<td>Address</td>
				<td>${customer.address}</td>
			</tr>
			<tr>
				<td>Pan Card</td>
				<td>${customer.pancard}</td>
			</tr>
			<tr>
				<th  colspan=2>Account Details</th>
			</tr>
			<tr>
				<td>Account Number</td>
				<td>${accounts[0].accountNo}</td>
			</tr>
			<tr>
				<td>Account Type</td>
				<td>${accounts[1].accountType}</td>
			</tr>
			<tr>
				<td>Account Balance</td>
				<td>${accounts[0].accountBalance}</td>
			</tr>			
			<tr>
				<th  colspan=2>User Details</th>
			</tr>
			<tr>
				<td>Login Password</td>
				<td>${customer.user.loginPassword}</td>
			</tr>
			<tr>
				<td>Security Answer</td>
				<td>${customer.user.secretQuestion}</td>
			</tr>
			<tr>
				<td>Transaction Password</td>
				<td>${customer.user.transactionPassword}</td>
			</tr>	
		</table>
	</div>
</body>
</html>