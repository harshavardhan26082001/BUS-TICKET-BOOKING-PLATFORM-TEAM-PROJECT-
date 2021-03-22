<%-- 
    Document   : amountinwallet
    Created on : 11 Jun, 2020, 7:15:21 PM
    Author     : Kalki Sumanth
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement,java.util.concurrent.TimeUnit"%>
<%@page import="java.sql.*,java.io.IOException,java.text.DateFormat,java.text.SimpleDateFormat,java.util.Calendar,java.util.*,javax.servlet.http.*"%>

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
            //String uname="kalki123";
        //String wallet=request.getParameter("money");
        String url="jdbc:mysql://localhost:3306/users";
            String username="root";
            String password="9234";
out.println(uname);
            String sql="select * from user_data  where uname = '"+uname+"'";
            try
            {
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection(url,username,password);
                PreparedStatement st=con.prepareStatement(sql);
                
                String wallet=new String();
                ResultSet rs=st.executeQuery(sql);
                if(rs.next())
                {
                    wallet=rs.getString("wallet");
                }
                session.setAttribute("wallet",wallet);
                out.println(wallet);
                
             }
                catch (Exception e)
                {
                    e.printStackTrace();
                }
               /*RequestDispatcher rd=request.getRequestDispatcher("paymentfromwallet.jsp");  
                rd.forward(request,response);*/
                response.sendRedirect("paymentfromwallet.jsp");
%>
    </body>
</html>
