<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.1//EN" "http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en">

<head>
  <title>ARaynorDesign Template</title>
  <meta name="description" content="free website template" />
  <meta name="keywords" content="enter your keywords here" />
  <meta http-equiv="content-type" content="text/html; charset=utf-8" />
  <link rel="stylesheet" type="text/css" href="css/style.css" />
  <script type="text/javascript" src="js/jquery.min.js"></script>
  <script type="text/javascript" src="js/jquery.easing.min.js"></script>
  <script type="text/javascript" src="js/jquery.nivo.slider.pack.js"></script>
  <script type="text/javascript">
    $(window).load(function() {
        $('#slider').nivoSlider();
    });
  </script>
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
  <div id="main">	
	<div id="site_content">
      <div id="site_heading">
	    
	  </div><!--close site_heading-->
	  <div id="header">
	    <div id="menubar">
          <ul id="menu">
            
          </ul>
        </div><!--close menubar-->
      </div><!--close header-->	  
	  <div id="banner_image">
	    <div id="slider-wrapper">        
          <div id="slider" class="nivoSlider">
            
		  </div><!--close slider-->
		</div><!--close slider_wrapper-->
	  </div><!--close banner_image-->			  
	  <div id="content">
        
                       
    
<div id="content">
    <div class="content_item">
     <h1 align="center">EDIT USER DETAILS</h1>   
     <br></br>
    
     <a href="index.jsp"><font color="green"><B>CLICK HERE TO GOTO USER PAGE</B></font></a>



<%@ page import="java.sql.*" %>
<html>
<head>
<script language="javascript">
function editRecord(student_id){
    var f=document.form;
    f.method="post";
    f.action='STUDENTUPDATE.jsp?student_id='+student_id;
    f.submit();
}

function deleteRecord(student_id){
    var d=document.form;
    d.method="post";
    d.action='jspDelete.jsp?student_id='+student_id;
    d.submit();
}

</script>
</head>
<body>

<br><br>
<form method="post" name="form">
<table border="1">
<tr><th>Name</th><th>StartDate</th><th>EndDate</th><th>Description</th></tr>
<%
Connection con = null;
String url = "jdbc:mysql://localhost:3306/";
String db = "calender";
String driver = "com.mysql.jdbc.Driver";
String userName = "root";
String password = "admin";

int sumcount=0;
Statement st;
try{
Class.forName(driver).newInstance();
con = DriverManager.getConnection(url+db,userName,password);
String query = "select * from userreg";
st = con.createStatement();
ResultSet rs = st.executeQuery(query);
%>

<%
while(rs.next()){
%>
<tr>
<td><%=rs.getString(1)%></td>    
<td><%=rs.getString(2)%></td>
<td><%=rs.getString(3)%></td>
<td><%=rs.getString(4)%></td>


<td><input type="button" name="edit" value="Edit" style="background-color:#49743D;font-weight:bold;color:#ffffff;" onclick="editRecord(<%=rs.getString(1)%>);" ></td>
<td><input type="button" name="delete" value="Delete" style="background-color:#ff0000;font-weight:bold;color:#ffffff;" onclick="deleteRecord(<%=rs.getString(1)%>);" ></td>
</tr>
<%
}
%>
<%
}
catch(Exception e){
e.printStackTrace();
}
%>
</table>
</form>

<br></br><br></br>

 <%
        String msg=request.getParameter("msg");
        
        if(msg!=null)
        {
            out.println(msg);
            
        }
    %>
    <%
        String msg1=request.getParameter("msg1");
        
        if(msg1!=null)
        {
            out.println(msg1);
            
        }
    %>


</body>


</html>

</body>


</html>
