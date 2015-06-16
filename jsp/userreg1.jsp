<%@page import="java.sql.*,java.util.*"%> 
    <%
        
        Connection con=null;
        Statement st=null;
        String submit="";
        String uname1 = request.getParameter("uname");
        String sdate = request.getParameter("stdate");
        String edate = request.getParameter("endate");
        String desc = request.getParameter("descrp");
        try {
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/calender", "root", "admin");
            st = con.createStatement();
            if(submit!=null)
             {
                 String newsql="select * from userreg where uname='"+uname1+"'";
                 Statement newstmt=con.createStatement();
                 ResultSet newrs=newstmt.executeQuery(newsql);
                 if(newrs.next())
                  {
                    response.sendRedirect("userreg.jsp?message1=username already in database Please Use Some other Name!");
                  }
                else
                {

                  int i = st.executeUpdate("insert into userreg(uname, stdate, endate, descrp) values('" + uname1 + "','" + sdate + "','" + edate + "','" + desc + "')");
                  response.sendRedirect("userreg.jsp?message2=Successfully Registered!");
                }
             }




           }
        catch (Exception e) 
        {
            System.out.print(e);
            e.printStackTrace();
        }
    %>
