    /*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.kalki;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class Logindao
{
    String sql="select * from user_data where uname=? ";
    String url="jdbc:mysql://localhost:3306/users";
    String username="root";
    String password="9234";
    public boolean check(String uname,String pass)
    {
        boolean status=false;
        try{
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection(url,username,password);
            if(con!=null)
            {
                System.out.println("connected");
            }
            else
            {
                System.out.println("notconnected");
            }
            
            
            PreparedStatement st=con.prepareStatement(sql);
            st.setString(1,uname);
            //st.setString(2,pass);
            ResultSet rs = st.executeQuery();
            if(rs.next())
            {
                boolean passwordMatch = passwordencryption.verifyUserPassword(pass, rs.getString("pass"),rs.getString("salt"));
                
                if(passwordMatch)
                {
                    status=true;
                }
                else
                {
                    status=false;
                }
                
            }
            
        }
        catch (Exception e){
            e.printStackTrace();
        }
        return status;
    }
    
}


