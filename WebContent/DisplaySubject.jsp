<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="com.demo.db.*,com.demo.std.*,java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>


<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Display Subject</title>
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
					 <li> <a href="AddSubjectInfo.jsp">Add Subject</a></li>
					 <li ><a href="AddTeacherInfo.jsp">Add Teacher</a></li>
					 <li> <a href="AddBill.jsp">Add Bill</a></li>
					 <li><a href="DisplayStudentInfo.jsp">Display Student</a></li>
					 <li   class="active"> <a href="DisplaySubject.jsp">Display Subject</a></li>
					 <li> <a href="AddStudentSubject.jsp">Assign subject</a></li>
					 
				</ul>
				<div class="clear"></div>
		</div>


<%
    if ((session.getAttribute("userid") == null) || (session.getAttribute("userid") == "")) {
%>
You are not logged in<br/>
<%response.sendRedirect("index.jsp");%>

<%} else {
%>
<h1><b>Welcome <%=session.getAttribute("userid")%></b></h1>

<%
    }
%>
<%
DbSubject dbsub=new DbSubject();
List<Subject> subList=dbsub.ShowSubjectView();
String msg=request.getParameter("message");
if(null!=msg){
	out.println(msg);
	}
%>
<table border="1" style="color:blue;background-color:gray;">
<tr><th>Subject Id</th><th>Subject Name</th><th>Subject Credit</th><th colspan="3">Action</th></tr>
<%
for(Subject sub:subList){
%>
<tr>
<td><%=sub.getSubjectId()%></td>
<td><%=sub.getSubjectName()%></td>
<td><%=sub.getCreditHour() %></td>

<td><a href="UpdateSubjectInfo.jsp?sub_id=<%out.print(sub.getSubjectId());%>">Update</a>
</td><td><a href="DeleteSubject.jsp?SubjectId=<%out.print(sub.getSubjectId()); %>">Delete</a></td>
</tr>
<%
}
%>
</table>
<%@include file="footer.jsp"%>
</body>


</html>