<%-- 
    Document   : timecheck
    Created on : 4 Jun, 2020, 3:19:45 PM
    Author     : Kalki Sumanth
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.*"%>
<%@page import="java.sql.Connection,java.io.IOException,java.text.DateFormat,java.text.SimpleDateFormat,java.util.*,java.util.Date,javax.servlet.http.*"%>
<%@page import="java.time.LocalTime" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
    </body>
    <%
    if(session.getAttribute("username")==null)
        {
            response.sendRedirect("login1.jsp");
        }
    String from=(String)session.getAttribute("start");
        String to=(String)session.getAttribute("destination");
        String date1=(String)session.getAttribute("date");
        String sno=(String)session.getAttribute("sno");
        DateFormat formatter= new SimpleDateFormat("yyyy-MM-dd");
        Date date2 =new Date();
        String output;
        try {
           date2 = formatter.parse(date1);           
        } catch (Exception e) {
           e.printStackTrace();
        }
        

        java.sql.Date sqlDate = new java.sql.Date(date2.getTime());
        out.println(from+to+sqlDate+sno);
         String url="jdbc:mysql://localhost:3306/mydatabase";
        String username="root";
        String password="9234";
        int a=30;
        out.println("kalki");
        String sql="SELECT * FROM buses_data WHERE `from`='"+from+"' AND `to`='"+to+"' AND `start_date`='"+sqlDate+"' AND `service_num`='"+sno+"'";
            try
            {
                
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection(url,username,password);
                PreparedStatement st=con.prepareStatement(sql);
                
                //st.setString(12,seat_arr);
               ResultSet rs= st.executeQuery(sql);     
               String abc=new String();
               String time=new String();
               String time2=new String();
               String kalki=new String();
               out.println("kalki");
               if(rs.next())
               {
                    Time timeObj = rs.getTime("start_time");
                    time=timeObj.toString();
                    Time timeObj2 = rs.getTime("end_time");
                    time2=timeObj2.toString();
                        
                      out.println("kalki");  
                       
                        kalki=date1+" "+time;
                        out.println(kalki);
                }
                session.setAttribute("start_time",time);
                session.setAttribute("end_time",time2);
                Time timeObj = rs.getTime("start_time");
                session.setAttribute("dt",kalki);
                out.println(from+to+sqlDate+sno);
                response.sendRedirect("checktickets.jsp");
            }
            catch (Exception e){
                e.printStackTrace();
            }%>
            
            
</html>
