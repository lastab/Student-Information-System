<%@page import="com.demo.db.StudentDao"%>
<%@page import="com.demo.std.Student"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>




<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Display for Student</title>

<body>
<%@include file="header.jsp"%>
<%
    if ((session.getAttribute("userid") == null) || (session.getAttribute("userid") == "")) {
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
					 <li ><a href="DisplayForStudent.jsp">Student info</a></li>
					 <li ><a href="DisplayStudentSubject.jsp?Rollno=<%=session.getAttribute("roll")%>">student subject</a></li>
					 <li><a href="DisplayStudentMarks.jsp?RollNo=<%=session.getAttribute("roll")%>">student marks</a></li>
					 <li> <a href="DisplayBillForStudent.jsp?Rollno=<%=session.getAttribute("roll")%>">Student bills</a></li>
					 <li><a href="Logout.jsp">Logout</a></li>
				</ul>
				<div class="clear"></div>
		</div>
                                         
                                         
 <%                                        
int roll=0;
if (request.getParameter("RollNo")!=null)	
	roll=Integer.parseInt(request.getParameter("RollNo"));
                                         
Student std1= new Student();
StudentDao dao= new StudentDao();		
std1=dao.getAStudent(roll);
out.println("Name:"+std1.getName()+"<br>");
out.println("Gender:"+std1.getGender()+"<br>");
out.println("Address:"+std1.getAddress()+"<br>");
out.println("Dob:"+std1.getDob()+"<br>");
out.println("Email:"+std1.getEmail()+"<br>");
out.println("Phone:"+std1.getPhone()+"<br>");
out.println("Levle:"+std1.getLevel()+"<br>");
out.println("Program:"+std1.getProgram()+"<br>");

%>
<a href="Logout.jsp">Logout</a><br>
<%@include file="footer.jsp"%>
</body>
</html>