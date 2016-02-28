<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="com.demo.db.*,com.demo.std.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Update subject Info</title>
</head>
<body>
<%@include file="header.jsp"%>

<%
int Subject_id=0;

if
(request.getParameter("sub_id")!=null)
	Subject_id=Integer.parseInt(request.getParameter("sub_id"));

Subject sub=new Subject();
DbSubject dbsub=new DbSubject();
sub=dbsub.GetASubject(Subject_id);

%>
<form method="post" action="SaveEditedSubjectInfo.jsp">
<table>
<tr>
<td>Subject Id:</td>
<td><input type="hidden" name="SubjectId" value="<%out.print(sub.getSubjectId());%>" >
<%out.print(sub.getSubjectId());%></td>
</tr>
<tr>
<td>Subject Name:</td>
<td><input type="text" name="SubjectName" value="<%out.print(sub.getSubjectName());%>"></td>
</tr>
<tr>
<td>Subject Credit Hour:</td>
<td><input type="text" name="CreditHour" value="<%out.print(sub.getCreditHour());%>" ></td>
<tr>
<td><input type="submit" value="UPDATE"></td>
</tr>
</table>
</form>
<%@include file="footer.jsp"%>
</body>
</html>