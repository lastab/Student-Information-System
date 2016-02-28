<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="com.demo.db.*,com.demo.std.*,java.util.*,java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@ page import="java.io.*" %>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login</title>


</head>
<body>
<%@include file="header.jsp"%>

<%
	Student std= new Student();
	StudentDao dao= new StudentDao();
    String userid = request.getParameter("email");   
    String pwd = request.getParameter("password");
    String type = request.getParameter("Type");
    std.setEmail(userid);
    std.setPassword(pwd);
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:8077/sis","root","");
    Statement st = con.createStatement();
    ResultSet rs;
    //out.print ("select * from "+type+" where email='" + userid + "' and password='" + pwd + "'");
    try{
    rs = st.executeQuery("select * from "+type+" where email='" + userid + "' and password='" + pwd + "'");
  	
    if (rs.next()) {
    	session.setAttribute("userid", userid);
    	
    	
    	
        //session.setAttribute("userid", userid);
        out.println("welcome " + userid);
        out.println("<a href='logout.jsp'>Log out</a>");
        if (type.equals("student")){
        	int roll=dao.get_Roll(std);
        	session.setAttribute("roll",roll+"");
        	
        	session.setAttribute("user_type","student");
        	response.sendRedirect("DisplayForStudent.jsp");
    		}
        else if (type.equals("teacher")){
        	session.setAttribute("user_type","teacher");
            response.sendRedirect("AddMarks.jsp");
    	}
        else if (type.equals("admin")){
        	session.setAttribute("user_type","admin");
            response.sendRedirect("AddStudentInfo.jsp");
        }
    } 
    }catch (Exception e){}
    // else 
      //{
    %>
<div class="wrap">
	<div class="wrapper">
		<div class="header">
		   
					
					<div class="clear"></div>
			</div>
				<div class="clear"></div>
      	</div>	
		<div class="preview">
          <img src="images/image.jpg" alt=""/>
         </div>
	
	
	
	<div><form method="post" action="#">
		<table border="0">
			<tr>
				<td> LOGIN:</td>
			</tr>
			<tr>
				<td>UserId:</td>
				<td><input type="text" name="email"></td>
			</tr>
			<tr>
				<td>Password:</td>
				<td><input type="password" name="password"></td>
			</tr>
			<tr>
			<td>Login Type:</td>
			<td><select name="Type">
						<option value="student">Student</option>
						<option value="teacher">Teacher</option>
						<option value="admin">Admin</option>
						</select></td>
						
			</tr>
			
			<tr>
				<td><input type="submit" value="Login"></td>
			</tr>
	</table>
	</form>
	</div>
</body>


<div class="footer-bottom">
	  <div class="copy">
			<p>&copy; 2015 All rights Reserved </p>
	  </div>
  </div>
</html>