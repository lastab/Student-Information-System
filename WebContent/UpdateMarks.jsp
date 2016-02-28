<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="com.demo.db.*,com.demo.std.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>



<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Update Marks</title>
</head>
<body>
<%@include file="header.jsp"%>
<%
    if ((session.getAttribute("userid") == null )||( session.getAttribute("user_type") == "student"  ) || (session.getAttribute("userid") == "")) {
%>
You are not logged in<br/>
<%response.sendRedirect("LoginStudent.jsp");%>

<%} else {
%>
<h1><b>Welcome <%=session.getAttribute("userid")%></b></h1>

<%
    }
%>



<%
    if ((session.getAttribute("userid") == null )||( session.getAttribute("user_type") == "student"  ) || (session.getAttribute("userid") == "")) {
%>
You are not logged in<br/>
<%response.sendRedirect("LoginStudent.jsp");%>

<%} else {
%>


<div class="menu">
				<ul>
					
					 <li><a href="AddMarks.jsp">Add Marks</a></li>
					 <li  class="active"> <a href="UpdateMarks.jsp">Update Marks</a></li>
						 <li><a href="Logout.jsp">Logout</a></li>				 
				</ul>
				<div class="clear"></div>
		</div>

<form method="get" action="SaveEditedMarksInfo.jsp">
<table>
<tr>
<td>Student RollNo:</td>
<td><input type="text" name="RollNo"></td>
</tr>
<tr>
<td>Subject Id:</td>
<td><input type="text" name="SubjectId"></td>
</tr>
<tr>
<td>Attendance:</td>
<td><input type="text" name="Attendance"></td>
</tr>
<tr>
<td>Assignment Marks:</td>
<td><input type="text" name="Assignment"></td>
</tr>
<tr>
<td>Term Marks:</td>
<td><input type="text" name="TermMarks"></td>
</tr>
<tr>
<td><input type="submit" value="Update"></td>
</tr>
</table>
</form>
<%} %>
<%@include file="footer.jsp"%>
</body>
</html>