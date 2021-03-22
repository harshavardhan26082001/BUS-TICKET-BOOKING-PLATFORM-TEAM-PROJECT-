

<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
                 session.removeAttribute("username");
                 /*session.removeAttribute("wallet");
                 session.removeAttribute("trans_id");
                 session.removeAttribute("refund1");
                 session.removeAttribute("cost");
                 session.removeAttribute("len");
                 session.removeAttribute("arr");
                 session.removeAttribute("endt");
                 session.removeAttribute("");
                 session.removeAttribute("dt");*/
                session.invalidate();
                response.sendRedirect("welcome.jsp");





%>



    </body>
</html>
