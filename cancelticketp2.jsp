<%-- 
    Document   : wallettransaction
    Created on : 12 Jun, 2020, 1:42:53 PM
    Author     : Kalki Sumanth
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement,java.util.concurrent.TimeUnit"%>
<%@page import="java.sql.*,java.io.IOException,java.text.DateFormat,java.text.SimpleDateFormat,java.util.Calendar,java.util.Date,javax.servlet.http.*"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%

            if(session.getAttribute("username")==null)
        {
            response.sendRedirect("login1.jsp");
        }
            String uname=(String)session.getAttribute("username");
            String id=(String)session.getAttribute("trans_id");
        String url="jdbc:mysql://localhost:3306/users";
            String username="root";
            String password="9234";
            String sql2="select * from booking_history where user_name='"+uname+"' and trans_id='"+id+"' ";
            try
            {
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection(url,username,password);
                PreparedStatement st=con.prepareStatement(sql2);
                ResultSet rs=st.executeQuery(sql2);
                while(rs.next())
                {
                    session.setAttribute("refund1",rs.getInt("total_cost"));
                    
                }
                   

             }
                catch (Exception e)
                {
                    e.printStackTrace();
                }
                




                String status1="cancelled";
            String sql="update  booking_history set status='"+status1+"' where user_name='"+uname+"' and trans_id='"+id+"' ";
            try
            {
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection(url,username,password);
                PreparedStatement st=con.prepareStatement(sql);
                st.executeUpdate(sql);
                   

             }
                catch (Exception e)
                {
                    e.printStackTrace();
                }



            
                /*RequestDispatcher rd=request.getRequestDispatcher("getstart_time.jsp");  
                rd.forward(request, response);*/
                response.sendRedirect("getstart_time.jsp");
%>
    </body>
</html>


