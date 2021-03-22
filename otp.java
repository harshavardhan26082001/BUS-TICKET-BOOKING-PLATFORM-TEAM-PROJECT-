
package com.mycompany.kalki;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet(name="otp", urlPatterns={"/otp"})
public class otp extends HttpServlet {
   
    

    

    
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException 
    {
        HttpSession session=request.getSession(false);  
        String n=(String)session.getAttribute("otp");  
        String num= request.getParameter("id");
        if(num.equals(n))
        {
            response.sendRedirect("register.jsp");
        }
        else
        {
            response.sendRedirect("otp.jsp");
        }
    }

    
}
