<%-- 
    Document   : receiving chat by admin
    Created on : 16 Jun, 2020, 7:44:29 PM
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
            
         String uname=(String)session.getAttribute("username");
         out.println(uname);
                 String url="jdbc:mysql://localhost:3306/users";
            String username="root";
            String password="9234";
            String sql="select * from chat";
            try
            {
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection(url,username,password);
                PreparedStatement st=con.prepareStatement(sql);
                
                
                ResultSet rs=st.executeQuery();
                while(rs.next())
                {
                    if(rs.getString("user_name").equals(uname)||rs.getString("status").equals(uname))
                    {%>
                    <h3><%=rs.getString("user_name")%> :  <%=rs.getString("chat_data")%> at <%=rs.getString("date_time")%></h3><br>
                    <%
                       
                    }
                }
                
            
             }
                catch (Exception e)
                {
                    e.printStackTrace();
                }
           
                
        %>
    
        <a href="chat_area_user.jsp">my profile</a>
        
    </body>
</html>
