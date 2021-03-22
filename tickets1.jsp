<!DOCTYPE html>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement,java.util.concurrent.TimeUnit"%>
<%@page import="java.sql.Connection,java.io.IOException,java.text.DateFormat,java.text.SimpleDateFormat,java.util.Calendar,java.util.*,javax.servlet.http.*"%>
<html>
<head>
    <meta charset="utf-8">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>
    <nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="">MyBusApp</a>
    </div>
    <ul class="nav navbar-nav">
      <li class="active"><a href="welcome.jsp">Home</a></li>
      <li><a href="ac.html">Rules Page</a></li>
      <li><a href="aboutus.jsp">Contact Us</a></li>
      <li><a href="Booktickets.html">Bus Info</a></li>
    </ul>
    <ul class="nav navbar-nav navbar-right">  
      <li><a href="myprofile.jsp"><span class="glyphicon glyphicon-user"></span>Your Profile</a></li>
      <li><a href="cancelticket.jsp">Cancel Ticket</a></li>
      <li><a href="wallet.jsp">Wallet</a></li>
      <li><a href="emailverify.jsp"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
      <li><a href="login1.jsp"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
      <li><a href="logout.jsp"><span class="glyphicon glyphicon-log-out"></span> Logout</a></li>
    </ul>
  </div>
</nav>
    <button onclick="sendInfo()">click</button>
    
<%
if(session.getAttribute("username")==null)
        {
            response.sendRedirect("login1.jsp");
        }
    
        String[] qwe=(String[])session.getAttribute("arr");
        
        int i;
        int a2=-1;
        
 try
{
    a2=qwe.length;
}catch(Exception e)
{
    e.printStackTrace();
}
        
             
             
             
             String[] s={"A1","A2","A3","A4","A5","B1","B2","B3","B4","B5","C1","C2","C3","C4","C5","D1","D2","D3","D4","D5","E1","E2","E3","E4","E5","F1","F2","F3","F4","F5"};
             HashMap<String,Integer> Seats = new HashMap<>();
int j;
             for(i=0;i<30;i++)
             {
                
                        Seats.put(s[i],-1);
                    
                
             }
             
             for(i=0;i<a2;i++)
            {
                Seats.put(qwe[i],1);
            }
            for(i=0;i<30;i++)
            {
                if(Seats.get(s[i])!=1)
                {
                    Seats.put(s[i],0);
                }

            }
%> 

<%String book1="sb.webp";%>
<%String book2="s.png";%>


   <form action="inter2.jsp" method="post">
    <div class="container">
      <div class="">
    <label class="image-checkbox" for="toggle">
		<%
	if(Seats.get("A1")==0)
	{%>
		<figure>
		  <img class="i1" id="myImage" onclick="changeImage()" src="s.png" width="100px">
		  <figcaption class="i1" id="myImage" onclick="changeImage()" style="margin-left: 25px; margin-top: -100px;">A1</figcaption>
		  </figure>
	<%}
	else if(Seats.get("A1")==1)
	{%>
    <figure>
      <img class="i1" id="myImage"  src="sb.webp" width="100px">
      <figcaption class="i1" id="myImage"  style="margin-left: 25px; margin-top: -100px;">A1</figcaption>
      </figure>
	<%}%>
      <input type="checkbox" name="fruit" value="A1" />
      <i class="fa fa-check hidden"></i>
    </label>
  </div>
  
  <div class="">
    <label class="image-checkbox">
			<%
	if(Seats.get("A2")==0)
	{%>
		<figure>
      <img class="i2" id="myImage1" onclick="changeImage1()" src="s.png" width="100px">
       <figcaption class="i2" id="myImage1" onclick="changeImage1()"  style="margin-left: 45px; margin-top: -100px;">A2</figcaption> 
      </figure>
	<%}
	else if(Seats.get("A2")==1)
	{%>
		<figure>
		  <img class="i2" id="myImage1"  src="sb.webp" width="100px">
		   <figcaption class="i2" id="myImage1"   style="margin-left: 45px; margin-top: -100px;">A2</figcaption> 
		  </figure>
	<%}%>
      <input type="checkbox" name="fruit" value="A2" />
      <i class="fa fa-check hidden"></i>
    </label>
  </div>
  
  
  <div class="">
    <label class="image-checkbox">
		<%
	if(Seats.get("A3")==0)
	{%>
		<figure>
		  <img class="i3" id="myImage2" onclick="changeImage2()" src="s.png" width="100px">
		   <figcaption class="i3" id="myImage2" onclick="changeImage2()" style="margin-left: 45px; margin-top: -100px;">A3</figcaption> 
		  </figure>
	<%}
	else if(Seats.get("A3")==1)
		{%>
		<figure>
		  <img class="i3" id="myImage2"  src="sb.webp" width="100px">
		   <figcaption class="i3" id="myImage2"  style="margin-left: 45px; margin-top: -100px;">A3</figcaption> 
		  </figure>
	<%}%>
      <input type="checkbox" name="fruit" value="A3" />
      <i class="fa fa-check hidden"></i>
    </label>
  </div>
  <div class="">
    <label class="image-checkbox">
		<%
	if(Seats.get("A4")==0)
	{%>
		<figure>
		  <img class="i4" id="myImage3" onclick="changeImage3()" src="s.png" width="100px">
		   <figcaption class="i4" id="myImage3" onclick="changeImage3()" style="margin-left: 45px; margin-top: -100px;">A4</figcaption> 
		  </figure>
	<%}
	else if(Seats.get("A4")==1)
		{%>
		<figure>
		  <img class="i4" id="myImage3"  src="sb.webp" width="100px">
		   <figcaption class="i4" id="myImage3"  style="margin-left: 45px; margin-top: -100px;">A4</figcaption> 
		  </figure>
	<%}%>
      <input type="checkbox" name="fruit" value="A4" />
      <i class="fa fa-check hidden"></i>
    </label>
  </div>

  <div class="">
    <label class="image-checkbox">
		<%
	if(Seats.get("A5")==0)
	{%>
		<figure>
      <img class="i5" id="myImage4" onclick="changeImage4()" src="s.png" width="100px">
      <figcaption class="i5" id="myImage4" onclick="changeImage4()" style="margin-left: 45px; margin-top: -100px;">A5</figcaption>
      </figure>
	<%}
	else if(Seats.get("A5")==1)
		{%>
		<figure>
		  <img class="i5" id="myImage4"  src="sb.webp" width="100px">
		   <figcaption class="i5" id="myImage4"  style="margin-left: 45px; margin-top: -100px;">A5</figcaption> 
		  </figure>
	<%}%>
      <input type="checkbox" name="fruit" value="A5" />
      <i class="fa fa-check hidden"></i>
    </label>
  </div>
</div>
</div> 


<div class="container">
      <div class="">
    <label class="image-checkbox" for="toggle">
		<%
	if(Seats.get("B1")==0)
	{%>
		<figure>
      <img class="i1" id="myImage11" onclick="changeImage11()" src="s.png" width="100px">
      <figcaption class="i1" id="myImage11" onclick="changeImage11()" style="margin-left: 25px; margin-top: -100px;">B1</figcaption>
      </figure>
	<%}
	else if(Seats.get("B1")==1)
	{%>
    <figure>
      <img class="i1" id="myImage11"  src="sb.webp" width="100px">
      <figcaption class="i1" id="myImage11"  style="margin-left: 25px; margin-top: -100px;">B1</figcaption>
      </figure>
	<%}%>
      <input type="checkbox" name="fruit" value="B1" />
      <i class="fa fa-check hidden"></i>
    </label>
  </div>
  
  <div class="">
    <label class="image-checkbox">
			<%
	if(Seats.get("B2")==0)
	{%>
		<figure>
      <img class="i2" id="myImage12" onclick="changeImage12()" src="s.png" width="100px">
       <figcaption class="i2" id="myImage12" onclick="changeImage12()"  style="margin-left: 45px; margin-top: -100px;">B2</figcaption> 
      </figure>
	<%}
	else if(Seats.get("B2")==1)
	{%>
		<figure>
		  <img class="i2" id="myImage12"  src="sb.webp" width="100px">
		   <figcaption class="i2" id="myImage12"   style="margin-left: 45px; margin-top: -100px;">B2</figcaption> 
		  </figure>
	<%}%>
      <input type="checkbox" name="fruit" value="B2" />
      <i class="fa fa-check hidden"></i>
    </label>
  </div>
  
  
  <div class="">
    <label class="image-checkbox">
		<%
	if(Seats.get("B3")==0)
	{%>
		<figure>
      <img class="i3" id="myImage13" onclick="changeImage13()" src="s.png" width="100px">
       <figcaption class="i3" id="myImage13" onclick="changeImage13()" style="margin-left: 45px; margin-top: -100px;">B3</figcaption> 
      </figure>
	<%}
	else if(Seats.get("B3")==1)
		{%>
		<figure>
		  <img class="i3" id="myImage13"  src="sb.webp" width="100px">
		   <figcaption class="i3" id="myImage13"  style="margin-left: 45px; margin-top: -100px;">B3</figcaption> 
		  </figure>
	<%}%>
      <input type="checkbox" name="fruit" value="B3" />
      <i class="fa fa-check hidden"></i>
    </label>
  </div>
  <div class="">
    <label class="image-checkbox">
		<%
	if(Seats.get("B4")==0)
	{%>
		<figure>
      <img class="i4" id="myImage14" onclick="changeImage14()" src="s.png" width="100px">
      <figcaption class="i4" id="myImage14" onclick="changeImage14()" style="margin-left: 65px; margin-top: -100px;">B4</figcaption>
      </figure>
	<%}
	else if(Seats.get("B4")==1)
		{%>
		<figure>
		  <img class="i4" id="myImage14"  src="sb.webp" width="100px">
		   <figcaption class="i4" id="myImage14"  style="margin-left: 45px; margin-top: -100px;">B4</figcaption> 
		  </figure>
	<%}%>
      <input type="checkbox" name="fruit" value="B4" />
      <i class="fa fa-check hidden"></i>
    </label>
  </div>

  <div class="">
    <label class="image-checkbox">
		<%
	if(Seats.get("B5")==0)
	{%>
		<figure>
      <img class="i5" id="myImage15" onclick="changeImage15()" src="s.png" width="100px">
      <figcaption class="i5" id="myImage15" onclick="changeImage15()" style="margin-left: 45px; margin-top: -100px;">B5</figcaption>
      </figure>
	<%}
	else if(Seats.get("A5")==1)
		{%>
		<figure>
		  <img class="i5" id="myImage15"  src="sb.webp" width="100px">
		   <figcaption class="i5" id="myImage15"  style="margin-left: 45px; margin-top: -100px;">B5</figcaption> 
		  </figure>
	<%}%>
      <input type="checkbox" name="fruit" value="B5" />
      <i class="fa fa-check hidden"></i>
    </label>
  </div>
</div>
</div> 

    <div class="container">
      <div class="">
    <label class="image-checkbox" for="toggle">
		<%
	if(Seats.get("C1")==0)
	{%>
		<figure>
      <img class="i1" id="myImage21" onclick="changeImage21()" src="s.png" width="100px">
      <figcaption class="i1" id="myImage21" onclick="changeImage21()" style="margin-left: 25px; margin-top: -100px;">C1</figcaption>
      </figure>
	<%}
	else if(Seats.get("C1")==1)
	{%>
    <figure>
      <img class="i1" id="myImage21"  src="sb.webp" width="100px">
      <figcaption class="i1" id="myImage21"  style="margin-left: 25px; margin-top: -100px;">C1</figcaption>
      </figure>
	<%}%>
      <input type="checkbox" name="fruit" value="C1" />
      <i class="fa fa-check hidden"></i>
    </label>
  </div>
  
  <div class="">
    <label class="image-checkbox">
			<%
	if(Seats.get("C2")==0)
	{%>
		<figure>
      <img class="i2" id="myImage22" onclick="changeImage22()" src="s.png" width="100px">
       <figcaption class="i2" id="myImage22" onclick="changeImage22()"  style="margin-left: 45px; margin-top: -100px;">C2</figcaption> 
      </figure>
	<%}
	else if(Seats.get("C2")==1)
	{%>
		<figure>
		  <img class="i2" id="myImage22"  src="sb.webp" width="100px">
		   <figcaption class="i2" id="myImage22"   style="margin-left: 45px; margin-top: -100px;">C2</figcaption> 
		  </figure>
	<%}%>
      <input type="checkbox" name="fruit" value="C2" />
      <i class="fa fa-check hidden"></i>
    </label>
  </div>
  
  
  <div class="">
    <label class="image-checkbox">
		<%
	if(Seats.get("C3")==0)
	{%>
		<figure>
      <img class="i3" id="myImage23" onclick="changeImage23()" src="s.png" width="100px">
       <figcaption class="i3" id="myImage23" onclick="changeImage23()" style="margin-left: 45px; margin-top: -100px;">C3</figcaption> 
      </figure>
	<%}
	else if(Seats.get("C3")==1)
		{%>
		<figure>
                    <img class="i3" id="myImage23"  src="sb.webp" width="100px">
		   <figcaption class="i3" id="myImage23"  style="margin-left: 45px; margin-top: -100px;">C3</figcaption> 
		  </figure>
	<%}%>
      <input type="checkbox" name="fruit" value="C3" />
      <i class="fa fa-check hidden"></i>
    </label>
  </div>
  <div class="">
    <label class="image-checkbox">
		<%
	if(Seats.get("C4")==0)
	{%>
		<figure>
      <img class="i4" id="myImage24" onclick="changeImage24()" src="s.png" width="100px">
      <figcaption class="i4" id="myImage24" onclick="changeImage24()" style="margin-left: 65px; margin-top: -100px;">C4</figcaption>
      </figure>
	<%}
	else if(Seats.get("C4")==1)
		{%>
		<figure>
		  <img class="i4" id="myImage24"  src="sb.webp" width="100px">
		   <figcaption class="i4" id="myImage24"  style="margin-left: 45px; margin-top: -100px;">C4</figcaption> 
		  </figure>
	<%}%>
      <input type="checkbox" name="fruit" value="C4" />
      <i class="fa fa-check hidden"></i>
    </label>
  </div>

  <div class="">
    <label class="image-checkbox">
		<%
	if(Seats.get("C5")==0)
	{%>
		<figure>
      <img class="i5" id="myImage25" onclick="changeImage25()" src="s.png" width="100px">
      <figcaption class="i5" id="myImage25" onclick="changeImage25()" style="margin-left: 45px; margin-top: -100px;">C5</figcaption>
      </figure>
	<%}
	else if(Seats.get("C5")==1)
		{%>
		<figure>
		  <img class="i5" id="myImage25"  src="sb.webp" width="100px">
		   <figcaption class="i5" id="myImage25"  style="margin-left: 45px; margin-top: -100px;">C5</figcaption> 
		  </figure>
	<%}%>
      <input type="checkbox" name="fruit" value="C5" />
      <i class="fa fa-check hidden"></i>
    </label>
  </div>
</div>
</div> 


    <div class="container">
      <div class="">
    <label class="image-checkbox" for="toggle">
		<%
	if(Seats.get("D1")==0)
	{%>
		<figure>
      <img class="i1" id="myImage31" onclick="changeImage31()" src="s.png" width="100px">
      <figcaption class="i1" id="myImage31" onclick="changeImage31()" style="margin-left: 25px; margin-top: -100px;">D1</figcaption>
      </figure>
	<%}
	else if(Seats.get("D1")==1)
	{%>
    <figure>
      <img class="i1" id="myImage31"  src="sb.webp" width="100px">
      <figcaption class="i1" id="myImage31"  style="margin-left: 25px; margin-top: -100px;">D1</figcaption>
      </figure>
	<%}%>
      <input type="checkbox" name="fruit" value="D1" />
      <i class="fa fa-check hidden"></i>
    </label>
  </div>
  
  <div class="">
    <label class="image-checkbox">
			<%
	if(Seats.get("D2")==0)
	{%>
		<figure>
      <img class="i2" id="myImage32" onclick="changeImage32()" src="s.png" width="100px">
       <figcaption class="i2" id="myImage32" onclick="changeImage32()"  style="margin-left: 45px; margin-top: -100px;">D2</figcaption> 
      </figure>
	<%}
	else if(Seats.get("D2")==1)
	{%>
		<figure>
		  <img class="i2" id="myImage32"  src="sb.webp" width="100px">
		   <figcaption class="i2" id="myImage32"   style="margin-left: 45px; margin-top: -100px;">D2</figcaption> 
		  </figure>
	<%}%>
      <input type="checkbox" name="fruit" value="D2" />
      <i class="fa fa-check hidden"></i>
    </label>
  </div>
  
  
  <div class="">
    <label class="image-checkbox">
		<%
	if(Seats.get("D3")==0)
	{%>
		<figure>
      <img class="i3" id="myImage33" onclick="changeImage33()" src="s.png" width="100px">
       <figcaption class="i3" id="myImage33" onclick="changeImage33()" style="margin-left: 45px; margin-top: -100px;">D3</figcaption> 
      </figure>
	<%}
	else if(Seats.get("D3")==1)
		{%>
		<figure>
		  <img class="i3" id="myImage33"  src="sb.webp" width="100px">
		   <figcaption class="i3" id="myImage33"  style="margin-left: 45px; margin-top: -100px;">D3</figcaption> 
		  </figure>
	<%}%>
      <input type="checkbox" name="fruit" value="D3" />
      <i class="fa fa-check hidden"></i>
    </label>
  </div>
  <div class="">
    <label class="image-checkbox">
		<%
	if(Seats.get("D4")==0)
	{%>
		<figure>
      <img class="i4" id="myImage34" onclick="changeImage34()" src="s.png" width="100px">
      <figcaption class="i4" id="myImage34" onclick="changeImage34()" style="margin-left: 65px; margin-top: -100px;">D4</figcaption>
      </figure>
	<%}
	else if(Seats.get("D4")==1)
		{%>
		<figure>
		  <img class="i4" id="myImage34"  src="sb.webp" width="100px">
		   <figcaption class="i4" id="myImage34"  style="margin-left: 45px; margin-top: -100px;">D4</figcaption> 
		  </figure>
	<%}%>
      <input type="checkbox" name="fruit" value="D4" />
      <i class="fa fa-check hidden"></i>
    </label>
  </div>

  <div class="">
    <label class="image-checkbox">
		<%
	if(Seats.get("D5")==0)
	{%>
		<figure>
      <img class="i5" id="myImage35" onclick="changeImage35()" src="s.png" width="100px">
      <figcaption class="i5" id="myImage35" onclick="changeImage35()" style="margin-left: 45px; margin-top: -100px;">D5</figcaption>
      </figure>
	<%}
	else if(Seats.get("D5")==1)
		{%>
		<figure>
		  <img class="i5" id="myImage35"  src="sb.webp" width="100px">
		   <figcaption class="i3" id="myImage2"  style="margin-left: 45px; margin-top: -100px;">D5</figcaption> 
		  </figure>
	<%}%>
      <input type="checkbox" name="fruit" value="D5" />
      <i class="fa fa-check hidden"></i>
    </label>
  </div>
</div>
</div> 

    
    <div class="container">
      <div class="">
    <label class="image-checkbox" for="toggle">
		<%
	if(Seats.get("E1")==0)
	{%>
		<figure>
      <img class="i1" id="myImage41" onclick="changeImage41()" src="s.png" width="100px">
      <figcaption class="i1" id="myImage41" onclick="changeImage41()" style="margin-left: 25px; margin-top: -100px;">E1</figcaption>
      </figure>
	<%}
	else if(Seats.get("E1")==1)
	{%>
    <figure>
      <img class="i1" id="myImage41"  src="sb.webp" width="100px">
      <figcaption class="i1" id="myImage41"  style="margin-left: 25px; margin-top: -100px;">E1</figcaption>
      </figure>
	<%}%>
      <input type="checkbox" name="fruit" value="E1" />
      <i class="fa fa-check hidden"></i>
    </label>
  </div>
  
  <div class="">
    <label class="image-checkbox">
			<%
	if(Seats.get("E2")==0)
	{%>
		<figure>
      <img class="i2" id="myImage42" onclick="changeImage42()" src="s.png" width="100px">
       <figcaption class="i2" id="myImage42" onclick="changeImage42()"  style="margin-left: 45px; margin-top: -100px;">E2</figcaption> 
      </figure>
	<%}
	else if(Seats.get("E2")==1)
	{%>
		<figure>
		  <img class="i2" id="myImage42"  src="sb.webp" width="100px">
		   <figcaption class="i2" id="myImage42"   style="margin-left: 45px; margin-top: -100px;">E2</figcaption> 
		  </figure>
	<%}%>
      <input type="checkbox" name="fruit" value="E2" />
      <i class="fa fa-check hidden"></i>
    </label>
  </div>
  
  
  <div class="">
    <label class="image-checkbox">
		<%
	if(Seats.get("E3")==0)
	{%>
		<figure>
      <img class="i3" id="myImage43" onclick="changeImage43()" src="s.png" width="100px">
       <figcaption class="i3" id="myImage43" onclick="changeImage43()" style="margin-left: 45px; margin-top: -100px;">E3</figcaption> 
      </figure>
	<%}
	else if(Seats.get("E3")==1)
		{%>
		<figure>
		  <img class="i3" id="myImage43"  src="sb.webp" width="100px">
		   <figcaption class="i3" id="myImage43"  style="margin-left: 45px; margin-top: -100px;">E3</figcaption> 
		  </figure>
	<%}%>
      <input type="checkbox" name="fruit" value="E3" />
      <i class="fa fa-check hidden"></i>
    </label>
  </div>
  <div class="">
    <label class="image-checkbox">
		<%
	if(Seats.get("E4")==0)
	{%>
		<figure>
      <img class="i4" id="myImage44" onclick="changeImage44()" src="s.png" width="100px">
      <figcaption class="i4" id="myImage44" onclick="changeImage44()" style="margin-left: 65px; margin-top: -100px;">E4</figcaption>
      </figure>
	<%}
	else if(Seats.get("E4")==1)
		{%>
		<figure>
		  <img class="i4" id="myImage44"  src="sb.webp" width="100px">
		   <figcaption class="i4" id="myImage44"  style="margin-left: 45px; margin-top: -100px;">E4</figcaption> 
		  </figure>
	<%}%>
      <input type="checkbox" name="fruit" value="E4" />
      <i class="fa fa-check hidden"></i>
    </label>
  </div>

  <div class="">
    <label class="image-checkbox">
		<%
	if(Seats.get("E5")==0)
	{%>
		<figure>
      <img class="i5" id="myImage45" onclick="changeImage45()" src="s.png" width="100px">
      <figcaption class="i5" id="myImage45" onclick="changeImage45()" style="margin-left: 45px; margin-top: -100px;">E5</figcaption>
      </figure>
	<%}
	else if(Seats.get("E5")==1)
		{%>
		<figure>
		  <img class="i5" id="myImage45"  src="sb.webp" width="100px">
		   <figcaption class="i5" id="myImage45"  style="margin-left: 45px; margin-top: -100px;">E5</figcaption> 
		  </figure>
	<%}%>
      <input type="checkbox" name="fruit" value="E5" />
      <i class="fa fa-check hidden"></i>
    </label>
  </div>
</div>
</div> 


    <div class="container">
      <div class="">
    <label class="image-checkbox" for="toggle">
		<%
	if(Seats.get("F1")==0)
	{%>
		<figure>
      <img class="i1" id="myImage51" onclick="changeImage51()" src="s.png" width="100px">
      <figcaption class="i1" id="myImage51" onclick="changeImage51()" style="margin-left: 25px; margin-top: -100px;">F1</figcaption>
      </figure>
	<%}
	else if(Seats.get("F1")==1)
	{%>
    <figure>
      <img class="i1" id="myImage51"  src="sb.webp" width="100px">
      <figcaption class="i1" id="myImage51"  style="margin-left: 25px; margin-top: -100px;">F1</figcaption>
      </figure>
	<%}%>
      <input type="checkbox" name="fruit" value="F1" />
    </label>
  </div>
  
  <div class="">
    <label class="image-checkbox">
			<%
	if(Seats.get("F2")==0)
	{%>
		<figure>
      <img class="i2" id="myImage52" onclick="changeImage52()" src="s.png" width="100px">
       <figcaption class="i2" id="myImage52" onclick="changeImage52()"  style="margin-left: 45px; margin-top: -100px;">F2</figcaption> 
      </figure>
	<%}
	else if(Seats.get("F2")==1)
	{%>
		<figure>
		  <img class="i2" id="myImage52"  src="sb.webp" width="100px">
		   <figcaption class="i2" id="myImage52"   style="margin-left: 45px; margin-top: -100px;">F2</figcaption> 
		  </figure>
	<%}%>
      <input type="checkbox" name="fruit" value="F2" />
      <i class="fa fa-check hidden"></i>
    </label>
  </div>
  
  
  <div class="">
    <label class="image-checkbox">
		<%
	if(Seats.get("F3")==0)
	{%>
		<figure>
      <img class="i3" id="myImage53" onclick="changeImage53()" src="s.png" width="100px">
       <figcaption class="i3" id="myImage53" onclick="changeImage53()" style="margin-left: 45px; margin-top: -100px;">F3</figcaption> 
      </figure>
	<%}
	else if(Seats.get("F3")==1)
		{%>
		<figure>
		  <img class="i3" id="myImage53"  src="sb.webp" width="100px">
		   <figcaption class="i3" id="myImage2"  style="margin-left: 45px; margin-top: -100px;">F3</figcaption> 
		  </figure>
	<%}%>
      <input type="checkbox" name="fruit" value="F3" />
      <i class="fa fa-check hidden"></i>
    </label>
  </div>
  <div class="">
    <label class="image-checkbox">
		<%
	if(Seats.get("F4")==0)
	{%>
		<figure>
      <img class="i4" id="myImage54" onclick="changeImage54()" src="s.png" width="100px">
      <figcaption class="i4" id="myImage54" onclick="changeImage54()" style="margin-left: 65px; margin-top: -100px;">F4</figcaption>
      </figure>
	<%}
	else if(Seats.get("F4")==1)
		{%>
		<figure>
		  <img class="i4" id="myImage54"  src="sb.webp" width="100px">
		   <figcaption class="i4" id="myImage54"  style="margin-left: 45px; margin-top: -100px;">F4</figcaption> 
		  </figure>
	<%}%>
      <input type="checkbox" name="fruit" value="F4" />
      <i class="fa fa-check hidden"></i>
    </label>
  </div>

  <div class="">
    <label class="image-checkbox">
		<%
	if(Seats.get("F5")==0)
	{%>
		<figure>
      <img class="i5" id="myImage55" onclick="changeImage55()" src="s.png" width="100px">
      <figcaption class="i5" id="myImage55" onclick="changeImage55()" style="margin-left: 45px; margin-top: -100px;">F5</figcaption>
      </figure>
	<%}
	else if(Seats.get("F5")==1)
		{%>
		<figure>
		  <img class="i5" id="myImage55"  src="sb.webp" width="100px">
		   <figcaption class="i5" id="myImage55"  style="margin-left: 45px; margin-top: -100px;">F5</figcaption> 
		  </figure>
	<%}%>
      <input type="checkbox" name="fruit" value="F5" />
      <i class="fa fa-check hidden"></i>
    </label>
  </div>
</div>
</div> 
<script>
    function changeImage(){
        var image=document.getElementById('myImage');
        if(image.src.match("s.png")){
            image.src = "sb.webp";
        }else{
            image.src = "s.png";
        }
    }
    function changeImage1(){
        var image=document.getElementById('myImage1');
        if(image.src.match("s.png")){
            image.src = "sb.webp";
        }else{
            image.src = "s.png";
        }
    }
    function changeImage2(){
        var image=document.getElementById('myImage2');
        if(image.src.match("s.png")){
            image.src = "sb.webp";
        }else{
            image.src = "s.png";
        }
    }   
    
    function changeImage3(){
        var image=document.getElementById('myImage3');
        if(image.src.match("s.png")){
            image.src = "sb.webp";
        }else{
            image.src = "s.png";
        }
    }
    function changeImage4(){
        var image=document.getElementById('myImage4');
        if(image.src.match("s.png")){
            image.src = "sb.webp";
        }else{
            image.src = "s.png";
        }
    }   
</script>    

<script>
    function changeImage11(){
        var image=document.getElementById('myImage11');
        if(image.src.match("s.png")){
            image.src = "sb.webp";
        }else{
            image.src = "s.png";
        }
    }
    function changeImage12(){
        var image=document.getElementById('myImage12');
        if(image.src.match("s.png")){
            image.src = "sb.webp";
        }else{
            image.src = "s.png";
        }
    }
    function changeImage13(){
        var image=document.getElementById('myImage13');
        if(image.src.match("s.png")){
            image.src = "sb.webp";
        }else{
            image.src = "s.png";
        }
    }
        function changeImage14(){
        var image=document.getElementById('myImage14');
        if(image.src.match("s.png")){
            image.src = "sb.webp";
        }else{
            image.src = "s.png";
        }
    }
    function changeImage15(){
        var image=document.getElementById('myImage15');
        if(image.src.match("s.png")){
            image.src = "sb.webp";
        }else{
            image.src = "s.png";
        }
    } 

        function changeImage21(){
        var image=document.getElementById('myImage21');
        if(image.src.match("s.png")){
            image.src = "sb.webp";
        }else{
            image.src = "s.png";
        }
    }
    function changeImage22(){
        var image=document.getElementById('myImage22');
        if(image.src.match("s.png")){
            image.src = "sb.webp";
        }else{
            image.src = "s.png";
        }
    }
    function changeImage23(){
        var image=document.getElementById('myImage23');
        if(image.src.match("s.png")){
            image.src = "sb.webp";
        }else{
            image.src = "s.png";
        }
    }
        function changeImage24(){
        var image=document.getElementById('myImage24');
        if(image.src.match("s.png")){
            image.src = "sb.webp";
        }else{
            image.src = "s.png";
        }
    }
    function changeImage25(){
        var image=document.getElementById('myImage25');
        if(image.src.match("s.png")){
            image.src = "sb.webp";
        }else{
            image.src = "s.png";
        }
    } 

        function changeImage31(){
        var image=document.getElementById('myImage31');
        if(image.src.match("s.png")){
            image.src = "sb.webp";
        }else{
            image.src = "s.png";
        }
    }
    function changeImage32(){
        var image=document.getElementById('myImage32');
        if(image.src.match("s.png")){
            image.src = "sb.webp";
        }else{
            image.src = "s.png";
        }
    }
    function changeImage33(){
        var image=document.getElementById('myImage33');
        if(image.src.match("s.png")){
            image.src = "sb.webp";
        }else{
            image.src = "s.png";
        }
    }
        function changeImage34(){
        var image=document.getElementById('myImage34');
        if(image.src.match("s.png")){
            image.src = "sb.webp";
        }else{
            image.src = "s.png";
        }
    }
    function changeImage35(){
        var image=document.getElementById('myImage35');
        if(image.src.match("s.png")){
            image.src = "sb.webp";
        }else{
            image.src = "s.png";
        }
    }   
        function changeImage41(){
        var image=document.getElementById('myImage41');
        if(image.src.match("s.png")){
            image.src = "sb.webp";
        }else{
            image.src = "s.png";
        }
    }
    function changeImage42(){
        var image=document.getElementById('myImage42');
        if(image.src.match("s.png")){
            image.src = "sb.webp";
        }else{
            image.src = "s.png";
        }
    }
    function changeImage43(){
        var image=document.getElementById('myImage43');
        if(image.src.match("s.png")){
            image.src = "sb.webp";
        }else{
            image.src = "s.png";
        }
    }
        function changeImage44(){
        var image=document.getElementById('myImage44');
        if(image.src.match("s.png")){
            image.src = "sb.webp";
        }else{
            image.src = "s.png";
        }
    }
    function changeImage45(){
        var image=document.getElementById('myImage45');
        if(image.src.match("s.png")){
            image.src = "sb.webp";
        }else{
            image.src = "s.png";
        }
    } 
        function changeImage51(){
        var image=document.getElementById('myImage51');
        if(image.src.match("s.png")){
            image.src = "sb.webp";
        }else{
            image.src = "s.png";
        }
    }
    function changeImage52(){
        var image=document.getElementById('myImage52');
        if(image.src.match("s.png")){
            image.src = "sb.webp";
        }else{
            image.src = "s.png";
        }
    }
    function changeImage53(){
        var image=document.getElementById('myImage53');
        if(image.src.match("s.png")){
            image.src = "sb.webp";
        }else{
            image.src = "s.png";
        }
    }
        function changeImage54(){
        var image=document.getElementById('myImage54');
        if(image.src.match("s.png")){
            image.src = "sb.webp";
        }else{
            image.src = "s.png";
        }
    }
    function changeImage55(){
        var image=document.getElementById('myImage55');
        if(image.src.match("s.png")){
            image.src = "sb.webp";
        }else{
            image.src = "s.png";
        }
    } 
</script>

    
    
    
    
    
        
  <%
        String dt =(String)session.getAttribute("dt");
        DateFormat formatter = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        Date date1 = new Date();
        try {
                   date1 = formatter.parse(dt);           
                } catch (Exception e) {
                   e.printStackTrace();
                }
        //out.println(formatter.format(date1));
         DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
            Date date = new Date();
          //  out.println(dateFormat.format(date));

            long duration=date1.getTime()-date.getTime();
             long diffInMinutes = TimeUnit.MILLISECONDS.toMinutes(duration);          
           //out.println(diffInMinutes);
           
           
           %>
 
           
           <script>  
var request;  
function sendInfo()  
{  
  
    var url="checktickets.jsp?";  

    if(window.XMLHttpRequest){  
    request=new XMLHttpRequest();  
    }  
    else if(window.ActiveXObject){  
    request=new ActiveXObject("Microsoft.XMLHTTP");  
    }  

    try{  
    //request.onreadystatechange=getInfo;  
    request.open("POST",url,true);  
    request.send();  
    }catch(e){alert("Unable to connect to server");}  
}  
  

  
</script>  
            
     <input type="submit" name="submit"  />   
     
                        </form>       
           
    </body>  
</html>
      
   