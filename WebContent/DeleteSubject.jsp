<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="com.demo.db.*,com.demo.std.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>



<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Delete Subjects</title>
</head>
<body>
<%@include file="header.jsp"%>
<%
Subject sub=new Subject();
String Subid=(request.getParameter("SubjectId"));
if (Subid!="" || Subid!=null)
	try{
sub.setSubjectId(Integer.parseInt(Subid));
DbSubject dbsub=new DbSubject();
dbsub.DeleteSubject(sub);
out.print("The Data has been deleted.....");
	}
catch(Exception e){
	e.printStackTrace();
	}
	%>
	<%@include file="footer.jsp"%>
</body>
</html>