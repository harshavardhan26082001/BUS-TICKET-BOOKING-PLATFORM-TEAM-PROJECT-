<%-- 
    Document   : refund_in_wallet
    Created on : 18 Jun, 2020, 10:58:33 PM
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
        <%if(session.getAttribute("username")==null)
        {
            response.sendRedirect("login1.jsp");
        }

            String uname=(String)session.getAttribute("username");
            Integer ref=(Integer)session.getAttribute("rew");
            
            DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
            String status="refund";
                    Date date3 = new Date(); 
                    String sqlDate2 = dateFormat.format(date3);
            String url="jdbc:mysql://localhost:3306/users";
            String username="root";
            String password="9234";
            String sql="insert into wallet_history values(id=id+1,'"+uname+"','"+ref+"','"+sqlDate2+"','"+status+"')";
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

                RequestDispatcher rd=request.getRequestDispatcher("welcome.jsp");  
                        rd.forward(request, response);



%>
    </body>
</html>
