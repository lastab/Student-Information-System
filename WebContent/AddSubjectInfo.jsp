<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="com.demo.db.*,com.demo.std.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>




<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add subject Info</title>
</head>
<body>
<%@include file="header.jsp"%>
<%
    if ((session.getAttribute("userid") == null )||( session.getAttribute("user_type") == "student"  )||( session.getAttribute("user_type") == "teacher"  ) || (session.getAttribute("userid") == "")) {
%>
You are not logged in<br/>
<%response.sendRedirect("LoginStudent.jsp");%>

<%} else {
%>
<h1><b>Welcome <%=session.getAttribute("userid")%></b></h1>

<%
    }
%>





<div class="menu">
				<ul>
					
					 <li><a href="AddStudentInfo.jsp">Add Student</a></li>
					 <li class="active"> <a href="AddSubjectInfo.jsp">Add Subject</a></li>
					 <li><a href="AddTeacherInfo.jsp">Add Teacher</a></li>
					 <li> <a href="AddBill.jsp">Add Bill</a></li>
					 <li><a href="DisplayStudentInfo.jsp">Display Student</a></li>
					 <li> <a href="DisplaySubject.jsp">Display Subject</a></li>
					 <li> <a href="AddStudentSubject.jsp">Assign subject</a></li>
					 <li><a href="Logout.jsp">Logout</a></li>
				</ul>
				<div class="clear"></div>
		</div>

<form method="post" action="AddSubjectInfo.jsp">
<table>
<tr>
<td>Subject Id:</td>
<td><input type="text" name="SubjectId"></td>
</tr>
<tr>
<td>Subject Name:</td>
<td><input type="text" name="SubjectName"></td>
</tr>
<tr>
<td>Subject Credit Hour:</td>
<td><input type="text" name="CreditHour"></td>
<tr>
<td><input type="submit" value="SUBMIT"></td>
</tr>
</table>
</form>
	<%
Subject sub=new Subject();
String subid=request.getParameter("SubjectId");
if(subid!="")
{
	try
	{
		sub.setSubjectId(Integer.parseInt(subid));
	}
	catch(Exception e)
	{
		e.printStackTrace();
	}
}

String subName=request.getParameter("SubjectName");
sub.setSubjectName(subName);
//String crdtHrs=request.getParameter("CreditHour");
//sub.setCreditHour(Integer.parseInt(crdtHrs));
sub.setCreditHour(request.getParameter("CreditHour"));
DbSubject dbs=new DbSubject();
dbs.AddSubjectInfo(sub);
%>
<%@include file="footer.jsp"%>
</body>
</html>