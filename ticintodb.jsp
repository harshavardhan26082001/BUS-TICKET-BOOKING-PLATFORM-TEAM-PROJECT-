

<%@page contentType="text/html" pageEncoding="UTF-8"%><%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement,java.util.concurrent.TimeUnit"%>
<%@page import="java.sql.Connection,java.io.IOException,java.text.DateFormat,java.text.SimpleDateFormat,java.util.Calendar,java.util.Date,javax.servlet.http.*"%>

<!DOCTYPE html>
<html>
    <head>
        
        <%
          //String[] seats =request.getParameterValues("check_list");
        //String seat_arr=new String();
        int i;int a2=-1,a3=-1;
if(session.getAttribute("username")==null)
        {
            response.sendRedirect("login1.jsp");
        }
       String seat_arr=(String)session.getAttribute("seat");  
   out.println("seat"+seat_arr);
    String from=(String)session.getAttribute("start");
        String to=(String)session.getAttribute("destination");
        String date1=(String)session.getAttribute("date");
        String sno=(String)session.getAttribute("sno");
        String[] qwe =(String[])session.getAttribute("arr");    
        String[] seats =(String[])session.getAttribute("123");
 try{
    a3=qwe.length;
}catch(Exception e)
{
    e.printStackTrace();
}     
try{
    a2=seats.length;
}catch(Exception e)
{
    e.printStackTrace();
}     
        
        
        
        for(i=0;i<a3;i++)
{
            out.println("qwe"+qwe[i]);
}
        DateFormat formatter= new SimpleDateFormat("yyyy-MM-dd");
        Date date2 =new Date();
        String output;
        try {
           date2 = formatter.parse(date1);           
        } catch (Exception e) {
           e.printStackTrace();
        }
        java.sql.Date sqlDate = new java.sql.Date(date2.getTime());
        int a1=0,k,j;
         for(k=0;k<a2;k++)
         {
            for(j=0;j<a3;j++)
            {
                if(seats[k].equals(qwe[j]))
                {
                    a1=1;
                    if(a1==1)
                    {
                        break;
                    }
                }
            }
         }
       // out.println(sqlDate);
        if(a1==1)
        {
            response.sendRedirect("tickets1.jsp");
            //out.println("kalki");
        }
        else
        {
            String url="jdbc:mysql://localhost:3306/mydatabase";
        String username="root";
        String password="9234";
        int a=30;
        String sql="update buses_data set seat_num = CONCAT( IFNULL(seat_num,'"+seat_arr+"'), '"+seat_arr+"' )  WHERE `from`='"+from+"' AND `to`='"+to+"' AND `start_date`='"+sqlDate+"' AND service_num='"+sno+"'";
         //String sql="UPDATE buses_data SET seat_num = CONCAT(REPLACE(LEFT(seat_num, INSTR(seat_num, 0)), 0,'"+seat_arr+"' ), SUBSTRING(seat_num, INSTR(seat_num, 0) + 1)) WHERE `from`='"+from+"' AND `to`='"+to+"' AND `start_date`='"+sqlDate+"' AND service_num='"+sno+"'";
        try
            {
                
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection(url,username,password);
                PreparedStatement st=con.prepareStatement(sql);
                
                //st.setString(12,seat_arr);
                st.executeUpdate(sql);        
            }
            catch (Exception e){
                e.printStackTrace();
            }
         response.sendRedirect("printbookedticket.jsp"); 
        }
    %>
    </head>
    <body>
        
    </body>
</html>
