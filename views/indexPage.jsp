<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Capgemini</title>
<style type="text/css">
h1 {
	color: red;
}
h4 {
	color:green;
}
body {
	background-color: skyblue;
}
</style>
</head>
<body>
	<div align="center">
		<table cellpadding=5 cellspacing=5>
			<tr>
				<font><h1>Welcome to Capgemini Banking System</h1></font>
			</tr>
			<tr>
				<td><a href="register"><input type="button"
						value="Open Account"></a></td>
				<td><a href=depositAmount><input type="button"
						value="Deposit"></a></td>
				<td><a href="withdrawAmount"><input type="button"
						value="Withdraw"></a></td>
				<td><a href="fundTransfer"><input type="button"
						value="Fund Transfer"></a></td>
				<td><a href="customerDetails"><input type="button"
						value="Customer Details"></a></td>
				<td><a href="accountAllTransactions"><input type="button"
						value="Account Statement"></a>
				</td>
				<td><a href="allAccountDetails"><input type="button"
						value="All Account Details"></a>
				</td>
				<td><a href="allCustomerDetails"><input type="button"
						value="All Customer Details"></a>
				</td>
				<td><a href="allTransactionDetails"><input type="button"
						value="All Transaction Details"></a>
				</td>
				
			</tr>
			
		</table>
	</div>
	<div align="center"><h4>${message}</h4></div>
</body>
</html>