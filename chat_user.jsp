<%-- 
    Document   : chat_user
    Created on : 16 Jun, 2020, 4:10:40 PM
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
        String uname=(String)session.getAttribute("username");
        String data=request.getParameter("chat");
        String status="not seen";
        DateFormat formatter= new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        Date date2 =new Date();
        String sent_time=formatter.format(date2);
        out.println(sent_time);
        
        String url="jdbc:mysql://localhost:3306/users";
            String username="root";
            String password="9234";
            String sql="insert into chat values(id=id+1,'"+uname+"','"+data+"','"+sent_time+"','"+status+"')";
            try
            {
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection(url,username,password);
                PreparedStatement st=con.prepareStatement(sql);
                
                
                st.executeUpdate();
                
            
             }
                catch (Exception e)
                {
                    e.printStackTrace();
                }
                
                /*RequestDispatcher rd=request.getRequestDispatcher("receive_chat_by_user.jsp");  
                rd.forward(request, response);*/
        response.sendRedirect("chat_area_user.jsp");
        
        %>
    </body>
</html>
