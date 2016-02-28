<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="com.demo.db.*,com.demo.std.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@include file="header.jsp"%>
<%
String email=request.getParameter("email");
String password=request.getParameter("password");
String type=request.getParameter("type");

Student std=new Student();
StudentDao dao=new StudentDao();
std.setEmail(email);
std.setPassword(password);

if (type=="Student"){
int loginroll=dao.LoginChecker(std);
if(loginroll!=0)
{
	std.setRollNo(loginroll);
	out.print("WelCome To Your Personal Interface. so have a look......!!");
	out.print ("<A href=\"http://localhost:8077/SIS/DisplayStudentMarks.jsp?roll="+ loginroll+"\">a</a>");
}
else
{
	out.print("Sorry!!!The emailid and password you entered is incorrect.please try again.");
}

}
else if (type=="Admin")
{
	DbTeacher daot= new DbTeacher();
	//int loginroll	=dao.LoginChecker(std);
	if(daot.LoginChecker(std))
	{
		//std.setRollNo(loginroll);
		out.print("WelCome Teacher. so have a look......!!");
		//out.print ("<A href=\"http://localhost:8077/SIS/DisplayStudentMarks.jsp?roll="+ loginroll+"\">a</a>");
	}
	else
	{
		out.print("Sorry!!!The emailid and password you entered is incorrect.please try again.");
	}

}
else{
	DbTeacher daot= new DbTeacher();
	//int loginroll	=dao.LoginChecker(std);
	if(daot.LoginCheckerAdmin(std))
	{
		//std.setRollNo(loginroll);
		out.print("WelCome Admin. so have a look......!!");
		//out.print ("<A href=\"http://localhost:8077/SIS/DisplayStudentMarks.jsp?roll="+ loginroll+"\">a</a>");
	}
	else
	{
		out.print("Sorry!!!The emailid and password you entered is incorrect.please try again.");
	}

}
%>
</body>
</html>