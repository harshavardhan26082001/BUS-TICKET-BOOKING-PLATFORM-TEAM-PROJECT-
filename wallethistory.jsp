<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html>
<html>
<head>
   
<style>
body {
  background-image: url('https://images.unsplash.com/photo-1544620347-c4fd4a3d5957?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&w=1000&q=80');
  background-repeat: no-repeat;
  background-size: cover;
}
div.a {
  border-style: inset; 
  border-bottom-color: grey;
  margin-left: 650px;
  border-color: #ff6666;
  border-radius: 8px;
  
}
div.b {
  text-align: center;
    text-decoration-style: wavy;
  text-decoration-color: red;
}
.f
{
  margin-left: 20px;
  color:yellow;
}
.dot {
  margin-left: 40px;
  height: 10px;
  width: 10px;
  background-color: blue;
  border-radius: 50%;
  display: inline-block;
  
}
.dot1 {
  margin-left: 40px;
  height: 10px;
  width: 10px;
  background-color: green;
  border-radius: 50%;
  display: inline-block;
  
}
.e{
  margin-left: 40px;
  color:blue;
  margin-top: -10px;
  }
.f{color:blue;
}

div.d
{
  margin-left: 60px;
}
.button {
  background-color: #4CAF50; /* Green */
  border: none;
  color: white;
  padding: 16px 32px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  margin-top: -200px;
  transition-duration: 0.4s;
  cursor: pointer;
}
.button2 {
  background-color: white; 
  color: black; 
  border: 2px solid #008CBA;
}

.button2:hover {
  background-color: #008CBA;
  color: white;
}

.button3 {
  background-color: white; 
  color: black; 
  border: 2px solid #f44336;
}

.button3:hover {
  background-color: #f44336;
  color: white;
}
/* For mobile phones: */
[class*="col-"] {
  width: 100%;
}

@media only screen and (min-width: 600px) {
  /* For tablets: */
  .col-s-1 {width: 8.33%;}
  .col-s-2 {width: 16.66%;}
  .col-s-3 {width: 25%;}
  .col-s-4 {width: 33.33%;}
  .col-s-5 {width: 41.66%;}
  .col-s-6 {width: 50%;}
  .col-s-7 {width: 58.33%;}
  .col-s-8 {width: 66.66%;}
  .col-s-9 {width: 75%;}
  .col-s-10 {width: 83.33%;}
  .col-s-11 {width: 91.66%;}
  .col-s-12 {width: 100%;}
}
@media only screen and (min-width: 768px) {
  /* For desktop: */
  .col-1 {width: 8.33%;}
  .col-2 {width: 16.66%;}
  .col-3 {width: 25%;}
  .col-4 {width: 33.33%;}
  .col-5 {width: 41.66%;}
  .col-6 {width: 50%;}
  .col-7 {width: 58.33%;}
  .col-8 {width: 66.66%;}
  .col-9 {width: 75%;}
  .col-10 {width: 83.33%;}
  .col-11 {width: 91.66%;}
  .col-12 {width: 100%;}
}
</style>

</head>




<body>

<div class="a" >
<div class="b">
<h1>Terms and Conditions</h1>

</div>
<div class="e">
<h2>Wallet History:</h2>
</div>
    
    <%


if(session.getAttribute("username")==null)
        {
            response.sendRedirect("login1.jsp");
        }
            String uname=(String)session.getAttribute("username");
        String url="jdbc:mysql://localhost:3306/users";
            String username="root";
            String password="9234";
            String sql="select * from wallet_history where uname='"+uname+"'";
            try
            {
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection(url,username,password);
                PreparedStatement st=con.prepareStatement(sql);
                ResultSet rs=st.executeQuery(sql);
                while(rs.next())
                {%>
                        
    
    
    
    
            <span class="dot"></span>
            <div class="d" style="margin-top: -35px;">
            <p style="color:whitesmoke;">
                ->  <%=rs.getString(5)%>ed on <%=rs.getString(4)%> of <%=rs.getString(3)%><br>
            </p>
            </div>
            
            
                
                
            
             <%}%>
                
                
            
             <%}
                catch (Exception e)
                {
                    e.printStackTrace();
                }
                
%>

</div>


<a href="myprofile.jsp" class="button button2">my profile</a>
<a href="welcome.jsp" class="button button3">home page</a>
                
</body>
</html>
