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
           <link href="css/mint-choc/jquery-ui-1.10.4.custom.css" rel="stylesheet">
	<script src="jquery-1.10.2.js"></script>
	<script src="jquery-ui-1.10.4.custom.js"></script>
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
   <script>
  $(function() {
    $( "#datepicker" ).datepicker({
        
         maxDate: 0,
     changeMonth : true,
      changeYear : true,
      yearRange: '-100y:c+nn'
      
    });
  });
  </script>
  <script>
  $(function() {
    $( "#datepicker1" ).datepicker({
        
         maxDate: 0,
     changeMonth : true,
      changeYear : true,
      yearRange: '-100y:c+nn'
      
    });
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
	    <div><!--close site_heading-->
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

<script>
function validateof()
{
    var pname1 = document.getElementById('uname').value;
    var pname11 = /^[A-Za-z ]+$/.test(pname1);
    var dob1 = document.getElementById('dob1').value;
    var dob2 = document.getElementById('dob2').value;
    var desp1 = document.getElementById('desp').value;
    
                   
                    
                    if(pname1==="")
                 {
                        alert('username cant be empty');
                        return false;
                 }
                if (!pname11)
                {
                    alert('Name field should be in Alphabet');
                    return false;
                }
                  if(dob1==="")
                 {
                        alert('start date cant be empty');
                        return false;
                 }
                   if(dob2==="")
                 {
                        alert('end date cant be empty');
                        return false;
                 }
                  if(desp1==="")
                 {
                        alert('description cant be empty');
                        return false;
                 }
                 return  true;
              
                
}
    

    
</script>  
  

<a href="index.jsp"><b><font color="red"> Home Page</font></b></a>    

        <form name="user" method="post" action="userreg1.jsp" onsubmit="return validateof()"> 

        <table>
        <tr><td>USER NAME</td><td><input type="text" name="uname" id="uname"></td></tr>
        <tr><td>START DATE</td><td><input type="date" name="stdate" id="datepicker"></td></tr>
        <tr><td>END DATE</td><td><input type="date" name="endate" id="datepicker1"></td></tr>
        
        <tr><td>DESC</td><td><input type="text" name="descrp" id="desp"></td></tr>
        <tr><td></td><td><input type="submit" value="OK">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <input type="reset" value="Reset"></td></tr>
                </table>
                </form>
                </div>
                </div>


                <%
                    String mess1 = request.getParameter("message1");

                    if (mess1 != null) {
                        out.println(mess1);

                    }
                %> 


                <%
                    String mess2 = request.getParameter("message2");

                    if (mess2 != null) {
                        out.println(mess2);

                    }
                %>                 

