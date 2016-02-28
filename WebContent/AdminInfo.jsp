<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@include file="header.jsp" %>
<form method="post" action="AdminAddInfo.jsp">
ADD:<br>
<input type="submit" value="ADMIN DATA">
</form>
<form method="post" action="UserAddinfo.jsp">
	<input type="submit" value="USER DATA"><br>
</form><br>
<form method="post" action="AdminEditInfo.jsp">
EDIT:<br>
<input type="submit" value="ADMIN DATA">
</form>
<form method="post" action="UserEditinfo.jsp">
	<input type="submit" value="USER DATA"><br>
</form><br>
<form method="post">
	<input type="submit" value="DELETE"><br>
	<input type="submit" value="RETRIEVE"><br>
</form>
<%@include file="footer.jsp" %>
</body>
</html>