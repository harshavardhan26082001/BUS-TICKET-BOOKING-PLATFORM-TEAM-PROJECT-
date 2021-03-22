/*<%-- 
    Document   : welcome
    Created on : 27-Apr-2020, 6:20:51 PM
    Author     : Kalki Sumanth
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
    </head>
    <%
        response.setHeader("Cache-Control","no-cache,no-store,must-revalidate");
        
        if(session.getAttribute("username")==null)
        {
            response.sendRedirect("login1.jsp");
        }
        %>
    <body>
        <form action="selectbus.jsp" method="post">
            <div class="input-group">
  		<label for="cities">FROM</label>
                <select  name="from">
                  <option value="hyderabad">HYDERABAD</option>
                  <option value="vizag">VIZAG</option>
                  <option value="chennai">CHENNAI</option>
                  <option value="banglore">BANGLORE</option>
                </select>
  	</div>
            <div class="input-group">
  		<label for="cities">TO</label>
                <select  name="to">
                  <option value="hyderabad">HYDERABAD</option>
                  <option value="vizag">VIZAG</option>
                  <option value="chennai">CHENNAI</option>
                  <option value="banglore">BANGLORE</option>
                </select>
  	</div>
            <div>
                
                <input type= "date" class="datepicker" name = "date"/>
            </div>
            <input type="submit">
            <a href="wallet.jsp">ADD AMOUNT INTO UR WALLET</a>
            <a href="myprofile.jsp">my profile</a>
            <a href="cancelticket.jsp">cancel ticket</a>
        </form> 
        
    </body>
</html>*/


package com.mycompany.kalki;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.time.LocalDate;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.ResultSet;
/**
 *
 * @author Kalki Sumanth
 */
@WebServlet(name="selectbus", urlPatterns={"/selectbus"})
public class selectbus extends HttpServlet
 {
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException
     {
        String from;
        String to;
        PrintWriter out=response.getWriter();
        from=request.getParameter("from");
        to=request.getParameter("to");
        out.println(from+to);
        out.println("kalki1");
        String date1=request.getParameter("date");
        DateFormat formatter= new SimpleDateFormat("yyyy-MM-dd");
        Date date2 =new Date();
        String output;
        try {
           date2 = formatter.parse(date1);
//           output = outputFormat.format(date2);
        } catch (Exception e) {
           e.printStackTrace();
        }
        

        java.sql.Date sqlDate = new java.sql.Date(date2.getTime());
        String url="jdbc:mysql://localhost:3306/mydatabase";
        String username="root";
        String password="9234";
        String sql="select * from buses_data where from=?,to=?,start_date=?";
        int a=0;
        response.setContentType("text/html");  
         //out.println("<html><body>"); 
         try
            {
                out.println("sumanth");
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection(url,username,password);
                PreparedStatement st=con.prepareStatement(sql);
                st.setString(1,from);
                st.setString(2,to);
                st.setDate(9,sqlDate);
                PrintWriter out1=response.getWriter();
                out1.println("afisbgiwu");
                ResultSet rs = st.executeQuery(sql);
                out1.println("kalki");
                while(rs.next())
                {
                   out1.println(rs.getString(1));
                   out1.println(rs.getString(2));
                   out1.println(rs.getDate(9));
                   out1.println(rs.getDate(10));
                   out1.println(rs.getString(4));
                   out1.println(rs.getString(3));
                   out1.println(rs.getInt(8));
                }
                    out.println("fhbakjhbf");
            }
            catch (Exception e){
                e.printStackTrace();
            }
        












    }

    
}
/*<%-- 
    Document   : new_login
    Created on : 30-Mar-2020, 2:29:45 pm
    Author     : Madhu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>LOGIN Page</title>
        
        <style>
    * {
  margin: 0px;
  padding: 0px;
}
body {
  font-size: 120%;
  background: #F8F8F8;
  background-image: linear-gradient(to right, #43e97b 0%, #38f9d7 100%);
}

.header {
  width: 30%;
  margin: 50px auto 0px;
  color: white;
  background: #3e8e41;
  text-align: center;
  border: 1px solid #B0C4DE;
  border-bottom: none;
  border-radius: 10px 10px 0px 0px;
  padding: 30px;
}
form, .content {
  width: 30%;
  margin: 0px auto;
  padding: 30px;
  border: 1px solid #B0C4DE;
  background: #99ff99;
  border-radius: 0px 0px 10px 10px;
}
.input-group {
  margin: 10px 0px 10px 0px;
}
.radio{
    margin: 8px 0px 8px 0px;
}
.radio label{
  margin: 0px;
}
.radio input {
  height: 20px;
  width: 10%;
  padding: 2px 10px;
  font-size: 10px;
}
.input-group label {
  display: block;
  text-align: left;
  margin: 3px;
}
.input-group input {
  height: 30px;
  width: 93%;
  padding: 5px 10px;
  font-size: 16px;
  border-radius: 5px;
  border: 1px solid gray;
}.btn {
  background-color: #ddd;
  border: none;
  color: black;
  padding: 10px 10px;
  text-align: center;
  font-size: 16px;
  margin-top: 5px;
  transition: 0.3s;
}

.btn:hover {
  background-color: #3e8e41;
  color: white;
}
</style>
    </head>
    <body>
       <div class="header">
  	<h2>Login</h2>
       </div>
        
          <form method="post" action="login">
              <div class="radio">
                 User Type:
                 <br>
                 <br>
  		<input type="radio" name="type" value="admin" >
                <label>Admin</label>
  		<input type="radio" name="type" value="user" >
                <label>User</label>
  	</div>
  	<div class="input-group">
  		<label>Username:</label>
  		<input type="text" name="uname" placeholder="username" >
  	</div>
  	<div class="input-group">
  		<label>Password:</label>
  		<input type="password" name="pass" placeholder="password">
  	</div>
              ${message}
  	<div class="input-group">
  		<button type="submit" class="btn" name="login_user">Login</button>
  	</div>
              
  	<p>
  		Not yet a member? <a href="emailverify.jsp">Sign up</a>
  	</p>
        <br>
        <p>
            <a href="forgotpass.jsp">FORGOT PASSWORD?</a>
        </p>
        
  </form>
        
    </body>
</html>
*/