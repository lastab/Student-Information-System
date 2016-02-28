\<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="java.util.*,java.sql.*,com.demo.std.*,com.demo.db.*"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
	DbMarks mrk= new DbMarks();
	List<Marks> lstMark=mrk.getStudentMark(1);

		int findRoll=0;
		
			findRoll=Integer.parseInt(request.getParameter("roll"));
		
		
		
		
		Student std1= new Student();
		StudentDao dao= new StudentDao();
		out.print(findRoll);
		std1=dao.getAStudent(findRoll);
		out.print (std1.getName());
		
				
		%>
</body>
</html>