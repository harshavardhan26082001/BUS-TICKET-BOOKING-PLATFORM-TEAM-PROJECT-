<%-- 
    Document   : display
    Created on : 4 Jun, 2020, 5:35:39 PM
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
        <h1>SORRY!TIME UP</h1>
        <form>
            <button type="submit" onclick="foo()">GO TO HOME</button>
            
                
        </form>
        <script>
            function foo()
            {
                <% response.sendRedirect("welcome.jsp");%>
            }
            </script>
    </body>
</html>
