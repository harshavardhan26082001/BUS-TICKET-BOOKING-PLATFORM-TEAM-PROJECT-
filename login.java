/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.kalki;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.*;  
import javax.servlet.http.*;  

/**
 *
 * @author Kalki Sumanth
 */
@WebServlet(urlPatterns = {"/login"})
public class login extends HttpServlet 
{
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException
    {
        String uname=request.getParameter("uname");
        String pass=request.getParameter("pass");
        //String type1=request.getParameter("type");
        /*String salt = passwordencryption.getSalt(30);
        String mySecurePassword = passwordencryption.generateSecurePassword(pass, salt);*/
        
        
        Logindao ld = new Logindao();
        
        if(ld.check(uname,pass))
        {
            
            HttpSession session = request.getSession();
            session.setAttribute("username",uname);
            response.sendRedirect("welcome.jsp");
        }
        else 
        {
            PrintWriter out =response.getWriter();
            out.println(uname+" "+"is logged in");
            RequestDispatcher rd=request.getRequestDispatcher("welcome.jsp");  
                rd.include(request, response);
            
//response.sendRedirect("login1.jsp");
        }
    }

    
   

    
    

    
}

