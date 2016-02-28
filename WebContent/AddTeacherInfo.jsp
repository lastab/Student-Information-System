<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="com.demo.db.*,com.demo.std.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>



<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add Teacher Info</title>
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
					 <li class="active"><a href="AddTeacherInfo.jsp">Add Teacher</a></li>
					 <li> <a href="AddBill.jsp">Add Bill</a></li>
					 <li><a href="DisplayStudentInfo.jsp">Display Student</a></li>
					 <li> <a href="DisplaySubject.jsp">Display Subject</a></li>
					 <li> <a href="AddStudentSubject.jsp">Assign subject</a></li>
					<li><a href="Logout.jsp">Logout</a></li>					 
				</ul>
				<div class="clear"></div>
		</div>
	
	
	<form method="post" action="AddTeacherInfo.jsp">
		<table border="0">
			<tr>
				<td>Teacher_Id:</td>
				<td><input type="text" name="t_id"></td>
			</tr>
			<tr>
				<td>Teacher Name:</td>
			</tr>
			<tr>
				<td>First Name:</td>
				<td><input type="text" name="fname"> Middle Name: <input
					type="text" name="mname"> Last Name: <input type="text"
					name="lname">
				</td>
			</tr>
			<tr>
				<td>Gender:</td>
				<td><input type="radio" value="Male" name="gender">Male
					<input type="radio" value="Female" name="gender">Female<br></td>
			</tr>

			<tr>
				<td>Address:</td>
				<td><input type="text" name="address"></td>
			</tr>
			<tr>
				<td>Phone No:</td>
				<td><input type="text" name="phone"></td>
			</tr>
			<tr>
				<td>Email Id:</td>
				<td><input type="text" name="email"><br></td>
			</tr>
			<tr>
				<td>Password:</td>
				<td><input type="password" name="password"><br></td>
			</tr>
			<tr>
				<td><input type="submit" value="ADD"></td>
			</tr>
		</table>
	</form>

	<%
	Teacher tchr=new Teacher();
	String teh_id=request.getParameter("t_id");
	if(teh_id!="")
	{
		try
		{
		tchr.setT_id(Integer.parseInt(teh_id));
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
	}
	String fname=request.getParameter("fname");
	tchr.setfName(fname);
	String mname=request.getParameter("mname");
	tchr.setmName(mname);
	String lname=request.getParameter("lname");
	tchr.setlName(lname);
	String gender=request.getParameter("gender");
	tchr.setGender(gender);
	String address=request.getParameter("address");
	tchr.setAddress(address);
	String phone=request.getParameter("phone");
	tchr.setPhone(phone);
	String email=request.getParameter("email");
	tchr.setEmail(email);
	String password=request.getParameter("password");
	tchr.setPassword(password);
	DbTeacher dbtchr=new DbTeacher();
	dbtchr.AddTeacherInfo(tchr);
	%>





	<%@include file="footer.jsp"%>
</body>
</html>