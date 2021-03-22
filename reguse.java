/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.kalki;


import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

/**
 *
 * @author Kalki Sumanth
 */
@WebServlet(name = "reguse", urlPatterns = {"/reguse"})
@MultipartConfig(maxFileSize = 16177215)
public class reguse extends HttpServlet {

    
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException
    {
        String uname=request.getParameter("uname");
        String pass1=request.getParameter("password_1");
        String dob=request.getParameter("dob");
        String pass2=request.getParameter("password_2");
        String phone=request.getParameter("phone");
        //Long mob=Long.parseLong(phone);
        String email=request.getParameter("email");
        String fname=request.getParameter("fullname");
        String wallet="0";
        HttpSession session1=request.getSession(false);  
        String em=(String)session1.getAttribute("email1");  
        InputStream inputStream = null;  
        Part filePart = request.getPart("myimg");
        if (filePart != null)
        {
            
           // System.out.println(filePart.getName());
            //System.out.println(filePart.getSize());
            //System.out.println(filePart.getContentType());
            inputStream = filePart.getInputStream();
        }
        
        
        
        
        
        if(pass1.equals(pass2)&&uname.length()!=0&&pass1.length()!=0&&email.equals(em))
        {

            String salt = passwordencryption.getSalt(30);
        String mySecurePassword = passwordencryption.generateSecurePassword(pass1, salt);
            String url="jdbc:mysql://localhost:3306/users";
            String username="root";
            String password="9234";
            String sql="insert into user_data values(?,?,?,?,?,?,?,?,?)";
            try
            {
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection(url,username,password);
                PreparedStatement st=con.prepareStatement(sql);
                st.setString(1, uname);
                st.setString(2,mySecurePassword);
                st.setString(3,fname);
                st.setString(4,dob);
                st.setString(5,phone);
                st.setString(6,email);
                st.setString(8,wallet);
                st.setString(9,salt);
                if (inputStream != null)
                {
                    st.setBlob(7, inputStream);
                }
                int count= st.executeUpdate();
                System.out.println(count);
            
             }
                catch (Exception e)
                {
                    e.printStackTrace();
                }
                /*finally
                {
                    if (con != null)
                    {

                        try 
                        {
                            con.close();
                        } 
                        catch (Exception ex)
                        {
                            ex.printStackTrace();
                        }
                    }
                }*/
            HttpSession session = request.getSession();
            session.setAttribute("username",uname);
            response.sendRedirect("login1.jsp");
        }
        else
        {
            response.sendRedirect("register.jsp");
        }
    }

    
}

