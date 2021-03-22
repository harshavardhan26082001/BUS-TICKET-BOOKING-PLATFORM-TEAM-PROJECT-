<%-- 
    Document   : practice
    Created on : 4 Jun, 2020, 1:10:52 PM
    Author     : Kalki Sumanth
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.Connection,java.util.concurrent.TimeUnit,java.io.IOException,java.text.DateFormat,java.text.SimpleDateFormat,java.util.*,java.util.Date,javax.servlet.http.*"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            String dt ="2020-06-05 10:00:00";
        DateFormat formatter1 = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        Date date3 = new Date();
        try {
                   date3 = formatter1.parse(dt);           
                } catch (Exception e) {
                   e.printStackTrace();
                }
        out.println(formatter1.format(date3));
         DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
            Date date4 = new Date();
            out.println(dateFormat.format(date4));

            long duration=date3.getTime()-date4.getTime();
             long diffInMinutes = TimeUnit.MILLISECONDS.toMinutes(duration);
             out.println(diffInMinutes);
%>
    </body>
</html>
