

package com.mycompany.kalki;
import java.util.*;
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
import javax.servlet.http.HttpSession;


@WebServlet(name="emailverify", urlPatterns={"/emailverify"})
public class emailverify extends HttpServlet {
  
  
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException
     {
       String email=request.getParameter("email1");
       
                Random r =new Random();
                int num = r.nextInt(999999);
                String number=String.valueOf(num);
                //String.format("%06d", number);
                PrintWriter out = response.getWriter();  
                out.print("kalki");
                Sendemail2 se = new Sendemail2();
                se.mail(email,number);
                HttpSession session = request.getSession();
                session.setAttribute("otp",number);
                session.setAttribute("email1",email);
                response.sendRedirect("otp.jsp");
                PrintWriter out1 = response.getWriter();  
                out1.print("sumanth");

           
                /*PrintWriter out = response.getWriter();
                out.print("sumanth11");
                response.sendRedirect("register.jsp");*/
            
       



    }

   
} 
   