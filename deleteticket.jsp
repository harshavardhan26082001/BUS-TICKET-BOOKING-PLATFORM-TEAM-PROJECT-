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
            String sno=(String)session.getAttribute("b_sno");
            String date=(String)session.getAttribute("b_doj");
            String s1=(String)session.getAttribute("bookedseats");
            String s2=(String)session.getAttribute("total_seats");
            String s3=s2.replace(s1,"");
            DateFormat formatter= new SimpleDateFormat("yyyy-MM-dd");
        Date date2 =new Date();
        String output;
        try {
           date2 = formatter.parse(date);           
        } catch (Exception e) {
           e.printStackTrace();
        }
        

        java.sql.Date sqlDate = new java.sql.Date(date2.getTime());
            
            String url="jdbc:mysql://localhost:3306/mydatabase";
            String username="root";
            String password="9234";
            String sql="update  buses_data set seat_num='"+s3+"' where service_num='"+sno+"' and start_date='"+sqlDate+"' ";
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



                    
        
                       /* RequestDispatcher rd=request.getRequestDispatcher("refund2.jsp");  
                        rd.include(request, response);*/
                        response.sendRedirect("refund2.jsp");
                    
                
                
%>
    </body>
</html>


