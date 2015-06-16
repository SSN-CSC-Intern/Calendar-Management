<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%
String uname1 = request.getParameter("uname");
String stdate = request.getParameter("stdate");
String endate = request.getParameter("endate");
String descrp = request.getParameter("descrp");
Statement stmt;
ResultSet rs;
Connection conn = null;
 PreparedStatement pstatement = null;
//out.println(request.getRequestURI());

       try {
      Class.forName("com.mysql.jdbc.Driver");
     Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/calender","root","admin");
       stmt = con.createStatement();
     

	     String qry="update userreg set stdate='"+stdate+"',endate='"+endate+"',descrp='"+descrp+"' where uname='"+uname1+"' ";

     
       stmt.executeUpdate(qry);
      response.sendRedirect("STUDENTUPDATE.jsp?msg=Successfully Updated");
	   }
catch (Exception e) {
out.println(e);
}


 
 
%>
