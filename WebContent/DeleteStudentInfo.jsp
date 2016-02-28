<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="com.demo.db.*,com.demo.std.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>


<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Delete Student</title>
</head>
<body>
<%@include file="header.jsp"%>
<%
Student std=new Student();
String roll=(request.getParameter("RollNo"));
if (roll!="" || roll!=null)
	try{
std.setRollNo(Integer.parseInt(roll));
StudentDao dao=new StudentDao();
dao.DeleteInfo(std);
out.print("The data has been deleted.");
	}
catch(Exception e){ e.printStackTrace();}
%>
<%@include file="footer.jsp"%>
</body>
</html>