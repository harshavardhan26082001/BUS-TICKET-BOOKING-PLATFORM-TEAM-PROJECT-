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
            
            DateFormat formatter= new SimpleDateFormat("yyyy-MM-dd");
        Date date2 =new Date();
        String output;
        try {
           date2 = formatter.parse(date);           
        } catch (Exception e) {
           e.printStackTrace();
        }
        

        java.sql.Date sqlDate = new java.sql.Date(date2.getTime());
            String time=new String();
            String url="jdbc:mysql://localhost:3306/mydatabase";
            String username="root";
            String password="9234";
            String sql="select * from buses_data where service_num='"+sno+"' and start_date='"+sqlDate+"' ";
            try
            {
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection(url,username,password);
                PreparedStatement st=con.prepareStatement(sql);
                ResultSet rs=st.executeQuery(sql);
                
                while(rs.next())
                {
                        Time timeObj = rs.getTime("start_time");
                            time=timeObj.toString();
                            out.println(time);
                            session.setAttribute("total_seats",rs.getString("seat_num"));
                        
                }       
                    
             }
                catch (Exception e)
                {
                    e.printStackTrace();
                }


                String kalki=date+" "+time;
                out.println(kalki);                    
        DateFormat formatter1 = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        Date date3 = new Date();
        try {
                   date3 = formatter1.parse(kalki);           
                } catch (Exception e) {
                   e.printStackTrace();
                }
        out.println(formatter1.format(date3));
         DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
            Date date4 = new Date();
            out.println(dateFormat.format(date4));

            long duration=date3.getTime()-date4.getTime();
             long diffInMinutes = TimeUnit.MILLISECONDS.toMinutes(duration);
             out.println(diffInMinutes);
            
            
                   
                    if(diffInMinutes<=240)
                    {
                        out.println("ucannot cancel ticket.time up");
                        RequestDispatcher rd=request.getRequestDispatcher("cancelticket.jsp");  
                        rd.include(request, response);
                    }
                    else
                    {
                        /*RequestDispatcher rd=request.getRequestDispatcher("deleteticket.jsp");  
                            rd.forward(request, response);*/
                        response.sendRedirect("deleteticket.jsp");
                    }
                
                
%>
    </body>
</html>


