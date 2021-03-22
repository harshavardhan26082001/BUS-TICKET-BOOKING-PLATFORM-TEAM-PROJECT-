

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
import javax.servlet.http.HttpSession;


@WebServlet(name="changepassword", urlPatterns={"/changepassword"})
public class changepassword extends HttpServlet {
   
    
    
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException
 {

        HttpSession session3 = request.getSession(false);
        String mail=(String)session3.getAttribute("email");
        String pass1 =request.getParameter("password_1");
        String pass2 =request.getParameter("password_2");
            String salt = passwordencryption.getSalt(30);
        String mySecurePassword = passwordencryption.generateSecurePassword(pass1, salt);
        PrintWriter out=response.getWriter();
        out.println(mySecurePassword);
        if(pass1.equals(pass2))
        {
            
       String sql="update `user_data` set `pass` = '"+mySecurePassword+"', salt='"+salt+"' where `email` = '"+mail+"'";
        String url="jdbc:mysql://localhost:3306/users";
        String username="root";
        String password="9234";
        
        try{
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection(url,username,password);
            
            
            PreparedStatement st=con.prepareStatement(sql);
            //st.setString(6,mail);
            
            int rs = st.executeUpdate();
            
         if(rs==1)
         {
             response.sendRedirect("login1.jsp"); 
         }
         else
         {
            response.sendRedirect("changepassword.jsp");
        }

        HttpSession session =request.getSession();
        session.removeAttribute("email");
        session.invalidate();
        HttpSession session1 =request.getSession();
        session1.removeAttribute("randomnum");
        session1.invalidate();
            
        }
        catch (Exception e){
            e.printStackTrace();
        }









        }
        else
        {
            response.sendRedirect("changepassword.jsp");
        }

    }

    

}
