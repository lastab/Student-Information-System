<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="com.demo.db.*, com.demo.std.*,java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Display Student Marks</title>




</head>
<body>

<%@include file="header.jsp"%>

<%
  //  if ((session.getAttribute("userid") == null) || (session.getAttribute("userid") == "")) {
%>
You are not logged in<br/>
<%//response.sendRedirect("LoginStudent.jsp");%>

<%} //else
    {
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



<table>
<%
DbMarks mrk=new DbMarks();
int roll=0;
if (request.getParameter("RollNo")!=null)	
	roll=Integer.parseInt(request.getParameter("RollNo"));


//get selected student's marks
List<Marks> lstMark=mrk.getStudentMark(roll);
Subject sub=new Subject();
DbSubject dbsub= new DbSubject();

////////sub=dbsub.GetASubject(sub_id);
//get selected  student's details 
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
	</table>

</form>
<div class="clear">
<form>
<table border="2" >

<tr><th>SubjectID</th><th>Subject Name</th><th>Assignment</th><th>Term Marks</th><th>Attendance</th><th>Sgpa</th></tr>
<%
for(Marks mrk1:lstMark){
%>
<tr>
<td><%=mrk1.getSujectId()%></td>
<td><%=mrk1.getSubject_Name() %></td>
<td><%=mrk1.getAssignment()%></td>
<td><%=mrk1.getTermMarks() %></td>
<td><%=mrk1.getAttendance() %></td>
<td><%=(mrk1.getAssignment()+mrk1.getAttendance()+mrk1.getTermMarks())/100*4+"" %></td>



</tr>
<%
}
%>
</table>
</form>
</div>
<div class="clear">

</div>
<%@include file="footer.jsp"%>
</body>

</html>