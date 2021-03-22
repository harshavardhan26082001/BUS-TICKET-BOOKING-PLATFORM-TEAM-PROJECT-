
package com.mycompany.kalki;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.time.LocalDate;


@WebServlet(name="Sample", urlPatterns={"/Sample"})
public class Sample extends HttpServlet 
{ 
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException
    {
         /*Calendar cal = Calendar.getInstance();
        Date date=cal.getTime();
        DateFormat dateFormat = new SimpleDateFormat("HH:mm:ss");
        String formattedDate=dateFormat.format(date);
        PrintWriter out=response.getWriter();
        out.println(formattedDate);
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
        Calendar c = Calendar.getInstance();
        Calendar d = Calendar.getInstance();
        c.setTime(new Date()); // Now use today date.
        String output1 = sdf.format(c.getTime());
        out.println(output1);
        d.add(Calendar.DATE, +1); // Adding 5 days
        String output = sdf.format(d.getTime());
        out.println(output);
        String []a=output.split("-");
           out.println(a[2]);*/
        java.util.Date date11=new java.util.Date();
        java.sql.Date sqlDate=new java.sql.Date(date11.getTime());
	java.sql.Timestamp sqlTime=new java.sql.Timestamp(date11.getTime());
        String abc="HVA123";
        
        
            
String a2="20";
String b1="30";

        String sql="update `buses_data` set `start_date` = start_date+interval 1 day,`end_data`=end_data+interval 1 day,`no of tickets`='"+a2+"'  where `start_date` ='"+sqlDate+"' ";
    String url="jdbc:mysql://localhost:3306/mydatabase";
    String username="root";
    String password="9234";
    
        try{
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection(url,username,password);
            PreparedStatement st=con.prepareStatement(sql);
            String from="hyderabad";
            String to="vizag";
            
            st.executeUpdate();
            /*while(rs.next())
            {
                String f1=rs.getString("from");
                String f2=rs.getString("to");
                if(f1.equals(from)&&f2.equals(to))
                {
                    //PrintWriter out=response.getWriter();
                    out.print(rs.getString("service_num"));

                
                }
            }*/
            
        }
        catch (Exception e){
            e.printStackTrace();
        }
        





    }
}

    
