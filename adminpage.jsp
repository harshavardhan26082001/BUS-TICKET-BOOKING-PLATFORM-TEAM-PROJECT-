<%-- 
    Document   : adminpage
    Created on : 26 May, 2020, 8:41:10 PM
    Author     : Kalki Sumanth
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection,java.io.*,java.text.DateFormat,java.text.SimpleDateFormat,java.util.Calendar,java.util.Date,javax.servlet.http.*"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
    
        <table border="1">
<tr>
<td>uname</td>
<td>fullname</td>
<td>dob</td>
<td>mob</td>
<td>email</td>
<td>wallet</td>
</tr>
        
        
        
        <%
            HttpSession session1 = request.getSession(false);
            String adminname=(String)session1.getAttribute("adminname");
            PrintWriter out1 = response.getWriter();  
            String sql="select * from admin_data";
    String url="jdbc:mysql://localhost:3306/admin";
    String username="root";
    String password="9234";
        try{
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection(url,username,password);
            PreparedStatement st=con.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while(rs.next())
            {
                if(adminname.equals("kalki"))
                {%>
                    <tr>
                <td><%=rs.getString("uname") %></td>
                <td><%=rs.getString("fname") %></td>
                <td><%=rs.getString("dob") %></td>
                <td><%=rs.getString("mob") %></td>
                <td><%=rs.getString("email") %></td>
                <td><%=rs.getInt("wallet") %></td>
                </tr>
                
                     
                      
                
                <%}
               
                else
                {
                        out1.print("Sorry UserName or Password Error!");  
                        RequestDispatcher rd=request.getRequestDispatcher("admin.jsp");  
                        rd.include(request, response); 
                }

                    


                
            
        }
}


        catch (Exception e){
            e.printStackTrace();
        }
            
        




            %>
            <form action="deletuser.jsp" method="post">
                    <input type="text" name="uname">UNAME</input>
                        <input type="submit">
                    </form>
    </body>
</html>
