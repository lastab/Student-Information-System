<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>


<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Student information system</title>



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

<%
    }
%>

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
<%@include file="header.jsp"%>
<%
out.print("Here Change your Password.<br><br>");
%>
<table>
<tr>
<td>Old Password:</td>
<td><input type="password" name="oldpswrd"></td>
</tr>
<tr>
<td>New Password:</td>
<td><input type="password" name="newpswrd"></td>
</tr>
<tr>
<td>Confirm Password:</td>
<td><input type="password" name="confpswrd"></td>
</tr>
</table>
<%@include file="footer.jsp"%>
</body>
</html>