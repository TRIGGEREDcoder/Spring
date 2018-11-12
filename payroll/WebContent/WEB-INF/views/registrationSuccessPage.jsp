<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Registration Success</title>
</head>
<body>
	
	
	<div align="left">
		<font color="brown" size="4"><h3 align="center">Welcome ${associate.firstName} ${associate.lastName} your Registration has been done Successful</h3>
	<h3>AssociateId:-${associate.associateID}</h3>
		</font>
		<p>
	<p>
		<div align="left">
		<font color="teal" size="5">Details of your registration are give below:</font>
		<br>
		<h3>${associate}</h3>
	</div>
</body>
</html>