<%-- 
    Document   : server
    Created on : 13 Jun, 2020, 12:11:35 AM
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
        <%

if(session.getAttribute("username")==null)
        {
            response.sendRedirect("login1.jsp");
        }
                ServerSocket ss=new ServerSocket(3333);  
                Socket s=ss.accept();  
                DataInputStream din=new DataInputStream(s.getInputStream());  
                DataOutputStream dout=new DataOutputStream(s.getOutputStream());  
                BufferedReader br=new BufferedReader(new InputStreamReader(System.in));  
                String str="",str2="";  
                while(!str.equals("stop"))
                {  
                    str=din.readUTF();  
                    out.println("client says: "+str);  
                    str2=br.readLine();  
                    dout.writeUTF(str2);  
                    dout.flush();  
                }  
                din.close();  
                s.close();  
                ss.close();



%>
    </body>
</html>
