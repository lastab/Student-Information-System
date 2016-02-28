<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="com.demo.db.*,com.demo.std.*,java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

    <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
    <title>Display Student Info</title>
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
					 <li class="active"><a href="DisplayStudentInfo.jsp">Display Student</a></li>
					 <li> <a href="DisplaySubject.jsp">Display Subject</a></li>
					 <li> <a href="AddStudentSubject.jsp">Assign subject</a></li>
					 <li><a href="Logout.jsp">Logout</a></li>
				</ul>
				<div class="clear"></div>
		</div>


<table>


<%
StudentDao dao=new StudentDao();
List<Student> stdList=dao.getAllStudent();
//String msg=request.getParameter("message");
//if(null!=msg){	out.println(msg);	}
%>




<table border="8" style="color:black;background-color:white;">
<tr><th>RollNo</th>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<th>Name</th>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<th>Gender</th>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<th colspan="3">Action</th></tr>
<%
for(Student std:stdList){
%>
<tr><td><%=std.getRollNo() %></td>
<td><%=std.getName()%></td>
<td><%=std.getGender() %></td>
<td><a href="UpdateStudentInfo.jsp?roll=<%out.print(std.getRollNo()); %>">edit</a></td>
<td><a href="DeleteStudentInfo.jsp?RollNo=<%out.print(std.getRollNo()); %>">delete</a></td>
<td><a href="DisplayStudentMarks.jsp?RollNo=<%out.print(std.getRollNo()); %>">Show Mark</a></td></tr>
<%
}
%>
</table>
</table>




 <%@include file="footer.jsp"%>
</body>

</div>
</html>