<%-- 
    Document   : myprofile
    Created on : 12 Jun, 2020, 1:17:15 PM
    Author     : Kalki Sumanth
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement,java.util.concurrent.TimeUnit,java.awt.*,java.io.*,javax.imageio.ImageIO,java.awt.image.BufferedImage"%>
<%@page import="java.sql.*,java.io.*,java.text.DateFormat,java.text.SimpleDateFormat,java.util.Calendar,java.util.Date,javax.servlet.http.*,java.awt.image.*,org.imgscalr.*"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            Blob image = null;
           
                
                byte[ ] imgData = null ;
            String uname=(String)session.getAttribute("username");
            String url="jdbc:mysql://localhost:3306/users";
            String username="root";
            String password="9234";
           String sql="select * from user_data where uname='"+uname+"'";
             try
            {
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection(url,username,password);
                PreparedStatement st=con.prepareStatement(sql);
                ResultSet rs=st.executeQuery(sql);
                while(rs.next())
                {
        
                            image = rs.getBlob("image");
                imgData = image.getBytes(1,(int)image.length());
        %>
                        <h2><%=rs.getString(1)%></h2>
                        <h2><%=rs.getString(3)%></h2>
                        <a href="updatename.jsp">update</a>
                        <h2><%=rs.getString(4)%></h2>
                        <a href="updatedob.jsp">update</a>
                        <h2><%=rs.getString(5)%></h2>
                        <a href="updatemob.jsp">wallet transaction</a>
                        <h2><%=rs.getString(6)%></h2>
                        <h2><%=rs.getString(8)%></h2>
                        <a href="wallethistory.jsp">wallet transaction</a>
                        <a href="bookinghistory.jsp">booking history</a>
                        <a href="welcome.jsp">home page</a>
                        
                <%}

             
                /*response.setContentType("image/jpg");
                OutputStream o = response.getOutputStream();
                
                
                o.write(imgData);
                o.flush();
                o.close();*/
                //int width =500, height = 500;%>
                
<%
               /* private static BufferedImage resize(BufferedImage img, int height, int width)
                {
                       Image tmp = img.getScaledInstance(width, height, Image.SCALE_SMOOTH);
                       BufferedImage resized = new BufferedImage(width, height, BufferedImage.TYPE_INT_ARGB);
                       Graphics2D g2d = resized.createGraphics();
                       g2d.drawImage(tmp, 0, 0, null);
                       g2d.dispose();
                       return resized;
                   }*/

                
               
                FileOutputStream fout=new FileOutputStream("C:/Downloads/kalki19.jpg");  
                fout.write(imgData);  %>
                <img src="C:/Downloads/kalki.jpg" width="100" heigth="100">
               <% fout.close();


               

		/*File input = new File("c:/Downloads/kalki18.jpg");
        BufferedImage image = ImageIO.read(input);

        BufferedImage resized = resize(image, 100, 100);

        File output = new File("c:/Downloads/kalki108.png");
        ImageIO.write(resized, "png", output);*/

	


                } catch (Exception e) {
                out.println("Unable To Display image");
                out.println("Image Display Error=" + e.getMessage());
                
                }
%>
    </body>
</html>
