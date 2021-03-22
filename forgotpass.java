

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


@WebServlet(name="forgotpass", urlPatterns={"/forgotpass"})
public class forgotpass extends HttpServlet {
  
  
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException
     {
       String email=request.getParameter("email");
       String sql="select * from user_data where email='"+email+"'";
        String url="jdbc:mysql://localhost:3306/users";
        String username="root";
        String password="9234";
        
        try{
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection(url,username,password);
            
            
            PreparedStatement st=con.prepareStatement(sql);
            //st.setString(6,email);
            
            ResultSet rs = st.executeQuery();
            if(rs.next())
             {
                Random r =new Random();
                int num = r.nextInt(999999);
                String number=String.valueOf(num);
                //String.format("%06d", number);
                PrintWriter out = response.getWriter();  
                out.print("kalki");
                Sendemail2 se = new Sendemail2();
                se.mail(email,number);
                HttpSession session = request.getSession();
                session.setAttribute("randomnum",number);
                session.setAttribute("email",email);
                response.sendRedirect("randomnum.jsp");
                PrintWriter out1 = response.getWriter();  
                out1.print("sumanth");

            }
            else
            {
                PrintWriter out = response.getWriter();
                out.print("sumanth11");
                response.sendRedirect("forgotpass.jsp");
            }
             
            
        }
        catch (Exception e){
            e.printStackTrace();
        }
       



    }

   
} 
   