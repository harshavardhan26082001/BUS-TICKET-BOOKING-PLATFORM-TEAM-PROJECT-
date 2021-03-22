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
            String id=request.getParameter("transid");
            session.setAttribute("trans_id",id);
        String url="jdbc:mysql://localhost:3306/users";
            String username="root";
            String password="9234";
            String sql="select * from booking_history where user_name='"+uname+"' and trans_id='"+id+"' ";
            try
            {
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection(url,username,password);
                PreparedStatement st=con.prepareStatement(sql);
                ResultSet rs=st.executeQuery(sql);
                while(rs.next())
                {
                        session.setAttribute("bookedseats",rs.getString("seats"));
                        session.setAttribute("refund",rs.getString("total_cost"));
                        session.setAttribute("b_sno",rs.getString("sno"));
                        session.setAttribute("b_doj",rs.getString("date_of_journey"));
                }       

             }
                catch (Exception e)
                {
                    e.printStackTrace();
                }
                
                /*RequestDispatcher rd=request.getRequestDispatcher("cancelticketp2.jsp");  
                rd.forward(request, response);*/
                response.sendRedirect("cancelticketp2.jsp");
%>
    </body>
</html>


