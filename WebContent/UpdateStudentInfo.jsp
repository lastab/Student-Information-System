<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="java.sql.*,com.demo.std.*,com.demo.db.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Update Student info</title>
<link href='http://fonts.googleapis.com/css?family=Abel' rel='stylesheet' type='text/css'>
<link rel="stylesheet" type="text/css" href="css/style.css">
<link rel="stylesheet" type="text/css" href="css/structure.css">

    <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
</head>
<body>


<div class="wrap">
	<div class="wrapper">
		<div class="header">
			<div class="logo">
				<a href="index.jsp"><img src="images/logo.png" alt=""/></a>
		   </div>
		   <div class="grid-bot">
            	 <div class="cont-top">
            			
						
						<div class="clear"></div>
					</div>
					
					<div class="grid1-l-desc">
						<p>Email : support(at)education.com</p>
					</div>
					<div class="clear"></div>
			</div>
				<div class="clear"></div>
      	</div>	

	
	<%	
		int findRoll=0;
	
			if
			(request.getParameter("roll")!=null)
				findRoll=Integer.parseInt(request.getParameter("roll"));
		
		Student std1= new Student();
		StudentDao dao= new StudentDao();		
		std1=dao.getAStudent(findRoll);
				
		%>
	<form method="post" action="SaveEditedStudentInfo.jsp">
		<table border="0">
		
			<tr>
				<td>Student RollNo:</td>
				<td><input type="hidden" name="RollNo" value="<%out.print(std1.getRollNo());%>">
				<%out.print(std1.getRollNo());%></td>
			</tr>
			<tr>
				<td>Student Name:</td>
			</tr>
			<tr>
				<td>First Name:</td>
				<td><input type="text" name="fname" value="<%out.print(std1.getFname());%>">
				Middle Name:
				<input type="text" name="mname" value="<%out.print(std1.getMname());%>">
				Last Name:
				<input type="text" name="lname" value="<%out.print(std1.getLname());%>">
				</td>
			</tr>
			<tr>
				<td>Gender:</td>
				<td><input type="radio" value="Male" <%if(std1.getGender().equals("Male")) out.print("checked");%> name="gender">Male 
				<input type="radio" value="Female" <%if(std1.getGender().equals("Female")) out.print("checked"); %> name="gender">Female<br></td>
			</tr>
<tr>
				<td>Date Of Birth:</td>
				<td><select name="year" >
				<%
				int year;
					for(int i=0; i<=20; i++)
					{year=1988+i;
						out.print("<option value=\""+year+"\" ");
						if (std1.getYear().equals(""+year))
							out.print("selected");
						out.print(">"+year+"</option>");
					}
				%>
						
				</select> <select name="month">
				<option value="Month">Month</option>
						<Option value="Jan" 
						<%if (std1.getMonth().equals("Jan"))
							out.print("selected");%>>
								January</Option>
						<Option value="Feb"
						<%if (std1.getMonth().equals("Feb"))
							out.print("selected");%>>February</Option>
						<Option value="Mar"
						<%if (std1.getMonth().equals("Mar"))
							out.print("selected");%>>March</Option>
						<Option value="Apr"
						<%if (std1.getMonth().equals("Apr"))
							out.print("selected");%>>April</Option>
						<Option value="May"
						<%if (std1.getMonth().equals("May"))
							out.print("selected");%>>May</Option>
						<Option value="Jun"
						<%if (std1.getMonth().equals("Jun"))
							out.print("selected");%>>June</Option>
						<Option value="Jul"
						<%if (std1.getMonth().equals("Jul"))
							out.print("selected");%>>July</Option>
						<Option value="Aug"
						<%if (std1.getMonth().equals("Aug"))
							out.print("selected");%>>August</Option>
						<Option value="Sep"
						<%if (std1.getMonth().equals("Sep"))
							out.print("selected");%>>September</Option>
						<Option value="Oct"
						<%if (std1.getMonth().equals("Oct"))
							out.print("selected");%>>October</Option>
						<Option value="Nov"
						<%if (std1.getMonth().equals("Nov"))
							out.print("selected");%>>November</Option>
						<option value="Dec"
						<%if (std1.getMonth().equals("Dec"))
							out.print("selected");%>>December</option>
					</select> <select name="day">
						<option value="day">Day</option>
						<%
				int day;
					for(int i=1; i<=32; i++)
					{day=1+i;
						out.print("<option value=\""+day+"\" ");
						if (std1.getDay().equals(""+day))
							out.print("selected");
						out.print(">"+day+"</option>");
					}
				%>				</select></td>

			</tr>
			
			
			<tr>
				<td>Address:</td>
			</tr>
			<tr>
				<td>Address:</td>
				<td><input type="text" name="address" value="<%out.print(std1.getAddress());%>"></td>
			</tr>
			<tr>
				<td>Phone No:</td>
				<td><input type="text" name="phone" value="<%out.print(std1.getPhone());%>"></td>
			</tr>
			<tr>
				<td>Email Id:</td>
				<td><input type="text" name="email" value="<%out.print(std1.getEmail());%>"></td>
			</tr>
			<tr>
				<td>Password:</td>
				<td><input type="password" name="password" value="<%out.print(std1.getPassword());%>"></td>
			</tr>

			<tr>
				<td>Degree Program:</td>

				<td><select name="level">
						<Option value="Bachelor in Engineering">Bachelor in Engineering</Option>
						<option value="Master in Engineering">Master in Engineering</option>
				</select> <select name="program">
						<option value="civil"
						<%if (std1.getProgram().equals("civil"))
							out.print("selected");%>>Civil</option>
						<option value="electronic and communication"
						<%if (std1.getProgram().equals("electrical and communication"))
							out.print("selected");%>>Electronics and Communication</option>
						<option value="computer"
						<%if (std1.getProgram().equals("computer"))
							out.print("selected");%>>Computer</option>
						<option value="it">IT</option>
						<option value="mechanical"
						<%if (std1.getProgram().equals("mechanical"))
							out.print("selected");%>>Mechanical</option>
						<option value="elctrical"
						<%if (std1.getProgram().equals("elctrical"))
							out.print("selected");%>>Electrical</option>
						<option value="architecture"
						<%if (std1.getProgram().equals("architecture"))
							out.print("selected");%>>Architecture</option>
						<option value="aironautical"
						<%if (std1.getProgram().equals("aironautical"))
							out.print("selected");%>>Aeronautical</option>
						<option value="construction"
						<%if (std1.getProgram().equals("construction"))
							out.print("selected");%>>Construction</option>
				</select></td>
			</tr>
				<tr>
				<td><input type="submit" value="EDIT"></td>
			</tr>
		</table>

		</form>
	<%@include file="footer.jsp"%>
</body>

</html>