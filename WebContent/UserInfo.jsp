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
<form>
<input type="submit" value="Bill"><br>
<input type="submit" value="retrieve data"><br>
<input type="submit" value="scholarship"><br>
<input type="submit" value="performance"><br>
<input type="submit" value="General Information"><br>
</form><br>
<form method="post" action="Request.jsp">
Send Email:<br>
			<input type="text" name="request"><br>
			<input type="submit" value="send">
</form>
<%@include file="footer.jsp" %>
</body>
</html>