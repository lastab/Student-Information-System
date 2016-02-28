<%@page import="java.util.List"%>
<%@page import="com.demo.db.DbBill"%>
<%@page import="com.demo.std.Bill"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>



<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Display Bill For Student</title>
</head>
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
                                         
DbBill dbBill= new DbBill();
List<Bill> lstBill=dbBill.DisplayBill(roll);
%>

<table border="2" >

<tr><th>Deadline Date</th><th>Total Amount</th><th>Total Dues</th><th>Dues on this sem</th><th>Amount Paid on this sem</th></tr>
<%
for(Bill bill1:lstBill){
%>
<tr>
<td><%=bill1.getDeadline_date()%></td>
<td><%=bill1.getTotal_amount()%>
<td><%=bill1.getTotal_dues()%></td>
<td><%=bill1.getDues_on_this_sem() %></td>
<td><%=bill1.getAmount_paid_this_sem() %></td>




</tr>
<%
}
%>
</table>
<%
    }
%>
<%@include file="footer.jsp"%>
</body>
</html>