<%-- 
    Document   : UploadImage
    Created on : Apr 21, 2015, 7:22:54 PM
    Author     : Technology era
--%>


    



 <%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import= "java.sql.*" %> 
<html xmlns="http://www.w3.org/1999/xhtml">
 

 
  <head>
 <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Admin dashboard</title>
    <link href="css/CSSTableGenerator.css" rel="stylesheet" type="text/css"/>
    <!-- BOOTSTRAP STYLES-->
    <link href="assets/css/bootstrap.css" rel="stylesheet" />
    <!-- FONTAWESOME STYLES-->
    <link href="assets/css/font-awesome.css" rel="stylesheet" />
       <!--CUSTOM BASIC STYLES-->
    <link href="assets/css/basic.css" rel="stylesheet" />
    <!--CUSTOM MAIN STYLES-->
    <link href="assets/css/custom.css" rel="stylesheet" />
    <!-- GOOGLE FONTS-->
    <link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css' />
</head>
  <body>
    <div id="wrapper">
        <nav class="navbar navbar-default navbar-cls-top " role="navigation" style="margin-bottom: 0">
            <div class="navbar-header">
                
               
                <a class="navbar-brand" href="dashboard.jsp">Hospital</a>
            </div>
  <%
    if ((session.getAttribute("userid") == null) || (session.getAttribute("userid") == "")) 
   {
%>
You are not logged in<br/>
<%response.sendRedirect("index.jsp");
   }
%>
 

          
              <h3>Choose File to Upload in Server</h3>
        <form action="UploadImage" method="post" enctype="multipart/form-data">
            <table> <td><input type="file" name="file" /> </td>
                <td> <input type="submit" value="upload" /></td></table>
            
        </form>
                
                <!--/.Row-->
                <hr />
                
                <!--/.ROW-->

            </div>
            <!-- /. PAGE INNER  -->
        </div>
        <!-- /. PAGE WRAPPER  -->
    </div>
    <!-- /. WRAPPER  -->
    
    
    
    
    
    
   
    
</body>
</html>

