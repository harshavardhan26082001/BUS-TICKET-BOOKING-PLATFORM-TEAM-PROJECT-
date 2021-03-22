

package com.mycompany.kalki;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.*;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.ResultSet;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.time.LocalDate;
import java.lang.String;


@WebServlet(name="ticintodb", urlPatterns={"/ticintodb"})
public class ticintodb extends HttpServlet {
   
    

   

   
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException 
{
        String[] seats =request.getParameterValues("check_list");
       PrintWriter out=response.getWriter();
        String seat_arr=new String();
        int i;
        for(i=0;i<seats.length;i++)
        {
              seat_arr+=seats[i]+"," ;
        }
       
        
for(i=0;i<seats.length;i++)
{
            out.println("seats"+seats[i]);
}
        
        HttpSession session = request.getSession(false);
        String from=(String)session.getAttribute("start");
        String to=(String)session.getAttribute("destination");
        String date1=(String)session.getAttribute("date");
        String sno=(String)session.getAttribute("sno");
        String[] qwe =(String[])session.getAttribute("arr");
        for(i=0;i<qwe.length;i++)
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
         for(k=0;k<seats.length;k++)
         {
            for(j=0;j<qwe.length;j++)
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
            /*response.sendRedirect("tickets.jsp");*/
            out.println("kalki");
        }
        else
        {
            String url="jdbc:mysql://localhost:3306/mydatabase";
        String username="root";
        String password="9234";
        int a=30;
        //String sql="update buses_data set seat_num = CONCAT( IFNULL(seat_num,'"+seat_arr+"'), '"+seat_arr+"' )  WHERE `from`='"+from+"' AND `to`='"+to+"' AND `start_date`='"+sqlDate+"' AND service_num='"+sno+"'";
         String sql="UPDATE buses_data SET seat_num = CONCAT(REPLACE(LEFT(seat_num, INSTR(seat_num, 0)), 0,'"+seat_arr+"' ), SUBSTRING(seat_num, INSTR(seat_num, 0) + 1)) WHERE `from`='"+from+"' AND `to`='"+to+"' AND `start_date`='"+sqlDate+"' AND service_num='"+sno+"'";
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
        }
        
    }


}
