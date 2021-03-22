
package com.mycompany.kalki;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet(name="randomnum", urlPatterns={"/randomnum"})
public class randomnum extends HttpServlet {
   
    

    

    
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException 
    {
        HttpSession session=request.getSession(false);  
        String n=(String)session.getAttribute("randomnum");  
        String num= request.getParameter("otp");
        if(num.equals(n))
        {
            response.sendRedirect("changepassword.jsp");
        }
        else
        {
            response.sendRedirect("randomnum.jsp");
        }
    }

    
}
