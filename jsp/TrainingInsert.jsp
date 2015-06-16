

<%@page import="java.io.PrintWriter"%>
<%@page import="java.sql.PreparedStatement"%>
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
     PrintWriter pw = response.getWriter();  
     String connectionURL = "jdbc:mysql://localhost:3306/calender";
     Connection connection;  
            try{  
            
              String name= request.getParameter("tname");    
              String start = request.getParameter("sdate");
              String end = request.getParameter("edate");  
              String description = request.getParameter("descript"); 
              
          
              Class.forName("com.mysql.jdbc.Driver");  
              connection = DriverManager.getConnection(connectionURL, "root", "admin");  
              PreparedStatement pst = connection.prepareStatement("insert into addtraining(name,start,end,description)values(?,?,?,?)");
           
              pst.setString(1,name); 
              pst.setString(2,start);
              pst.setString(3,end);
              pst.setString(4,description);
             
              
              int i = pst.executeUpdate();  
              if(i!=0)
              {  
             response.sendRedirect("Training.jsp");
                       
              }  
              else
              {  
                pw.println("Data inserted Successfully");  
               }  
            }  
            catch (Exception e)
            {  
              pw.println(e);  
            }  
           %>
    </body>
</html>
