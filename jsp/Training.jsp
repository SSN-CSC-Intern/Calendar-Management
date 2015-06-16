

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
         <link href="css/mint-choc/jquery-ui-1.10.4.custom.min.css" rel="stylesheet">
	<script src="jquery-1.10.2.js"></script>
	<script src="jquery-ui-1.10.4.custom.js"></script>
        <div class="container">
         
        <ul>
          <li class="current"><a href="home.jsp"><span>Home</span></a></li>
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
    function validation()
            {
                    var tname1 = document.getElementById("tname").value;
                    var tname11 = /^[A-Za-z ]+$/.test(tname1);
                    if(!tname11)
                     {
                    alert("enter Name field should be in Alphabet");
                    document.getElementById("tname").value = "";
                    return false;
                    }
                      return true;
                  }
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
    <body>
        
         <form action="TrainingInsert.jsp" method="post" onsubmit="return validation(true);"> 
            <table>
                <tr>
                    <td><label> Training Name </label></td>
                    <td><input type="text" name="tname" id="tname" required ></td>
                                  
                </tr>
                
                 <tr>
                    <td><label> Training Start Date</label></td>
                    <td><input type="text" name="sdate"  id="datepicker" class="input"  required  /><td>
                                  
                </tr>
                 <tr>
                    <td><label> Training End Date </label></td>
                    <td><input type="text" name="edate"  id="datepicker1" class="input"  required   /><td>
                                  
                </tr>
                 <tr>
                    <td><label> Training Description </label></td>
                    <td><textarea name="descript" id="descript" required></textarea></td>
                                 
                </tr>
                <tr> <td> <input type="Submit" value="OK"></td></tr>
            </table>
        </form>
   
    </body>
</html>
