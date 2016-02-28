<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*,com.demo.std.*,com.demo.db.*"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>


<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>title here</title>
</head>
<body>
<%@include file="header.jsp"%>
<div class="menu">
				<ul>
					
					 <li><a href="AddMarks.jsp">Add Marks</a></li>
					 <li  > <a href="UpdateMarks.jsp">Update Marks</a></li>
					 <li><a href="Logout.jsp">Logout</a></li>
					 
				</ul>
				<div class="clear"></div>
		</div>


<%
try{
Marks Mrk=new Marks();
String rlln=request.getParameter("RollNo");
int rln=Integer.parseInt(rlln);
Mrk.setRollNo(rln);
String subid=request.getParameter("SubjectId");
int subjid=Integer.parseInt(subid);

Mrk.setSujectId(subjid);
String atndns=request.getParameter("Attendance");
Mrk.setAttendance(Float.parseFloat(atndns));

String assignment=request.getParameter("Assignment");
Mrk.setAssignment(Float.parseFloat(assignment));
String trmmarks =request.getParameter("TermMarks");
Mrk.setTermMarks(Float.parseFloat(trmmarks));
Mrk.setGpa(request.getParameter("Gpa"));
DbMarks dbs=new DbMarks();
dbs.UpdateMarksInfo(Mrk);
out.println("The Data has been updated successfully!!!!");
}
catch(Exception e){
	e.printStackTrace();
}
%>
<%@include file="footer.jsp"%>
</body>



</html>