<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="com.demo.db.*,com.demo.std.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>


<link href='http://fonts.googleapis.com/css?family=Abel' rel='stylesheet' type='text/css'>
<link rel="stylesheet" type="text/css" href="css/style.css">
<link rel="stylesheet" type="text/css" href="css/structure.css">
<script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>



<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@include file="header.jsp"%>
<%
Bill bill=new Bill();
String roll=(request.getParameter("rollNo"));
if (roll!="" || roll!=null)
	try{
		bill.setRoll(Integer.parseInt(roll));
		DbBill dbbill=new DbBill();
		dbbill.DeleteBill(bill);
out.print("The Data has been deleted.....");
	}
catch(Exception e){
	e.printStackTrace();
	}
	%>
	<%@include file="footer.jsp"%>
</body>
</html>