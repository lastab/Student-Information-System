<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="com.demo.db.*,com.demo.std.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>


<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add Student Subject</title>
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
					 <li> <a href="DisplaySubject.jsp">Display Subject</a></li>
					 <li class="active"> <a href="AddStudentSubject.jsp">Assign subject</a></li>
					<li><a href="Logout.jsp">Logout</a></li>	 
				</ul>
				<div class="clear"></div>
		</div>


<form method="get" action="AddStudentSubject.jsp">
<table>
<tr>
<td>Student Year:</td>
<td><input type="number" name="stdYear"></td>
</tr>
<tr>
<td>Subject Id:</td>
<td><input type="number" name="subId"></td>
</tr>
<tr>
<td>Teacher Id:</td>
<td><input type="number"  name="t_id"></td>
</tr>
<tr>
<td>Program:</td>
<td></select> <select name="program">
						
						<option value="Civil">Civil</option>
						<option value="Electronic And Communication">Electronics and Communication</option>
						<option value="Computer">Computer</option>
						<option value="IT">IT</option>
						<option value="Mechanical">Mechanical</option>
						<option value="Elctrical">Electrical</option>
						<option value="Architecture">Architecture</option>
						<option value="Aironautical">Aeronautical</option>
						<option value="Construction">Construction</option>
				</select></td>
</tr>
<tr>
<td><input type="submit" value="ADD"></td>
</tr>
</table>
</form>
<%
StudentSubject stdsub=new StudentSubject();
try{
String Std_yr=request.getParameter("stdYear");
int std_year=Integer.parseInt(Std_yr);
stdsub.setStudent_year(std_year);
String S_id=request.getParameter("subId");
int sub_id=Integer.parseInt(S_id);
stdsub.setSubject_id(sub_id);
String tchr_id=request.getParameter("t_id");
int teacher_id=Integer.parseInt(tchr_id);
stdsub.setTeacher_id(teacher_id);
String pgrm=request.getParameter("program");
stdsub.setProgram(pgrm);
DbStudentSubject dbstdsub=new DbStudentSubject();
dbstdsub.AddStudentSubject(stdsub);
}
catch(Exception e){
	e.printStackTrace();
}
//bill.setTotal_dues(ttl_dues);

// String b_id=request.getParameter("bill_id");
// String b_roll=request.getParameter("rollNo");
// out.print(b_id+b_roll);
// if (b_id!="" && b_roll!="")
// {
// 	try
// 	{
// 		bill.setBill_id(Integer.parseInt(b_id));
	
// 	}
// 	catch(Exception e)
// 	{
// 		e.printStackTrace();
// 	}
// }

// 	try
// 	{
// 		bill.setRoll(Integer.parseInt(b_roll));
// 	}catch(Exception e){
// 		e.printStackTrace();

// }
// String dl_date=request.getParameter("deadline");

// bill.setDeadline_date(dl_date);
// String ttl_amount=request.getParameter("tamunt");
// bill.setTotal_amount(ttl_amount);
// String ttl_dues=request.getParameter("tdues");
// bill.setTotal_dues(ttl_dues);
// String d_o_sem=request.getParameter("semdues");
// bill.setDues_on_this_sem(d_o_sem);
// String a_p_t_sem=request.getParameter("sempaid");
// bill.setAmount_paid_this_sem(a_p_t_sem);
// DbBill dbbill=new DbBill();
// dbbill.AddBillInfo(bill);

%>
	<%@include file="footer.jsp"%>
</body>
</html>