<%-- 
    Document   : sample
    Created on : 31 May, 2020, 1:19:32 PM
    Author     : Kalki Sumanth
--%>

<%@page import="java.sql.Connection,java.sql.DriverManager,java.sql.PreparedStatement,java.sql.ResultSet" contentType="text/html" pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
    </head>
    <body>
        <%


if(session.getAttribute("username")==null)
        {
            response.sendRedirect("login1.jsp");
        }
            out.println("rrtrui");
            String sql="select * from buses_data where from=? and to=?";
    String url="jdbc:mysql://localhost:3306/mydatabase";
    String username="root";
    String password="9234";
    
        try{
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection(url,username,password);
            PreparedStatement st=con.prepareStatement(sql);
            String from="hyderabad";
            String to="vizag";
            out.println("guwdgyqiu");
            st.setString(1,from);
            st.setString(2,to);
            out.println("guwdgyqiu");
            ResultSet rs = st.executeQuery(sql);
            out.println("rrtrui");
            while(rs.next())
            {
                String f1=rs.getString("from");
                String f2=rs.getString("to");
                if(f1.equals(from)&&f2.equals(to))
                {
                    
                    out.print(rs.getString("service_num"));

            
            
        
                }
            }
            
        }
        catch (Exception e){
            e.printStackTrace();
        }
        %>
    </body>
</html>
