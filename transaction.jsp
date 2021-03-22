<%-- 
    Document   : paymentfromwallet
    Created on : 11 Jun, 2020, 3:52:16 PM
    Author     : Kalki Sumanth
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement,java.util.concurrent.TimeUnit"%>
<%@page import="java.sql.*,java.io.IOException,java.text.DateFormat,java.text.SimpleDateFormat,java.util.Calendar,java.util.Date,javax.servlet.http.*"%>

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
                String from=(String)session.getAttribute("start");
                String to=(String)session.getAttribute("destination");
                String uname=(String)session.getAttribute("username");
                String sno=(String)session.getAttribute("sno");
                String seats=(String)session.getAttribute("seat");
                String total1=(String)session.getAttribute("total");
                
                
                int total= 0;
                  try
            {
                total= Integer.parseInt(total1);
                //total=2500;
            }
            catch(Exception e2)
            {
                e2.printStackTrace();
            }
                String date1=new String();
                try {
                        date1=(String)session.getAttribute("date"); 
                        out.println(date1);
                } catch (Exception e) {
                   e.printStackTrace();
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
                out.println(sqlDate);
                int sn=3;
                 DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
                    Date date3 = new Date();  
                    String sqlDate2 = dateFormat.format(date3);
                   // String uname=(String)session.getAttribute("username");
                String url="jdbc:mysql://localhost:3306/users";
            String username="root";
            String password="9234";
            String status="booked";
            //String sql="insert into booking_history values user_name='"+uname+"' sno='"+sno+"'  from='"+sno+"' to='"+to+"' date_of_journey='"+sqlDate+"' seats='"+seats+"' total_cost='"+total+"'  trans_id=trans_id+1";
           String sql="insert into booking_history values('"+uname+"','"+from+"','"+to+"','"+sno+"','"+sqlDate+"','"+seats+"','"+total+"',trans_id=trans_id+1,'"+sqlDate2+"','"+status+"')";
//String sql="insert into booking_history values(?,?,?,?,?,?,?,?)";
             try
            {
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection(url,username,password);
                PreparedStatement st=con.prepareStatement(sql);
                //st.setString(2,uname);
                //st.setDate(9,sqlDate2);
                /*st.setString(3,from);
                st.setString(4,to);
                st.setString(5,sno);
                st.setDate(6,sqlDate);
                st.setInt(8,total);
                st.setString(7,seats);
                st.setInt(1,sn);*/
                st.executeUpdate();
                
            
             }
                catch (Exception e)
                {
                    e.printStackTrace();
                }
               RequestDispatcher rd=request.getRequestDispatcher("walletdebit.jsp");  
                rd.forward(request, response);

%>      
    </body>
</html>
