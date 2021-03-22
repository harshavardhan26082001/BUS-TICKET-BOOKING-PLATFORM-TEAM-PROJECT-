

package com.mycompany.kalki;

import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.*;

/**
 *
 * @author Kalki Sumanth
 */
@WebServlet(name="wallet", urlPatterns={"/wallet"})
public class wallet extends HttpServlet {
   
    
   

    
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException 
{
       HttpSession session = request.getSession(false);
        String uname=(String)session.getAttribute("username");
        String wallet=(String)session.getAttribute("card");
        
        String url="jdbc:mysql://localhost:3306/users";
            String username="root";
            String password="9234";
            String sql="update user_data set wallet=wallet+'"+wallet+"' where uname = '"+uname+"'";
            try
            {
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection(url,username,password);
                PreparedStatement st=con.prepareStatement(sql);
                
                
                st.executeUpdate();
                
            
             }
                catch (Exception e)
                {
                    e.printStackTrace();
                }
                HttpSession session1= request.getSession();
                session1.setAttribute("money",wallet);
                RequestDispatcher rd=request.getRequestDispatcher("wallettransaction.jsp");  
                rd.forward(request, response);

    }

    
}
