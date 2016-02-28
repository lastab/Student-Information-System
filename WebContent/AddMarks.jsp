<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="com.demo.db.*,com.demo.std.*,java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add Marks</title>
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


<div class="menu">
				<ul>
					
					 <li class="active"><a href="AddMarks.jsp">Add Marks</a></li>
					 <li  > <a href="UpdateMarks.jsp">Update Marks</a></li>
					 <li><a href="Logout.jsp">Logout</a></li>
					 
				</ul>
				<div class="clear"></div>
		</div>




<form method="post" action="AddMarks.jsp">
<table>
<tr>
<td>Student Name:</td>
<td><select name ="RollNo">
<%
	StudentDao sdao=new StudentDao();
	List<Student> stdList=sdao.getAllStudent();
	
	for(Student std:stdList){
		out.print("<option value=\"" + std.getRollNo() +"\"> "+std.getName()+"</option>\n");
		
		
	}
	
%>


</select>  
</td>
</tr>
<tr>
<td>Subject Name:</td>
<td><select name ="SubjectId">
<%
	DbSubject subdao=new DbSubject();
	List<Subject> sudList=subdao.ShowSubjectView();
	
	for(Subject subs:sudList){
		out.print("<option value=\"" + subs.getSubjectId() +"\"> "+subs.getSubjectName()+"</option>\n");
}
%>
</select>  
</td>
</tr>
<tr>
<td>Attendance:</td>
<td><input type="number" min="0" max="10" name="Attendance"></td>
</tr>
<tr>
<td>Assignment Marks:</td>
<td><input type="number" min="0" max="10" name="Assignment"></td>
</tr>
<tr>
<td>Term Marks:</td>
<td><input type="number" min="0" max="80" name="TermMarks"></td>
</tr>
<!-- <tr> -->
<!-- <td>CGPA/GPA/SGPA</td> -->
<!-- <td><select name="Gpa"> -->
<!-- <option value="A">A</option> -->
<!-- <!-- <option value="A-">A-</option> -->
<!-- <option value="B+">B+</option>--> 
<!-- <option value="B">B</option> -->
<!-- <!-- <option value="B-">B-</option> -->
<!-- <option value="C+">C+</option> --> 
<!-- <option value="C">C</option> -->
<!-- <!-- <option value="C-">C-</option> -->
<!-- <option value="D+">D+</option> --> 
<!-- <option value="D">D</option> -->
<!-- <!-- <option value="D-">D-</option> --> 
<!-- </select><td> -->
<!-- </tr> -->
<tr>
<td><input type="submit" value="ADDs"></td>
</tr>

</table>
</form>




<form method="post" action="DisplaySubjectMarks.jsp">
Enter subject id to view marks :<input type="number" name="subject_id">
<input type="submit" value="Display">
</form>

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
dbs.AddMarks(Mrk);
}
catch(Exception e){
	e.printStackTrace();
}
%>





<%@include file="footer.jsp"%>
</body>
</html>