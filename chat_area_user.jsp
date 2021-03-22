<%-- 
    Document   : chat_area_user
    Created on : 16 Jun, 2020, 4:07:12 PM
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
        


        
        
        
        
        
        
        <form method="post" action="chat_user.jsp">
            <textarea  name="chat" rows="4" cols="50">
  </textarea>
  <br>
  <input type="submit" value="Send">
        </form>
    </body>
    <% String uname=(String)session.getAttribute("username");%>
    <a href="myprofile.jsp">my profile</a>
    <a href="receive_chat_by_user.jsp">see chat</a>
</html>
