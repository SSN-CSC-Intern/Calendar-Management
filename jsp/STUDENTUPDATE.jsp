<%@page import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN"
 "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">

<head>
  <title>ARaynorDesign Template</title>
  <meta name="description" content="free website template" />
  <meta name="keywords" content="enter your keywords here" />
  <meta http-equiv="content-type" content="text/html; charset=utf-8" />
  <link rel="stylesheet" type="text/css" href="css/style.css" />
  <script type="text/javascript" src="js/jquery.min.js"></script>
  <script type="text/javascript" src="js/jquery.easing.min.js"></script>
  <script type="text/javascript" src="js/jquery.nivo.slider.pack.js"></script>
  <link rel="stylesheet" href="layout/styles/css/bootstrap.min.css" type="text/css" />
<link rel="stylesheet" href="layout/styles/css/bootstrap-theme.min.css" type="text/css" />
<script type="text/javascript" src="layout/styles/js/bootstrap.min.js"></script>
<script type="text/javascript" src="layout//styles/js/npm.js"></script>
<style>
 body {
    background-color: #b0c4de;
}
</style>

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
     
     <br></br>



<html>
<head>

<link rel="stylesheet" type="text/css" href="style.css" />
<style type="text/css">

#form1 label {
	font-family: Lucida Calligraphy;
}
#f2 label {
	font-family: Lucida Calligraphy;
}
</style>

 <%String un=(String)session.getAttribute("un");
String msg=request.getParameter("msg");
if(un==null)
    {
    session.invalidate();
//response.sendRedirect("Login.jsp?msg=U Should Login First!!!!");
}
%>
 
</head>
<body>
    <form id="form1" name="form1" method="post" action="">
    


<div id="maintext">
 <style>
         .head tr,.head td{
         background-color: #10151B;
         }
         .label {
             color: #FFF;
font-size: 60px;
font-weight: bold;
text-align: center;
         }
         body {
             background-color:#EFEFEF;
         }
         .label tr,.label td,.label span{
         
         color: #A9D50E; 
         }
         #head2 {
             color: #A9D50E;
         }
     </style>
    <div>
            <table align="center"  bgcolor="black" width="100%" height="50">
<tr>
    <td  class="id1"><center><font size="7" color="white"><label class="label"><span>Edit User Details </span></label></font> <br/><font size="3" color="white"><b><label id="head2"><span></span></label></b></font></center></td>
</tr>
</table>
           <br></br>
        <%
if(msg!=null)
    {
%>
<center><blink><font size="4" color="green"><%=msg%></font></blink></center><br><br></br>
<%} %>
         
        <%

String uname="";
String stdate="";
String endate="";
String descrp="";







String tt=null;
 String st=request.getParameter("s1");
  Class.forName("com.mysql.jdbc.Driver");
     Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/calender","root","admin");
Statement stmt=con.createStatement();
Statement stmt1=con.createStatement();
Statement stmt2=con.createStatement();
ResultSet rs=stmt.executeQuery("SELECT uname FROM userreg");
%>
            <table align="center">
                <form name="form1">
                   
                    <tr><td>
                        <label>1.User Name</label></td>
                        <td> <select name="s1" onChange="document.form1.submit()" ><option value="select">Select User</option>
                            <%
  while(rs.next())
   {
    String x=rs.getString("uname");
      
   %>
<option <%
           if(st !=null && st.equals(x))
            out.println(x);
      %>
    ><%=x%></option>
<%
   }
   %>
                            </select>
                            
                            <%
     if(st !=null)
       {


   ResultSet rs1=stmt1.executeQuery("select * from userreg where uname='"+st+"'");
  
  if(rs1.next())
  {
      System.out.println("hi");
      uname= rs1.getString(1);
 stdate= rs1.getString(2);
 endate= rs1.getString(3);
 descrp= rs1.getString(4);
 
 
  
    }//end of while

   } //end of if
 %>
 <%=uname%>
                      <br></br>  </td></tr></form>
                      <form  name="f2"  action="studentupdate1.jsp " method="post" onsubmit="return validateTime()"> <tr> <td>
                        <label>2.Start Date</label> </td>
                        <td><input type="text" id="studname" name="stdate" value="<%=stdate%>"  /><br></br>
                    </td></tr>
                    <tr> <td>
                        <label>3.End Date</label> </td>
                        <td><input type="text" id="parentname" name="endate" value="<%=endate%>"  /><br></br>
                    </td></tr>
                 <tr><td>
                        <label>4.Description</label> </td>
                       <td>  <input type="text" id="department" name="descrp" value="<%=descrp%>"  /><br></br>
                        </td></tr>
                   
                    <tr><td><input type="hidden" value="<%=uname%>" id="student_id" name="uname"></input></td></tr>
                    
                    <tr><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="submit" name="Submit" value="Update"></input></td></tr>
                    
                </form>
            </table>   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <a href="index.jsp"><b><font color="red">Click Here to Goto Home Page</font></b></a>    
       </div>
                    
                    

<p>

</p>
</div>

<div id="footer">
&copy; 2015  All rights reserved
</div>
 </form>
</body>
</html>

