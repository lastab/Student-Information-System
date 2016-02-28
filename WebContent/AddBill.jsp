<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="com.demo.db.*,com.demo.std.*,java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add Bill</title>
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
					 <li class="active"> <a href="AddBill.jsp">Add Bill</a></li>
					 <li><a href="DisplayStudentInfo.jsp">Display Student</a></li>
					 <li> <a href="DisplaySubject.jsp">Display Subject</a></li>
					 <li> <a href="AddStudentSubject.jsp">Assign subject</a></li>
					 <li><a href="Logout.jsp">Logout</a></li>
					 
				</ul>
				<div class="clear"></div>
		</div>



<form method="get" action="AddBill.jsp">
<table>
<tr>
<td>Bill Id:</td>
<td><input type="number" min="1" max="1000"  name="bill_id" ></td>
</tr>
<tr>
<td>Roll No:</td>
<td><input type="number" min="110000" max="999999" name="rollNo"></td>
</tr>
<tr>
<td>DeadLine_date:</td>
<td><input type="text" name="deadline"></td>
</tr>
<tr>
<td>Total Amount:</td>
<td><input type="number" min="900000" max="1000000" name="tamunt"></td>
</tr>
<tr>
<td>Total Dues:</td>
<td><input type="text" name="tdues"></td>
</tr>
<tr>
<td>Amount To be cleared on this semester:</td>
<td><input type="text" name="semdues"></td>
</tr>
<tr>
<td>Amount paid on this semester:</td>
<td><input type="text" name="sempaid"></td>
</tr>

<tr>
<td><input type="submit" value="ADD"></td>
</tr>
</table>
</form>

<%
Bill bill=new Bill();
String b_id=request.getParameter("bill_id");
String b_roll=request.getParameter("rollNo");
if (b_id!="" && b_roll!="")
{
	try
	{
		bill.setBill_id(Integer.parseInt(b_id));
	
	}
	catch(Exception e)
	{
		e.printStackTrace();
	}
}

	try
	{
		bill.setRoll(Integer.parseInt(b_roll));
	}catch(Exception e){
		e.printStackTrace();

}
String dl_date=request.getParameter("deadline");

bill.setDeadline_date(dl_date);
String ttl_amount=request.getParameter("tamunt");
bill.setTotal_amount(ttl_amount);
String ttl_dues=request.getParameter("tdues");
bill.setTotal_dues(ttl_dues);
String d_o_sem=request.getParameter("semdues");
bill.setDues_on_this_sem(d_o_sem);
String a_p_t_sem=request.getParameter("sempaid");
bill.setAmount_paid_this_sem(a_p_t_sem);
DbBill dbbill=new DbBill();
dbbill.AddBillInfo(bill);

%>
<%@include file="footer.jsp"%>
</body>
</html>