<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="com.demo.db.*,com.demo.std.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>


<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@include file="header.jsp"%>
<%
Subject sub= new Subject();
String subid=request.getParameter("SubjectId");
if(subid!= null )
{
	try{
		sub.setSubjectId(Integer.parseInt(subid));
	}
	catch(Exception e)
	{
		e.printStackTrace();
		}
}
System.out.println("ID"+subid);

sub.setSubjectName(request.getParameter("SubjectName"));
System.out.println("name"+request.getParameter("SubjectName"));
sub.setCreditHour(request.getParameter("CreditHour"));
System.out.println("hour"+request.getParameter("CreditHour"));
DbSubject dbsub=new DbSubject();
dbsub.UpdateSubjectInfo(sub);
out.print("The Data has been Changed");
%>
<%@include file="header.jsp"%>
</body>
</html>