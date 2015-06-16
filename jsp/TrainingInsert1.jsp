

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
        <ul class="nav">
        <li><i>
                <img src="layout/styles/images/logo1.jpg" alt="">
            </i></li>
    </ul>
    <h2>Ideation Portal</h2>
<nav class="navbar navbar-default">
  <div class="container-fluid">
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header">
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand" href="#">Home</a>
    </div>

    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      <ul class="nav navbar-nav">
        <li><a href="#">Idea</a></li>
        <li><a href="#">Forum</a></li>
        <li><a href="#">Chat</a></li>
        <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="true">Calendar<span class="caret"></span></a>
          <ul class="dropdown-menu" role="menu">
            <li><a href="#">Action</a></li>
            <li><a href="#">Another action</a></li>
            <li><a href="#">Something else here</a></li>
            <li class="divider"></li>
            <li><a href="#">Separated link</a></li>
            <li class="divider"></li>
            <li><a href="#">One more separated link</a></li>
          </ul>
        </li>
      </ul>
      
      <ul class="nav navbar-nav navbar-right">
        <form class="navbar-form navbar-left" role="search">
        <div class="form-group">
          <input type="text" class="form-control" placeholder="Search">
        </div>
        <button type="submit" class="btn btn-default">Submit</button>
      </form>
      </ul>
    </div><!-- /.navbar-collapse -->
  </div><!-- /.container-fluid -->
</nav>
       <%    
     PrintWriter pw = response.getWriter();  
     String connectionURL = "jdbc:mysql://localhost:3306/calendar";
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
