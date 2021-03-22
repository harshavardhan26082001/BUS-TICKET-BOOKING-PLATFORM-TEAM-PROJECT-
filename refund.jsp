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
            Integer refund1=(Integer)session.getAttribute("refund1");
            String refund2=(String)session.getAttribute("prewallet");
            out.println(refund2+" "+refund1);
            int refund3 =Integer.parseInt(refund2);
            int refund4=(3*refund1)/4;
            //Integer refund5=Integer.parseInt(refund2);
            session.setAttribute("rew",refund4);
            int refund6=refund4+refund3;
            String refund = String.valueOf(refund6);
            
            String url="jdbc:mysql://localhost:3306/users";
            String username="root";
            String password="9234";
            String sql="update  user_data set wallet='"+refund+"' where uname='"+uname+"'  ";
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



                    
        
                        RequestDispatcher rd=request.getRequestDispatcher("refund_in_wallet.jsp");  
                        rd.forward(request, response);
                    
                
                
%>
    </body>
</html>


