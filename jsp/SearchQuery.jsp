
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
  
      <%  
   String name = request.getParameter("name");  
   String start = request.getParameter("start");  
   String end = request.getParameter("end");  
   String description = request.getParameter("descript");  
     String Driver = "com.mysql.jdbc.Driver";
        String connectionURL = "jdbc:mysql://localhost/calendar"; 
        Connection connection=null;
        Statement stmt = null;
         Class.forName("com.mysql.jdbc.Driver").newInstance(); 
            connection = DriverManager.getConnection(connectionURL, "root", "admin");
            stmt = connection.createStatement();
            String qry = "select * from addtraining";
            stmt.executeQuery(qry);
            out.println("");
%> 
           
           <%
             }
           %>

    </body>
</html>
