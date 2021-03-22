   
package com.mycompany.kalki;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.io.*;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class Admindao1
{
    
    public boolean check(String uname,String pass)
    {
        String sql="select * from admin_data where name='"+uname+"' and pass='"+pass+"'";
        String url="jdbc:mysql://localhost:3306/admin";
        String username="root";
        String password="9234";
        
        try{
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection(url,username,password);
            
            
            PreparedStatement st=con.prepareStatement(sql);
            //st.setString(2,uname);
            //  st.setString(3,pass);
            ResultSet rs = st.executeQuery();
            while(rs.next())
            {
                
                return true;
            }
            
        }
        catch (Exception e){
            e.printStackTrace();
        }
        return false;
    }
    
}




