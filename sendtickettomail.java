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
import java.sql.*;
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
@WebServlet(name = "sendtickettomail", urlPatterns = {"/sendtickettomail"})
@MultipartConfig(maxFileSize = 16177215)
public class sendtickettomail extends HttpServlet {

    
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException
    {
        HttpSession session =request.getSession(false);
        String uname=(String)session.getAttribute("username");
        String url="jdbc:mysql://localhost:3306/users";
            String username="root";
            String password="9234";
            String sql="select * from user_data where uname='"+uname+"'";
            String mail=new String();
            try
            {
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection(url,username,password);
                PreparedStatement st=con.prepareStatement(sql);
                ResultSet rs=st.executeQuery(sql);
                while(rs.next())
                {
                        mail=rs.getString("email");
                        
                        
                        
                }
                
                session.setAttribute("mail",mail);
                
            }
             
                catch (Exception e)
                {
                    e.printStackTrace();
                }
                
                
       String from=(String)session.getAttribute("start");
       Integer id=(Integer)session.getAttribute("ti");
        //int id1=Integer.parseInt(id);
        String to=(String)session.getAttribute("destination");
        String Start_date1=(String)session.getAttribute("date");
        String sno=(String)session.getAttribute("sno");
        String seats=(String)session.getAttribute("seat");
        String total1=(String)session.getAttribute("total");
        String start_time=(String)session.getAttribute("start_time");
        String end_time=(String)session.getAttribute("endt");
       String ticket = id+"\n"+from+"\n"+uname+"\n"+to+"\n"+Start_date1+"\n"+sno+"\n"+seats+"\n"+total1+"\n"+start_time+"\n" ;
      
                
                Sendemail2 se = new Sendemail2();
                se.mail(mail,ticket);
                response.sendRedirect("welcome.jsp");
}
}