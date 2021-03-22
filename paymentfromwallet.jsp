<%-- 
    Document   : paymentfromwallet
    Created on : 11 Jun, 2020, 3:52:16 PM
    Author     : Kalki Sumanth
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement,java.util.concurrent.TimeUnit"%>
<%@page import="java.sql.*,java.io.IOException,java.text.DateFormat,java.text.SimpleDateFormat,java.util.Calendar,java.util.*,javax.servlet.http.*,java.lang.*"%>

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
                //response.sendRedirect("amountinwallet.jsp");
                String wallet1=(String)session.getAttribute("wallet");
                long wallet= Long.parseLong(wallet1);
                  
                  /*try
            {
                wallet= Long.parseLong(wallet1);
            }
            catch(Exception e2)
            {
                e2.printStackTrace();
            }*/

                /*CastObjectToLong castObjectToLong = new CastObjectToLong();
                castObjectToLong.castLongObject(session.getAttribute("money"));*/
        
        %>
        <h1>YOUR WALLET MONEY</h1>
        <h1><%=wallet1%></h1>
        
        <%
            
            int bookedno=(Integer)session.getAttribute("noofselected");
            int cost=0;
            try
            {
            cost=(Integer)session.getAttribute("cost");
            }
            catch(Exception e1)
            {
                e1.printStackTrace();
            }
            long total=bookedno*cost;
            String total1=String.valueOf(total);
            out.println("total"+total);
            session.setAttribute("total",total1);
            long remaining=wallet-total;
            String remain=String.valueOf(remaining);  
            if(wallet<total)
            {
                out.println("U DONT HAVE ENOUGH MONEY IN UR WALLET");
                RequestDispatcher rd=request.getRequestDispatcher("welcome.jsp");  
                rd.include(request, response);
            }
            else
            {
                String uname=(String)session.getAttribute("username");
                String url="jdbc:mysql://localhost:3306/users";
            String username="root";
            String password="9234";
            String sql="update user_data set wallet='"+remain+"' where uname = '"+uname+"'";
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
                /*RequestDispatcher rd=request.getRequestDispatcher("transaction.jsp");  
                rd.forward(request,response);*/
                response.sendRedirect("transaction.jsp");
            }

%>      
    </body>
</html>
