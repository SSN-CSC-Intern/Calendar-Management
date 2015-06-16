

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
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
     String name= request.getParameter("tname");    
     String start = request.getParameter("sdate");
     String end = request.getParameter("edate");  
     String description = request.getParameter("descript");  
   String connectionURL = "jdbc:mysql://localhost:3306/calendar"; 
   Connection connection = null;  
   PreparedStatement pstatement = null;  
   Class.forName("com.mysql.jdbc.Driver").newInstance(); 
   //Connection con=DriverManager.getConnection(connectionURL,"root","admin");
   
   int updateQuery = 0;  
   if(name!=null && start!=null && end!=null && description!=null ){  
       if(name!="" && start!="" && end!="" && description!=""){  
           try{  
               connection = DriverManager.getConnection(connectionURL, "root", "admin");  
               String queryString ="update addtraining set name = ?,start= ?,end = ?,description = ? where name= 'dhd'";  
               pstatement = connection.prepareStatement(queryString);  
           
             
              pstatement.setString(1,name); 
              pstatement.setString(2,start);
              pstatement.setString(3,end);
              pstatement.setString(4,description);
              
              updateQuery = pstatement.executeUpdate();  
                  if (updateQuery != 0) { %>  
                  <br>  
                  <TABLE style="background-color: #E3E4FA;"   
                  WIDTH="30%" border="1">  
                     <tr><th>Data is updated successfully in database.</th></tr>  
                  </table>  
                  <%  
              }  
            }   
            catch (Exception ex) 
            {  
                ex.printStackTrace();
                out.println("Unable to connect to database.");  
     
            }  
          }
        }  
%>  
    </body>
</html>
