<div id="content">
    <div class="content_item">
     <h1 align="center">USER DETAILS</h1>   
     <br></br>


<%@ page import="java.sql.*" %>


<a href="index.jsp" style="color: green">Click Here To Goto Home Page</a>  <br><br>
<body bgcolor="">
  <table border="1" width="50%" height="50%">
  <tr><th><font color='Red'>USER NAME</font></th><th><font color='Red'>START DATE</font></th><th><font color='Red'>END DATE</font></th><th><font color='Red'>DESCRIPTION</font></th></tr>
<%
        Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/calender", "root", "admin");
        Statement st = con.createStatement(); 
        ResultSet rs=st.executeQuery("select *  from userreg");
  while(rs.next())
  {
      String uname =rs.getString("uname");
      String stdate=rs.getString("stdate");
      String endate=rs.getString("endate");
      String descrp=rs.getString("descrp");
      
      
  %>
<tr>
<td><b><font color='#663300'><%=uname%></font></b></td>
<td><b><font color='#663300'><%=stdate%></font></b></td>
<td><b><font color='#663300'><%=endate%></font></b></td>
<td><b><font color='#663300'><%=descrp%></font></b></td>
</tr>
<%
  }
 %>
 </table>
     </body>
 
 <br></br>
 <br></br>

</div>
