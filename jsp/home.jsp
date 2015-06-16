<%-- 
    Document   : home
    Created on : Apr 10, 2015, 12:50:43 PM
    Author     : suganya
--%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<!--

-->
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <title>Calendar</title>
        <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
        <link rel="stylesheet" href="layout/styles/layout.css" type="text/css" />
        <link rel="stylesheet" href="layout/styles/css/bootstrap.min.css" type="text/css" />
        <link rel="stylesheet" href="layout/styles/css/bootstrap-theme.min.css" type="text/css" />
        <script type="text/javascript" src="layout/scripts/jquery.min.js"></script>
        <script type="text/javascript" src="layout/styles/js/bootstrap.min.js"></script>
        <script type="text/javascript" src="layout//styles/js/npm.js"></script>
        <script type="text/javascript" src="layout/scripts/jquery.slidepanel.setup.s"></script>
        <link rel="stylesheet" href="layout/styles/css/bootstrap.min.css" type="text/css" />
<link rel="stylesheet" href="layout/styles/css/bootstrap-theme.min.css" type="text/css" />
<script type="text/javascript" src="layout/styles/js/bootstrap.min.js"></script>
<script type="text/javascript" src="layout//styles/js/npm.js"></script>
<style>
 body {
    background-color: #b0c4de;
}
</style>

        <!-- Homepage Only Scripts -->
        <script type="text/javascript" src="layout/scripts/jquery.cycle.min.js"></script>
        <script type="text/javascript">
            /* $(function() {
             $('#featured_slide').after('<div id="fsn"><ul id="fs_pagination">').cycle({
             timeout: 5000,
             fx: 'fade',
             pager: '#fs_pagination',
             pause: 1,
             pauseOnPagerHover: 0
             });
             });*/
        </script>
        <!-- End Homepage Only Scripts -->
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
        <div class="wrapper col0">
            <div id="topbar">
                <div id="slidepanel">
                    <div class="topbox">
                        <h2>Nullamlacus dui ipsum</h2>
                        <p>Nullamlacus dui ipsum conseque loborttis non euisque morbi penas dapibulum orna. Urnaultrices quis curabitur phasellentesque congue magnis vestibulum quismodo nulla et feugiat. Adipisciniapellentum leo ut consequam ris felit elit id nibh sociis malesuada.</p>
                        <p class="readmore"><a href="#">Continue Reading &raquo;</a></p>
                    </div>
                    <div class="topbox">
                        <h2> Users Login Here</h2>
                        
                    </div>
                    <div class="topbox last">
                        <h2>Employee Login Here</h2>
                       
                    </div>
                    <br class="clear" />
                </div>
               
                <br class="clear" />
            </div>
        </div>
        <!-- ####################################################################################################### -->
        <div class="wrapper col1">
            <div id="header">
                <div id="logo">
                    <h1><a href="#">Ideation Portal</a></h1>
                    <p></p>
                
                    <ul id="menu">
                        <li class="current"><a href="Training.jsp">Training Courses</a></li>
                        <li class="current"><a href="certification.jsp">Certification</a></li>
                        <li class="current"><a href="index.jsp">Leave Planner</a></li>
                    </ul>
                
                </div>
                <div id="topnav">
                   
                </div>
                <br class="clear" />
            </div>
        </div>
        <!-- ####################################################################################################### -->
        <div class="wrapper">
            <div id="featured_slide" >
                
                <div class="logindiv">
                    <form method="post" action="reg">
                        
                    </form>
                </div>                                                                                                          
                <div class="logindiv1" style="margin-top: 50px;margin-left:316px">
                    <form method="post" action="login.jsp">
                        <h3 style="font-family: cursive">User Login   </h3>
                        <input type="text" class="login1" placeholder="Enter Ur Username" name="user" id="pupilname" value="" /><br>
                            <input type="password" class="login1" name="pass" placeholder="Enter ur Password" id="pupilname" value="" /></br>
                        <input type="submit" value="Login" class="myButton1" class="login1">
                    </form>
                </div>
            </div>
        </div>
        <!-- ####################################################################################################### -->
        <div class="wrapper col3">
            <div id="homecontent">
                <div class="fl_left">
                    <div class="column2">

                        <br class="clear" />
                    </div>
                    <div class="column2">

                    </div>
                </div>
                <div class="fl_right">

                </div>
                <br class="clear" />
            </div>
        </div>
        <!-- ####################################################################################################### -->
        <div class="wrapper col4">
            <div id="footer">
                <div class="footbox">
                </div>
                <div class="footbox">

                </div>
                <div class="footbox">


                </div>
                <div class="footbox">


                </div>
                <div class="footbox last">


                </div>
                <br class="clear" />
            </div>
        </div>
        <!-- ####################################################################################################### -->
        <div class="wrapper col5">
            <div id="copyright">
                <p class="fl_left"> <a href="#"></a></p>
                <p class="fl_right"></p>
                <br class="clear" />
            </div>
        </div>
    </body>
</html>
