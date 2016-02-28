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
<form method="get" action="SaveEditedBill.jsp">
<table>
<tr>
<tr>
<td>Bill Id:</td>
<td><input type="text" name="bill_id"></td>
</tr>
<tr>
<td>Roll No:</td>
<td><input type="text" name="rollNo"></td>
</tr>
<tr>
<td>DeadLine_date:</td>
<td><input type="text" name="deadline"></td>
</tr>
<tr>
<td>Total Amount:</td>
<td><input type="text" name="tamunt"></td>
</tr>
<tr>
<td>Total Dues:</td>
<td><input type="text" name="tdues"></td>
</tr>
<tr>
<td>Amount To be cleared on this semester:</td>
<td><input type="text" name="semdues"></td>
</tr>
<tr>
<td>Amount paid on this semester:</td>
<td><input type="text" name="sempaid"></td>
</tr>

<tr>
<td><input type="submit" value="Update"></td>
</tr>
</table>
</form>
<%@include file="header.jsp"%>
</body>
</html>