<%-- 
    Document   : wallettransaction
    Created on : 12 Jun, 2020, 1:42:53 PM
    Author     : Kalki Sumanth
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.ResultSet,com.mycompany.kalki.Sendemail2"%>
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
        String url="jdbc:mysql://localhost:3306/users";
            String username="root";
            String password="9234";
            String sql="select * from user_data where uname='"+uname+"'";
            String mail=new String();
            try
            {
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection(url,username,password);
                PreparedStatement st=con.prepareStatement(sql);
                ResultSet rs=st.executeQuery(sql);
                while(rs.next())
                {
                        mail=rs.getString("email");
                        
                        
                        
                }
                
                session.setAttribute("mail",mail);
                
            }
             
                catch (Exception e)
                {
                    e.printStackTrace();
                }
                
                
       String from=(String)session.getAttribute("start");
        //String uname1=(String)session.getAttribute("username");
        String to=(String)session.getAttribute("destination");
        String Start_date1=(String)session.getAttribute("date");
        String sno=(String)session.getAttribute("sno");
        String seats=(String)session.getAttribute("seat");
        String total1=(String)session.getAttribute("total");
        String start_time=(String)session.getAttribute("start_time");
        String end_time=(String)session.getAttribute("end_time");
        Integer id=(Integer)session.getAttribute("ti");
        out.println(id);
       String ticket = id+"\n"+from+"\n"+uname+"\n"+to+"\n"+Start_date1+"\n"+sno+"\n"+seats+"\n"+total1+"\n"+start_time+"\n" ;
       
       
                
                Sendemail2 se = new Sendemail2();
                se.mail(mail,ticket);
                response.sendRedirect("welcome.jsp");
 
%>
    </body>
</html>

