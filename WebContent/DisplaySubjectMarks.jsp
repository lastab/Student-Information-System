<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="com.demo.db.*,com.demo.std.*,java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>



<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Display Subject Marks</title>
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
<div class="menu">
				<ul>
					
					 <li ><a href="AddMarks.jsp">Add Marks</a></li>
					 <li  > <a href="UpdateMarks.jsp">Update Marks</a></li>
					 <li><a href="Logout.jsp">Logout</a></li>					 
				</ul>
				<div class="clear"></div>
		</div>



<%}
DbMarks dbMrk=new DbMarks();
DbSubject dbsub=new DbSubject();
int sub_id=0;
if (request.getParameter("subject_id")!=null)	
	sub_id=Integer.parseInt(request.getParameter("subject_id"));

List<Marks> lstMrk = dbMrk.getASubjectMark(sub_id);
Subject sub=new Subject();
sub=dbsub.GetASubject(sub_id);
out.println("Subject Id:"+sub.getSubjectId()+"<br>");
out.println("Subject Name:"+sub.getSubjectName()+"<br>");
out.println("Subject Credit Hour:"+sub.getCreditHour()+"<br>");
%>
<table border="2" style="color:black;background-color:white;">
<tr><th>Roll NO</th><th>Student Name</th><th>Assignment</th><th>Term Marks</th><th>Attendance</th><th> SGPA</th></tr>
<%
for(Marks mrk1:lstMrk){
%>
<tr><td><%=mrk1.getRollNo() %></td>
<td><%=mrk1.getStudent_Name()%></td>
<td><%=mrk1.getAssignment()%></td>
<td><%=mrk1.getTermMarks() %></td>
<td><%=mrk1.getAttendance() %></td>
<td><%=(mrk1.getAssignment()+mrk1.getAttendance()+mrk1.getTermMarks())/100*4+"" %></td>

</tr>
<%
}
%>
</table>

<%@include file="footer.jsp"%>
</body>

</html>