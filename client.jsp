<%@ page import="java.io.*, java.net.*" %>
<HTML>
    <HEAD>
        <TITLE>Creating Client/Server Applications</TITLE>
    </HEAD>

    <BODY>
        <H1>Creating Client/Server Applications</H1>
        <% 
        try{
            int character;
String ser="localhost";
            Socket socket = new Socket(ser, 9999);

            InputStream inSocket = socket.getInputStream();
            OutputStream outSocket = socket.getOutputStream();

            String str = "Hello!\n";
            byte buffer[] = str.getBytes();
            outSocket.write(buffer);

            while ((character = inSocket.read()) != -1) {
                out.print((char) character);
            }

            socket.close();
        }
        catch(java.net.ConnectException e){
        %>
            You must first start the server application 
            (YourServer.java) at the command prompt.
        <%
        }
        %>
    </BODY>
</HTML>