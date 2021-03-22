
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement,java.util.concurrent.TimeUnit"%>
<%@page import="java.sql.*,java.io.IOException,java.text.DateFormat,java.text.SimpleDateFormat,java.util.Calendar,java.util.Date,javax.servlet.http.*"%>

        <%
if(session.getAttribute("username")==null)
        {
            response.sendRedirect("login1.jsp");
        }
            String from;
        String to;
        
        from=request.getParameter("from");
        to=request.getParameter("to");
        String date1=request.getParameter("date");
        DateFormat formatter= new SimpleDateFormat("yyyy-MM-dd");
        Date date2 =new Date();
        String output;
        try {
           date2 = formatter.parse(date1);           
        } catch (Exception e) {
           e.printStackTrace();
        }
        
		 DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
            Date date4 = new Date();
            out.println(dateFormat.format(date4));

                long duration=date2.getTime()-date4.getTime();
             long diffInMinutes = TimeUnit.MILLISECONDS.toDays(duration);
             out.println(diffInMinutes);

        java.sql.Date sqlDate = new java.sql.Date(date2.getTime());
        String url="jdbc:mysql://localhost:3306/mydatabase";
        String username="root";
        String password="9234";
       // HttpSession session1 = request.getSession(true);
            session.setAttribute("start",from);
            session.setAttribute("destination",to);
            session.setAttribute("date",date1);
            
        
        int a=0;
        %>
<!DOCTYPE html>
<html>
<head>
  <title></title>
  <style>
    @import "compass/css3";

$breakpoint-alpha: 480px; 

.rwd-table {
  margin: 1em 0;
  min-width: 300px;
  
  tr {
    border-top: 1px solid #ddd;
    border-bottom: 1px solid #ddd;
  }
  
  th {
    display: none;    
  }
  
  td {
    display: block; 
    
    &:first-child {
      padding-top: .5em;
    }
    &:last-child {
      padding-bottom: .5em;
    }

    &:before {
      content: attr(data-th)": "; 
      font-weight: bold;

      
      width: 6.5em;
      display: inline-block;
      
      
      @media (min-width: $breakpoint-alpha) {
        display: none;
      }
    }
  }
  
  th, td {
    text-align: left;
    
    @media (min-width: $breakpoint-alpha) {
      display: table-cell;
      padding: .25em .5em;
      
      &:first-child {
        padding-left: 0;
      }
      
      &:last-child {
        padding-right: 0;
      }
    }

  }
  
  
}


@import 'https://fonts.googleapis.com/css?family=Montserrat:300,400,700';

body {
  padding: 0 2em;
  font-family: Montserrat, sans-serif;
  -webkit-font-smoothing: antialiased;
  text-rendering: optimizeLegibility;
  color: #444;
  background: #eee;
}

h1 {
  font-weight: normal;
  letter-spacing: -1px;
  color: #34495E;
}

.rwd-table {
  background: #34495E;
  color: #fff;
  border-radius: .4em;
  overflow: hidden;
  tr {
    border-color: lighten(#34495E, 10%);
  }
  th, td {
    margin: .5em 1em;
    @media (min-width: $breakpoint-alpha) { 
      padding: 1em !important; 
    }
  }
  th, td:before {
    color: #dd5;
  }
}
.button {
  padding: 10px;
  margin-top: 3px;
  font-size: 15px;
  color: white;
  background: #5F9EA0;
  border: none;
  border-radius: 5px;
}
  </style>
  <meta charset="utf-8">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
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
<h1>List Of Buses</h1>
<table class="rwd-table">
  <tr>
    <th>From</th>
    <th>To</th>
    <th>Cost</th>
    <th>Start Date</th>
    <th>End Date</th>
    <th>Starting Time</th>
    <th>Reaching Time</th>
    <th>Number Of Tickets</th>
    <th>Service Number</th>
  </tr>
        <%
         try
            {
                String sql="SELECT * FROM buses_data WHERE `from`='"+from+"' AND `to`='"+to+"' AND `start_date`='"+sqlDate+"'";
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection(url,username,password);
                PreparedStatement st=con.prepareStatement(sql);
                //st.setString(1,from);
                //st.setString(2,to);
                // st.setDate(9,sqlDate);
                
                ResultSet rs = st.executeQuery(sql);
                
				
				
				if(diffInMinutes>5)
                    {
                        out.println("date out of range");
                        RequestDispatcher rd=request.getRequestDispatcher("welcome.jsp");  
                        rd.include(request, response);
                    }
                    else
                    {
				
				
                while(rs.next())
                {
                    /*if(rs.getString("from").equals(null))
                    {
                    <h1>DATE OUT OF RANGE</h1>
                    }
                      else
                      {*/%>

                       
                <tr>
                <td data-th="From"><%=rs.getString("from") %></td>
                <td data-th="To"><%=rs.getString("to") %></td>
                <td data-th="Cost"><%=rs.getInt("cost") %></td>
                <td data-th="Start Date"><%=rs.getDate("start_date") %></td>
                <td data-th="End Date"><%=rs.getDate("end_date") %></td>
                <td data-th="Starting Time"><%=rs.getTime("start_time") %></td>
                <td data-th="Reaching Time"><%=rs.getTime("end_time") %></td>
                <td data-th="Number Of Tickets"><%=rs.getInt("no_of_tickets") %></td>
                <td data-th="Service Number"><%=rs.getString("service_num") %></td>       
                </tr>
                
                <%
                }
                }
                    
            }
            catch (Exception e){
                e.printStackTrace();
            }
            
            
        %>
      
</table>

        <form action="inter.jsp" method="post">
            <h2 style="margin-top:300px;margin-left:1000px;">Enter Service Number Of The Bus:</h2>
            <input type ="text" name="sno" style="margin-left:1000px;height:37px;width:200px;"> 
                    <button type="submit" class="button">BOOK</button>
                    </form>



</body>
</html>
