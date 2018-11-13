<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Get FundTransfer Details</title>
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
	<form action="FundTransfer" method="post">
		<div align="center">
			<h1>Enter FundTransfer Details</h1>
			<table>
				<tr>
					<th>From Account Number</th>
					<td><input type="number" placeholder="Enter Account Number"
						name="accountNoFrom" required /></td>
				</tr>
				<tr>
					<th>To Account Number</th>
					<td><input type="number" placeholder="Enter Account Number"
						name="accountNoTo" required /></td>
				</tr>
				<tr>
					<th>FundTransfer Amount</th>
					<td><input type="number" placeholder="Enter FundTransfer Amount"
						name="transferAmount"  required /></td>
				</tr>
				<tr>
					<td></td>
					<td><button type="submit">Proceed</button></td>
				</tr>
			</table>
		</div>
	</form>
	<div align="center">
		<a href="home">Return to home page</a>
	</div>
</body>
</html>