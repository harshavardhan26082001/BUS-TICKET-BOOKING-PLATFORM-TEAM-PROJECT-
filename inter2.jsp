<%-- 
    Document   : inter2
    Created on : 8 Jun, 2020, 7:55:42 PM
    Author     : Kalki Sumanth
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement,java.util.concurrent.TimeUnit"%>
<%@page import="java.sql.Connection,java.io.IOException,java.text.DateFormat,java.text.SimpleDateFormat,java.util.Calendar,java.util.Date,javax.servlet.http.*"%>

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
            String[] seats =request.getParameterValues("fruit");
        String seat_arr=new String();
        int i;Integer a2=-1,a3=-1;
try{
    a2=seats.length;
}catch(Exception e)
{
    e.printStackTrace();
}     


        if(a2==-1)
        {
            out.println("plz select anything");
                        RequestDispatcher rd=request.getRequestDispatcher("tickets1.jsp");  
                        rd.include(request, response);
        }
        else
        {



        for(i=0;i<a2;i++)
        {
              seat_arr+=seats[i]+"," ;
        }
        
            out.println("seats"+seat_arr);
        

            





            session.setAttribute("123",seats);
            session.setAttribute("noofselected",a2);
        session.setAttribute("seat",seat_arr);
        String dt =(String)session.getAttribute("dt");
        DateFormat formatter = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        Date date1 = new Date();
        try {
                   date1 = formatter.parse(dt);           
                } catch (Exception e) {
                   e.printStackTrace();
                }
        //out.println(formatter.format(date1));
         DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
            Date date = new Date();
          //  out.println(dateFormat.format(date));

            long duration=date1.getTime()-date.getTime();
             long diffInMinutes = TimeUnit.MILLISECONDS.toMinutes(duration);          
           //out.println(diffInMinutes);

           

           if(diffInMinutes<=180)
            {
                response.sendRedirect("welcome.jsp");
            }
            else
            {
                response.sendRedirect("checkticketsagain.jsp");
            }
}
           %>
           
    </body>
</html>
