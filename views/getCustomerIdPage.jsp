<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
h1 {
	color: red;
}
body {
	background-color: skyblue;
}
.error {
	color: red;
	font-weight: bold;
}
</style>
</head>
<body>
<form action="displayCustomer" method="post">
		<div align="center">
			<h1>Enter Details</h1>
			<table>
				<tr>
					<th>Customer Id</th>
					<td><input type="number" placeholder="Enter Customer Id"
						name="customerId" required /></td>
				</tr>
				<tr>
				<td></td>
				<td><input type="submit" value="Proceed"/></td>
				</tr>
			</table>
		</div>
	</form>
	<div align="center">
		<a href="home">Return to home page</a>
	</div>
</body>
</html>