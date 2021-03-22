<%-- 
    Document   : chat_by_admin
    Created on : 16 Jun, 2020, 7:38:58 PM
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
String uname=(String)session.getAttribute("un_chat");
String i_d=(String)session.getAttribute("user_id");
        String data=request.getParameter("chat");
        //String status="not seen";
        DateFormat formatter= new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        Date date2 =new Date();
        String sent_time=formatter.format(date2);
        String admin="admin";
        
        
        String url="jdbc:mysql://localhost:3306/users";
            String username="root";
            String password="9234";
            String sql="insert into chat values(id=id+1,'"+admin+"','"+data+"','"+sent_time+"','"+uname+"')";
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


                String abc="seen";
                String sql1="update chat set status='"+abc+"' where user_name='"+uname+"' and id='"+i_d+"' ";
            try
            {
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection(url,username,password);
                PreparedStatement st=con.prepareStatement(sql1);
                
                
                st.executeUpdate();
                
            
             }
                catch (Exception e)
                {
                    e.printStackTrace();
                }
                
                /*RequestDispatcher rd=request.getRequestDispatcher("receiving chat by admin.jsp");  
                rd.forward(request, response);*/
                response.sendRedirect("receiving chat by admin.jsp");
        %>
    </body>
</html>
