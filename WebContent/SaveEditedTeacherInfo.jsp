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
Teacher tchr=new Teacher();
DbTeacher dbtchr=new DbTeacher();
String teh_id=request.getParameter("t_id");
		try{
			tchr.setT_id(Integer.parseInt(teh_id));
			}
			catch(Exception e){
				e.printStackTrace();
			}
 tchr.setfName(request.getParameter("fname"));
 tchr.setmName(request.getParameter("mname"));
 tchr.setlName(request.getParameter("lname"));
 tchr.setName(request.getParameter("fname")+" "+request.getParameter("mname")+" "+request.getParameter("lname"));
 tchr.setGender(request.getParameter("gender"));
 tchr.setAddress(request.getParameter("address"));
 tchr.setPhone(request.getParameter("phone"));
 tchr.setEmail(request.getParameter("email"));
 tchr.setPassword(request.getParameter("password"));
 out.print("Your data has been update");
  dbtchr.UpdateTeacherInfo(tchr);
 %>
<%@include file="header.jsp"%>
</body>
</html>