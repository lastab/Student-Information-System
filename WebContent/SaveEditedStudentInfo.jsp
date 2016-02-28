<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*,com.demo.std.*,com.demo.db.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>


<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@include file="header.jsp"%>
<%
Student std= new Student();
StudentDao dao=new StudentDao();
//std.setRollNo(Integer.parseInt
		String roll= request.getParameter("RollNo");
//std.setRollNo(
		try{
		std.setRollNo( Integer.parseInt(roll));
			}
			catch(Exception e){
				e.printStackTrace();
			}
 std.setFname(request.getParameter("fname"));
 std.setMname(request.getParameter("mname"));
 std.setLname(request.getParameter("lname"));
 std.setName(request.getParameter("fname")+" "+request.getParameter("mname")+" "+request.getParameter("lname"));
 std.setGender(request.getParameter("gender"));
 std.setDob(request.getParameter("day")+"-"+request.getParameter("month")+"-"+request.getParameter("year"));
 std.setAddress(request.getParameter("address"));
 std.setPhone(request.getParameter("phone"));
 std.setEmail(request.getParameter("email"));
 std.setPassword(request.getParameter("password"));
 std.setLevel(request.getParameter("level"));
 std.setProgram(request.getParameter("program"));
 //StudentDao dao=new StudentDao();
 dao.UpdateInfo(std);
 out.println(std.getPhone()+" "+std.getFname()+" "+std.getFname()+" ");
 out.println("The Data has been modified successfully!!!!");
%>
<%@include file="header.jsp"%>
</body>

</html>