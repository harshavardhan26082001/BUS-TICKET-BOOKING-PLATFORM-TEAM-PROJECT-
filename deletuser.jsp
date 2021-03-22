<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection,java.io.*,java.text.DateFormat,java.text.SimpleDateFormat,java.util.Calendar,java.util.Date,javax.servlet.http.*"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
    </head>
    <body>
        <%



            String uname=request.getParameter("uname");
                String sql="delete  from user_data where uname='"+uname+"'";
        String url="jdbc:mysql://localhost:3306/users";
        String username="root";
        String password="9234";
        
        try{
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection(url,username,password);
            
            
            PreparedStatement st=con.prepareStatement(sql);
            st.executeUpdate();
            
            
        }
        catch (Exception e){
            e.printStackTrace();
        }
        RequestDispatcher rd=request.getRequestDispatcher("adminpage.jsp");  
                        rd.forward(request, response);
%>
    </body>
</html>
