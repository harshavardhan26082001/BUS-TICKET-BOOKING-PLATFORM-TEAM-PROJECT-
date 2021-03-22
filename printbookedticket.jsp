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
        String uname=(String)session.getAttribute("username");
        String to=(String)session.getAttribute("destination");
        String Start_date1=(String)session.getAttribute("date");
        String sno=(String)session.getAttribute("sno");
        String seats=(String)session.getAttribute("seat");
        String total1=(String)session.getAttribute("total");
        String start_time=(String)session.getAttribute("start_time");
        String end_time=(String)session.getAttribute("et");
        //String from,to,Start_date1,sno,seats,total1,start_time,end_time;
        
%>
        





 


<%
response.setHeader("Cache-Control","no-cache,no-store,must-revalidate");
if(session.getAttribute("username")==null)
        {
            response.sendRedirect("login1.jsp");
        }
//String uname=(String)session.getAttribute("username");
          //  String Start_date1=(String)session.getAttribute("date");
       // String sno=(String)session.getAttribute("sno");
        //String seats=(String)session.getAttribute("seat");
        String url="jdbc:mysql://localhost:3306/users";
            String username="root";
            String password="9234";
            String sql="select * from booking_history where user_name='"+uname+"' and sno='"+sno+"'and date_of_journey='"+Start_date1+"' and seats='"+seats+"'   ";
            String mail=new String();
            //out.println(uname+Start_date1+sno+seats);
            try
            {
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection(url,username,password);
                PreparedStatement st=con.prepareStatement(sql);
                ResultSet rs=st.executeQuery(sql);
                while(rs.next())
                {
                        
                        session.setAttribute("ti",rs.getInt("trans_id"));
                        out.println(rs.getInt("trans_id"));
                        
                }
                
                
                
            }
             
                catch (Exception e)
                {
                    e.printStackTrace();
                }
response.sendRedirect("sendtickettomail.jsp");
              %>


  



    </body>
</html>