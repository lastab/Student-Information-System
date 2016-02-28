<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@include file="header.jsp"%>
	<form method="post" action="LoginCheck.jsp">
		<table border="0">
			<tr>
				<td>STUDENT LOGIN:</td>
			</tr>
			<tr>
				<td>UserId:</td>
				<td><input type="text" name="email" ></td>
			</tr>
			<tr>
				<td>Password:</td>
				<td><input type="password" name="password"></td>
			</tr>
			<tr>
			<td><a href="ChangePassword.jsp">Change Password?</a></td>
			</tr>
                        <tr>
                            <td>User Type:</td>
                            <td><select name="user_type">
                                    <option value="student">student</option>
                                    <option value="teacher">teacher</option>
                                    <option value="admin">admin</option>
                            </td>
                        </tr>
                        <tr><td></td>
				<td><input type="submit" value="Login"></td>
			</tr>
	</table>
	</form>
	<%@include file="footer.jsp"%>
</body>
</html>