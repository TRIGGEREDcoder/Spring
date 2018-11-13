<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Registration</title>
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
<body align=center>
	<div align=center>
		<h1>Enter Customer Details</h1>
		<table>
			<form:form action="registerCustomer" method="post" modelAttribute="customer" >
				<tr>
					<td>Customer Name:</td>
					<td><form:input path="customerName" size="25" /></td>
					<td><form:errors path="customerName" cssClass="error" /></td>
				</tr>
				<tr>
					<td>Address:</td>
					<td><form:input path="address" size="25" /></td>
					<td><form:errors path="address" cssClass="error" /></td>
				</tr>
				<tr>
					<td>Email Id:</td>
					<td><form:input path="emailId" size="25" /></td>
					<td><form:errors path="emailId" cssClass="error" /></td>
				</tr>
				<tr>
					<td>Pan Card:</td>
					<td><form:input path="pancard" size="25" /></td>
					<td><form:errors path="pancard" cssClass="error" /></td>
				</tr>
				<tr>
					<td>Opening Balance:</td>
					<td><form:input path="accounts[0].accountBalance" size="25" /></td>
					<td><form:errors path="accounts[0].accountBalance" cssClass="error" /></td>
				</tr>
				<tr>
					<td>Account Type:</td>
					<td><form:input path="accounts[0].accountType" size="25" /></td>
					<td><form:errors path="accounts[0].accountType" cssClass="error" /></td>
				</tr>
				<tr>
					<td>Security Question</td>
					<td><select>
							<option value="What is your first pet name?"
								name="securityQuestion">What is your first pet name?</option>
							<option value="Which website you rarely visit?"
								name="securityQuestion">Which website you rarely visit?</option>
					</select></td>
				</tr>
				<tr>
					<td>Security Answer:</td>
					<td><form:input path="user.secretQuestion" size="25" /></td>
					<td><form:errors path="user.secretQuestion" cssClass="error" /></td>
				</tr>
				<tr>
					<td>
						<input type="Submit" name="submit" value="Submit">
					</td>
					<td></td>
				</tr>
			</form:form>
		</table>
	</div>
</body>
<footer>
	<div align="center">
		<a href="home">Return to home page</a>
	</div>
</footer>
</html>