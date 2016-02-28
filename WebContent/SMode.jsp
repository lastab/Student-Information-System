<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link href="css/Style.css" rel="stylesheet" />
</head>
<body>
	<center>
		<h1>STUDENT INFORMATION SYSTEM</h1>
	</center>
	SELECT LOGIN TYPE:
	<form method="post" action="UserLogin.jsp">
		<table>
			<tr>
				<td><input type="submit" value="User"></td>
			</tr>
		</table>
	</form>
	<form method="post" action="AdminLogin.jsp">
		<table>
			<tr>
				<td><input type="submit" value="Admin"></td>
			</tr>
		</table>
	</form>
	<br>
	<!-- <form method="post" action=" UserLogin.jsp">
SELECT LOGIN TYPE:
<br>Student:<a href="UserLogin.jsp">Student</a><br>
    Admin:<a href="AdminLogin.jsp">Admin</a><br>		
</form> -->
	<br> SELECT REGISTER TYPE:
	<form method="post" action="AdminAddInfo.jsp">
		<table>
			<tr>
				<td><input type="submit" value="Admin Register"></td>
			</tr>
		</table>
	</form>
	<form method="post" action="UserAddinfo.jsp">
		<table>
			<tr>
				<td><input type="submit" value="User Register"></td>
			</tr>
		</table>
	</form>
<form method="post" action="">
<table>
<tr>
<td>SELECT USER TYPE TO LOGIN</td>
</tr>
<tr>
<td><select name="login">
<option value="USER">USER</option>
<option value="ADMIN">ADMIN</option>
</td>
</select>
</tr>
</tr>
<td><input type="submit" value="LOGIN"></td>
</tr>
</table>
</form>
	<%@include file="footer.jsp"%>
</body>
</html>