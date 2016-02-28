<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="com.demo.db.*,com.demo.std.*,java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>




<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Display Student Subject</title>
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


<div class="menu">
				<ul>
					 <li ><a href="DisplayForStudent.jsp">Student info</a></li>
					 <li ><a href="DisplayStudentSubject.jsp?Rollno=<%=session.getAttribute("roll")%>">student subject</a></li>
					 <li><a href="DisplayStudentMarks.jsp?RollNo=<%=session.getAttribute("roll")%>">student marks</a></li>
					 <li> <a href="DisplayBillForStudent.jsp?Rollno=<%=session.getAttribute("roll")%>">Student bills</a></li>
					 <li><a href="Logout.jsp">Logout</a></li>
				</ul>
				<div class="clear"></div>
		</div>


<%
DbStudentSubject dao=new DbStudentSubject();
int roll=Integer.parseInt(request.getParameter("Rollno"));
String sroll=roll+"";
sroll=sroll.substring(0,2);
roll=Integer.parseInt(sroll);
List<StudentSubject> stdsubList=dao.getStudentSubject(roll);
//String msg=request.getParameter("message");
//if(null!=msg){	out.println(msg);	}
%>
<table border="8" style="color:black;background-color:white;">
<tr><th>Subject ID</th>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<th>Subject Name</th>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<th>Subject Teacher ID</th></tr>
<%
int i=0;
String col="ffffff";

for(StudentSubject stdsub:stdsubList){
	/*if (i%2==0 )
		col="eeee";
	else
		col="ffffff";
	i++;*/
%>
<tr bgcolor=#"<%=col %>"><td><%=stdsub.getSubject_id() %></td>
<td> <%=stdsub.getSubject_name()%></td>
<td>        <%=stdsub.getTeacher_id()%></td>
<%
}
%>
</table>




<%@include file="footer.jsp"%>
</body>

</html>