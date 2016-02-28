<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="com.demo.std.*,com.demo.db.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<title>Insert title here</title>
</head>
<body>
<%@include file="header.jsp"%>
<%
Bill bill=new Bill();
String b_id=request.getParameter("bill_id");
String b_roll=request.getParameter("rollNo");
out.print(b_id+b_roll);
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
bill.setDeadline_date(request.getParameter("deadline"));
bill.setTotal_amount(request.getParameter("tamunt"));
bill.setTotal_dues(request.getParameter("tdues"));
bill.setDues_on_this_sem(request.getParameter("semdues"));
bill.setAmount_paid_this_sem(request.getParameter("sempaid"));
DbBill dbbill=new DbBill();
dbbill.UpdateBillInfo(bill);
%>
<%@include file="header.jsp"%>
</body>

</html>