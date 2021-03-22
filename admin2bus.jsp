
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
            String uname=request.getParameter("val");
            String url="jdbc:mysql://localhost:3306/users";
            String username="root";
            String password="9234";
            String sql="select * from wallet_history where uname='"+uname+"'  ";
            try
            {
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection(url,username,password);
                PreparedStatement st=con.prepareStatement(sql);
                
                
                ResultSet rs=st.executeQuery();
                while(rs.next())
                {%>
                <h3><%=rs.getString(1)%> <%=rs.getString(2)%>  <%=rs.getString(3)%>  <%=rs.getString(4)%> <%=rs.getString(5)%></h3><br>
                <%}
                
            
             }
                catch (Exception e)
                {
                    e.printStackTrace();
                }







%>
    </body>
</html>
