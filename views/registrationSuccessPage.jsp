<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//Dth HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dth">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Registration Success</title>
<style type="text/css">
h1 {
	color: red;
}
h3 {
	color: green;
}
body {
	background-color: skyblue;
}
</style>
</head>
<body>
	<div align="center">
		<h1>Welcome ${customer.customerName}</h1>
		<h3>Registration Successful</h3>
		<table border="1">
		<tr><th>Customer Id:</th><th>${customer.customerId}</th></tr>
		<tr><th>Login Password</th><th>${customer.user.loginPassword}</th></tr>
		<tr><th>Transaction Password</th><th>${customer.user.transactionPassword}</th></tr>
		<tr><th>Account Number</th><th>${customer.accounts[0].accountNo}</th></tr>
		</table>		
	</div>
</body>
<footer>
	<div align="center">
		<a href="home">Return to home page</a>
	</div>
</footer>
</html>