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
            String uname=(String)session.getAttribute("username");
        String wallet1=(String)session.getAttribute("money");
int wallet=0;
try{
        wallet=Integer.parseInt(wallet1);}
catch(Exception f)
{
    f.printStackTrace();
}
        DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
                    Date date3 = new Date(); 
                    String sqlDate2 = dateFormat.format(date3); 
                    out.println(wallet+uname+sqlDate2);
                    //java.sql.Date sqlDate2 = new java.sql.Date(date3.getTime());
        String status="credit";
        String url="jdbc:mysql://localhost:3306/users";
            String username="root";
            String password="9234";
            String sql="insert into wallet_history values(id=id+1,'"+uname+"','"+wallet+"','"+sqlDate2+"','"+status+"')";
            try
            {
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection(url,username,password);
                PreparedStatement st=con.prepareStatement(sql);
                
                
                st.executeUpdate();
                
            
             }
                catch (Exception e)
                {
                    e.printStackTrace();
                }
                
                RequestDispatcher rd=request.getRequestDispatcher("welcome.jsp");  
                rd.forward(request, response);
%>
    </body>
</html>
