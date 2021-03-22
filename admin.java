package com.mycompany.kalki;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet(urlPatterns = {"/admin"})
public class admin extends HttpServlet 
{
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException
    {
        PrintWriter out=response.getWriter();
        String name=request.getParameter("uname");
        String pass=request.getParameter("pass");
        
        Admindao1 ld = new Admindao1();
        if(ld.check(name,pass))
        {
            HttpSession session = request.getSession();
            session.setAttribute("adminname",name);
            response.sendRedirect("adminpage.jsp");
        }
        else 
        {
            out.println(ld.check(name,pass));
            
            out.println("kalki");
            response.sendRedirect("admin.jsp");
        }
    }

    
   

    
    

    
}


