   
package com.mycompany.kalki;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class admindao
{
    String sql="select * from admin_data where name=? and pass=?";
    String url="jdbc:mysql://localhost:3306/admin";
    String username="root";
    String password="9234";
    public boolean check(String uname,String pass)
    {
        try{
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection(url,username,password);
            
            
            PreparedStatement st=con.prepareStatement(sql);
            st.setString(2,uname);
            st.setString(3,pass);
            ResultSet rs = st.executeQuery();
            if(rs.next())
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



