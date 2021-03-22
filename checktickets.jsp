<%-- 
    Document   : checktickets
    Created on : 3 Jun, 2020, 11:40:48 PM
    Author     : Kalki Sumanth
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement,java.util.concurrent.TimeUnit"%>
<%@page import="java.sql.Connection,java.io.IOException,java.text.DateFormat,java.text.SimpleDateFormat,java.util.Calendar,java.util.Date,javax.servlet.http.*"%>

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
         String url="jdbc:mysql://localhost:3306/mydatabase";
        String username="root";
        String password="9234";
        int a=30;int cost=0;
        String sql="SELECT * FROM buses_data WHERE `from`='"+from+"' AND `to`='"+to+"' AND `start_date`='"+sqlDate+"' AND `service_num`='"+sno+"'";
            try
            {
                
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection(url,username,password);
                PreparedStatement st=con.prepareStatement(sql);
                
                //st.setString(12,seat_arr);
               ResultSet rs= st.executeQuery(sql);     
               String abc=new String();
               
               
               while(rs.next())
               {
                   abc=rs.getString("seat_num");
                   %>
                   <h2><%=abc%></h2>
                   <%cost=rs.getInt("cost");%>
                   
                <%}
                String[] qwe=abc.split(",");
                session.setAttribute("len",qwe.length);
                session.setAttribute("arr",qwe);
                session.setAttribute("cost",cost);
                session.setAttribute("endt",rs.getString("end_time"));
                out.println(qwe.length+qwe[0]);
            }
            catch (Exception e){
                e.printStackTrace();
            }
            
%>

    <%
        String dt =(String)session.getAttribute("dt");
        DateFormat formatter1 = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        Date date3 = new Date();
        try {
                   date3 = formatter1.parse(dt);           
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
            
            
                   
                    if(diffInMinutes<=180)
                    {
                        response.sendRedirect("display.jsp");
                    }
                    else
                    {
                        
                        response.sendRedirect("tickets1.jsp");
                    }
                
            %>    
                
              
    
    
    
    
    
    
    
    
    
    
    </body>
</html>
