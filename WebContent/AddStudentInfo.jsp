<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="java.sql.*,com.demo.std.*,com.demo.db.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add Student Info</title>
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
					
					 <li  class="active"><a href="AddStudentInfo.jsp">Add Student</a></li>
					 <li> <a href="AddSubjectInfo.jsp">Add Subject</a></li>
					 <li ><a href="AddTeacherInfo.jsp">Add Teacher</a></li>
					 <li> <a href="AddBill.jsp">Add Bill</a></li>
					 <li><a href="DisplayStudentInfo.jsp">Display Student</a></li>
					 <li> <a href="DisplaySubject.jsp">Display Subject</a></li>
					 <li> <a href="AddStudentSubject.jsp">Assign subject</a></li>
					 <li><a href="Logout.jsp">Logout</a></li>				 
				</ul>
				<div class="clear"></div>
		</div>

	<form name=""  method="post" action="AddStudentInfo.jsp">
		<table border="0">
		<tr>
				<td>Student RollNo:</td>
				<td><input type="text" name="RollNo" required></td>
			</tr>
			<tr>
				<td>Student Name:</td>
			</tr>
			<tr>
				<td>First Name:</td>
				<td><input type="text" name="fname">
				Middle Name:
				<input type="text" name="mname">
				Last Name:
				<input type="text" name="lname">
				</td>
			</tr>
			<tr>
				<td>Gender:</td>
				<td><input type="radio" value="Male" name="gender">Male 
				<input type="radio" value="Female" name="gender">Female<br></td>
			</tr>
<tr>
				<td>Date Of Birth:</td>
				<td><select name="year">
						<option value="year">Year</option>
						<option value="1988">1988</option>
						<option value="1989">1989</option>
						<option value="1990">1990</option>
						<option value="1991">1991</option>
						<option value="1992">1992</option>
						<option value="1993">1993</option>
						<option value="1994">1994</option>
						<option value="1995">1995</option>
						<option value="1996">1996</option>
						<option value="1997">1997</option>
						<option value="1998">1998</option>
						<option value="1999">1999</option>
						<option value="2000">2000</option>
						<option value="2001">2001</option>
						<option value="2002">2002</option>
						<option value="2003">2003</option>
						<option value="2004">2004</option>
						<option value="2005">2005</option>
						<option value="2006">2006</option>
						<option value="2007">2007</option>
						<Option value="2008">2008</Option>
				</select> <select name="month">
						<option value="month">Month</option>
						<Option value="Jan">January</Option>
						<Option value="Feb">February</Option>
						<Option value="Mar">March</Option>
						<Option value="Apr">April</Option>
						<Option value="May">May</Option>
						<Option value="Jun">June</Option>
						<Option value="Jul">July</Option>
						<Option value="Aug">August</Option>
						<Option value="Sep">September</Option>
						<Option value="Oct">October</Option>
						<Option value="Nov">November</Option>
						<option value="Dec">December</option>
				</select> <select name="day">
						<option value="day">Day</option>
						<option value="1">1</option>
						<option value="2">2</option>
						<option value="3">3</option>
						<option value="4">4</option>
						<option value="5">5</option>
						<option value="6">6</option>
						<option value="7">7</option>
						<option value="8">8</option>
						<option value="9">9</option>
						<option value="10">10</option>
						<option value="11">11</option>
						<option value="12">12</option>
						<option value="13">13</option>
						<option value="14">14</option>
						<option value="15">15</option>
						<option value="16">16</option>
						<option value="17">17</option>
						<option value="18">18</option>
						<option value="19">19</option>
						<option value="20">20</option>
						<Option value="21">21</Option>
						<Option value="22">22</Option>
						<Option value="23">23</Option>
						<Option value="24">24</Option>
						<Option value="25">25</Option>
						<Option value="26">26</Option>
						<Option value="27">27</Option>
						<Option value="28">28</Option>
						<Option value="29">29</Option>
						<Option value="30">30</Option>
						<Option value="31">31</Option>
				</select></td>

			</tr>
			
			<tr>
				<td>Address:</td>
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
				<td><input type="text" name="email"></td>
			</tr>
			<tr>
				<td>Password:</td>
				<td><input type="password" name="password"></td>
			</tr>

			<tr>
				<td>Degree Program:</td>

				<td><select name="level">
						<Option value="Bache">Level</Option>
						<Option value="Bachelor in Engineering">Bachelor in Engineering</Option>
						<option value="Master in Engineering">Master in Engineering</option>
				</select> <select name="program">
						<Option value="prog">Program</Option>
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
			<td>Import Image:</td>
			<td><input type="file" name="importimage"></td>
			</tr>
				<tr>
				<td><input type="submit" value="ADD"></td>
			</tr>
		</table>
		</form>
<%
Student std=new Student();
String roll=request.getParameter("RollNo");
if (roll!="")
{
	try
	{
	std.setRollNo(Integer.parseInt(roll));
	}
	catch(Exception e)
	{
		e.printStackTrace();
	}
}
String fname=request.getParameter("fname");
std.setFname(fname);
String mname=request.getParameter("mname");
std.setMname(mname);
String lname=request.getParameter("lname");
std.setLname(lname);
String gender=request.getParameter("gender");
std.setGender(gender);
String day=request.getParameter("day");
std.setDay(day);
String month=request.getParameter("month");
std.setMonth(month);
String year=request.getParameter("year");
std.setYear(year);
String address=request.getParameter("address");
std.setAddress(address);
String phone=request.getParameter("phone");
std.setPhone(phone);
String program=request.getParameter("program");
std.setProgram(program);
String level =request.getParameter("level");
std.setLevel(level);
String email=request.getParameter("email");
std.setEmail(email);
String password=request.getParameter("password");
std.setPassword(password);
StudentDao dao=new StudentDao();
dao.AddStudentInfo(std);

%>
 
	<%@include file="footer.jsp"%>
</body>
</html>