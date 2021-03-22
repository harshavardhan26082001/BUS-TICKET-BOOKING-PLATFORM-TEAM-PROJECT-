<%-- 
    Document   : printticket
    Created on : 9 Jun, 2020, 4:53:47 PM
    Author     : Kalki Sumanth
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%><%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement,java.util.concurrent.TimeUnit"%>
<%@page import="java.sql.*,java.io.*,java.text.DateFormat,java.text.SimpleDateFormat,java.util.Calendar,java.util.Date,javax.servlet.http.*"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
.container {
   color:#3B6182;

  position: relative;
  text-align: center;
  color: white;
}

.bottom-left {
    color:#3B6182;
  position: absolute;
  bottom: 8px;
  left: 16px;
}

.top-left {
    color:#3B6182;
  position: absolute;
  top: 8px;
  left: 16px;
}

.top-right {
    color:#3B6182;
  position: absolute;
  top: 8px;
  right: 16px;
}

.bottom-right {
    color:#3B6182;
  position: absolute;
  bottom: 8px;
  right: 16px;
}

.centered {
    color:#3B6182;
  position: absolute;
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%);
}
</style>
    </head>
    <body>
        <%
            
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
                Blob image = null;
                
                byte[ ] imgData = null ;
                String url="jdbc:mysql://localhost:3306/mydatabase";
                String username="root";
                String password="9234";
                int a=30;
        String sql="select * from buses_data  WHERE `from`='"+from+"' AND `to`='"+to+"' AND `start_date`='"+sqlDate+"' AND service_num='"+sno+"'";
         try
            {
                
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection(url,username,password);
                PreparedStatement st=con.prepareStatement(sql);
                ResultSet rs = st.executeQuery(sql);
                if (rs.next()) 
            {
                image = rs.getBlob("ticket");
                imgData = image.getBytes(1,(int)image.length());
                Time timeObj1 = rs.getTime("start_time");
                Time timeObj2 = rs.getTime("end_time");
                String bus_type=rs.getString("bus_type");
                int cost=rs.getInt("cost");
            }
            else {
                out.println("Display Blob Example");
                out.println("image not found for given id>");
                
                }
                response.setContentType("image/jpg");
                OutputStream o = response.getOutputStream();
                o.write(imgData);
                o.flush();
                o.close();
                FileOutputStream fout=new FileOutputStream("C:/Users/Kalki Sumanth/Downloads/abc.jpg");  
                fout.write(imgData);  

                fout.close();  
                } catch (Exception e) {
                out.println("Unable To Display image");
                out.println("Image Display Error=" + e.getMessage());
                
                }
%>

        <div class="container">
  <img src="C:/Users/Kalki Sumanth/Downloads/abc.jpg" alt="Snow" style="width:100%;">
  <div class="bottom-left">${start_time}</div>
  <div class="top-left">${end_time}</div>
  <div class="top-right">${bus_type}</div>
  <div class="bottom-right">${cost}</div>
  <div class="centered">${sno}</div>
</div>
    </body>
</html>
