

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
         <link href="css/mint-choc/jquery-ui-1.10.4.custom.css" rel="stylesheet">
	<script src="jquery-1.10.2.js"></script>
	<script src="jquery-ui-1.10.4.custom.js"></script>
        <div class="container">
         
        <ul>
          <li class="current"><a href="Training.jsp"><span>Home</span></a></li>
          <li><a href="Edit.jsp"><span>EDIT</span></a></li>
          <li><a href="SearchPage.jsp"><span>SEARCH</span></a></li>
        </ul>
     
         </div>
    </head>
    <link rel="stylesheet" href="layout/styles/css/bootstrap.min.css" type="text/css" />
<link rel="stylesheet" href="layout/styles/css/bootstrap-theme.min.css" type="text/css" />
<script type="text/javascript" src="layout/styles/js/bootstrap.min.js"></script>
<script type="text/javascript" src="layout//styles/js/npm.js"></script>
<style>
 body {
    background-color: #b0c4de;
}
</style>

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
         <form action="SearchQuery.jsp" method="post" onsubmit="return validation(true);"> 
            <table>
                
                
                 <tr>
                    <td><label> Training Start Date</label></td>
                    <td><input type="text" name="sdate"  id="datepicker" class="input"  required  /><td>
                                  
                </tr>
                 
                <tr> <td> <input type="Submit" value="SEARCH"></td></tr>
            </table>
        </form>
   
    </body>
</html>
