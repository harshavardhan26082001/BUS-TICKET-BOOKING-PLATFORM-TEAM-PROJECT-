

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
import java.util.concurrent.TimeUnit; 

@WebServlet(name="inter2", urlPatterns={"/inter2"})
public class inter2 extends HttpServlet 
{
   
  
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException
 {
        HttpSession session = request.getSession(false);
        String dt =(String)session.getAttribute("dt");
        DateFormat formatter = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        Date date1 = new Date();
        try {
                   date1 = formatter.parse(dt);           
                } catch (Exception e) {
                   e.printStackTrace();
                }
        //out.println(formatter.format(date1));
         DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
            Date date = new Date();
          //  out.println(dateFormat.format(date));

            long duration=date1.getTime()-date.getTime();
             long diffInMinutes = TimeUnit.MILLISECONDS.toMinutes(duration);          
           //out.println(diffInMinutes);
           if(diffInMinutes<=180)
            {
                response.sendRedirect("welcome.jsp");
            }
            else
            {
                response.sendRedirect("ticintodb");
            }

   }

    
}
