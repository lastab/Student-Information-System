<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Update Teacher Info</title>
</head>
<body>
<%@include file="header.jsp"%>
		<form method="get" action="SaveEditedTeacherInfo.jsp">
		<table border="0">
			<tr>
				<td>Teacher_Id:</td>
				<td><input type="text" name="t_id"></td>
			</tr>
			<tr>
				<td>Teacher Name:</td>
			</tr>
			<tr>
				<td>First Name:</td>
				<td><input type="text" name="fname"> Middle Name: <input
					type="text" name="mname"> Last Name: <input type="text"
					name="lname">
				</td>
			</tr>
			<tr>
				<td>Gender:</td>
				<td><input type="radio" value="Male" name="gender">Male
					<input type="radio" value="Female" name="gender">Female<br></td>
			</tr>

			<tr>
				<td>Address:</td>
				<td><input type="text" name="address"></td>
			</tr>
			<tr>
				<td>Phone No:</td>
				<td><input type="text" name="phone"></td>
			</tr>
			<tr>
				<td>Email Id:</td>
				<td><input type="text" name="email"><br></td>
			</tr>
			<tr>
				<td>Password:</td>
				<td><input type="password" name="password"><br></td>
			</tr>
			<tr>
				<td><input type="submit" value="Update"></td>
			</tr>
		</table>
	</form>
<%


%>
	<%@include file="footer.jsp"%>
</body>
</html>