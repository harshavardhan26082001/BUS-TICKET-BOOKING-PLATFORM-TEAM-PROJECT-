<%-- 
    Document   : inter
    Created on : 4 Jun, 2020, 12:41:56 AM
    Author     : Kalki Sumanth
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>jfbdkj</h1>
        <%


if(session.getAttribute("username")==null)
        {
            response.sendRedirect("login1.jsp");
        }
            session.setAttribute("sno",request.getParameter("sno"));
            response.sendRedirect("timecheck.jsp");
            %>
    </body>
</html>
