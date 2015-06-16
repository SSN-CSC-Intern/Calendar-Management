<%@page import="java.sql.*,java.util.*"%> 
    <%
        
        Connection con=null;
        Statement st=null;
        String submit="";
        String uname1 = request.getParameter("UserName");
        String sdate = request.getParameter("StartDate");
        String edate = request.getParameter("EndDate");
        String desc = request.getParameter("Event");
        try {
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/calender", "root", "admin");
            st = con.createStatement();
            if(submit!=null)
             {
                 String newsql="select * from addevent1 where UserName='"+uname1+"'";
                 Statement newstmt=con.createStatement();
                 ResultSet newrs=newstmt.executeQuery(newsql);
                 if(newrs.next())
                  {
                    response.sendRedirect("certification.jsp?messeg1=username already in database Please Use Some other Name!");
                  }
                else
                {

                  int i = st.executeUpdate("insert into addevent1(UserName, StartDate, EndDate, Event) values('" + uname1 + "','" + sdate + "','" + edate + "','" + desc + "')");
                  response.sendRedirect("certification.jsp?messeg2=Successfully Registered!");
                }
             }




           }
        catch (Exception e) 
        {
            System.out.print(e);
            e.printStackTrace();
        }
    %>
