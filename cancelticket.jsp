
<!DOCTYPE html>
<html>
<head>
  <title></title>
  <meta charset="utf-8">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <style>
    *{
  margin:0;
  padding:0;
  box-sizing:border-box;
}

body{
  overflow: hidden;
}

.container{
  max-width:100vw;
  height:100vh;
  background-image: linear-gradient(to top, #015486, #0099ca, #01afe0);
}

.diver, .diver2{
  display: flex;
  align-items: center;
  position: relative;
  top:3vw;
  transform:scaleX(-1);
  animation:diverMoves 15s ease both;
}

.diver2{
  top:2vw;
  right:8vw;
  animation:diver2Moves 18s ease both;
}

@keyframes diverMoves{
  0%{
    margin-left:-15vw;
    margin-right:25vw;
  }

  
  100%{
    margin-right:-80vw;
  }
}

@keyframes diver2Moves{
  0%{
    margin-left:-15vw;
    margin-right:25vw;
  }

  
  100%{
    margin-right:-100vw;
  }
}


.face{
  width:5vw;
  height:6vw;
  border-radius:50%;
  background-color: #ceb6ac;
  position: absolute;
  right:2.6vw;
  top:1vw;
  border-top:0.5vw solid #ab948a;
}

.diver2 .face{
  background-color: #cc9e97;
  border-top:0.5vw solid #b0827b;
}

.goggle{
  display: flex;
  transform:rotateZ(-30deg);
  position: relative;
  left:16.5vw;
  bottom:2vw;
  z-index: 6;
}

.g-glass{
  width:1vw;
  height:3vw;
  background-color: #d7900c;
}

.g-connect{
  clip-path: polygon(0 0, 0% 100%, 100% 52%);
  background-color: #000;
  width:1.5vw;
}

.g-band{
  width:5.6vw;
  height:1vw;
  background-color: #000;
  position: relative;
  top:1vw;
  right:0.5vw;
}

.connector-band{
  width:10vw;
  height:8vw;
  border-radius:50%;
  border-bottom:0.3vw solid #000;
  position: relative;
  bottom:1.3vw;
  left:10vw;
  z-index: 6;
  transform:rotateZ(-15deg);
}

.cap{
  width:7vw;
  height:7vw;
  border-radius:50%;
  background-color:#2a353f;
  position: relative;
  bottom:1.5vw;
  right:0.5vw;
  overflow:hidden;
}

.attire{
  width:12vw;
  height:5vw;
  background-color: #2a353f;
  border-radius:16% 31% 1% 30% / 25% 2% 1% 56%;
  position: relative;
}

.diver2 .attire, .diver2 .neck, .diver2 .cap{
  background-color: #2a353f;
}

.o2-cyl{
  width:10vw;
  height:3vw;
  border-radius:1vw;
  background-image: linear-gradient(to top, #8c7003, #c19a05, #d1b64d);
  position: absolute;
  left:2vw;
  bottom:4vw;
  z-index: 7;
}

.neck{
  width:4vw;
  height:3vw;
  background-color:#2a353f;
  position: absolute;
  left:-2vw;
  bottom:1.3vw;
  transform:rotateZ(10deg);
}

.hand{
  display: flex;
  position: absolute;
  top:3vw;
  z-index: 2;
}

.upper-hand{
  width:8vw;
  height:3vw;
  border-radius:50% 0 0 50%;
  background-color: #3eb0a7;
  transform:rotateZ(10deg);
}

.mid-hand{
  clip-path: polygon(1% 35%, 100% 48%, 100% 66%, 0 60%);
  width:15vw;
  height:12vw;
  background-color: #3eb0a7;
  position: relative;
  bottom:1.2vw;
  right:1.2vw;
  transform:rotateZ(20deg);
}


.diver2 .upper-hand, .diver2 .mid-hand{
  background-color: #a13535;
}


.palm{
  width:5vw;
  height:3vw;
  border-radius:50%;
  background-color: #ceb6ac;
  position: relative;
  top:7.8vw;
  right:2.6vw;
  transform:rotateZ(40deg); 
  z-index: -1;
  border-bottom:0.3vw solid #b0827b;
}

.thumb{
  width:3vw;
  height:1vw;
  border-radius:50%;
  background-color: #ceb6ac;
  position: absolute;
  bottom:-0.5vw;
  transform:rotateZ(18deg);
  border-bottom:0.3vw solid #b0827b;
}


.diver2 .palm, .diver2 .thumb{
  background-color: #cc9e97;
  border-bottom:0.3vw solid #b0827b;
}

.belt{
  width:2vw;
  height:5vw;
  background-color: #297872;
  border-right:0.5vw solid #1d5955;
}

.diver2 .belt{
  background-color: #a13535;
  border-right:0.5vw solid #962f2f;
}

.upper-and-lower-body-join{
  width:2vw;
  height:5vw;
  background-color: #2a353f;  
}

.diver2 .upper-and-lower-body-join{
  background-color: #2a353f;
}

.leg-front, .leg-back{
  display: flex;
  position: relative;
  bottom:0.45vw;
  right:0.2vw;
}

.leg-back{
  position: relative; 
  right:16vw;
  top:0.2vw;
  transform:rotateZ(5deg);
  z-index: -1;
}

.lf-thigh, .lb-thigh{
clip-path: polygon(0 15%, 100% 51%, 100% 100%, 0% 100%);
  width:14vw;
  height:5.8vw;
  background-color:#2a353f; 
}

.lf-thigh{
  width:16vw;
}

.lf-calf, .lb-calf{
  background-color: #2a353f; 
  width:12vw;
  height:2.9vw;
  position: absolute;
  left:15.6vw;
  bottom:1.3vw;
  transform:rotateZ(-5deg);
}

.lf-calf{
  width:15vw;
  transform:rotateZ(-10deg);
}

.lb-thigh, .lb-calf{
  background-color: #163041;
}

.lb-calf{
  width:13.5vw;
  height:2.8vw;
  position: absolute;
  left:13.7vw;
  bottom:-0.3vw;
  transform:rotateZ(3deg);  
}

.diver2 .lf-thigh, .diver2 .lf-calf{
  background-color: #2a353f;
}

.flipper-front, .flipper-back{
  display: flex;
  justify-content: center;
  align-items: center;
}

.ff-flip, .fb-flip{
  width:8vw;
  height:9vw;
  background-color: #dd8d03;
  clip-path: polygon(0 34%, 100% 16%, 100% 78%, 0 67%);
  border-bottom:3vw solid #b87504;
}

.ff-flip{
  position: relative;
  bottom:2.3vw;
  transform:rotateZ(-10deg);
  animation:flipMove 3s infinite both;
}

.fb-flip{
  position: relative;
  transform:rotateZ(8deg); 
  top:4.7vw;
  right:11.3vw;
}


.bubble{
  width:3vw;
  height:3vw;
  border-radius:50%;
  background: radial-gradient(circle, rgba(255,255,255,1) 0%, #004466 100%);
  opacity: 0.5;
}

.bubble:nth-child(1){
  position: relative;
  top:5vw;
}

.bubble:nth-child(3){
  width:5vw;
  height:5vw;
  position: relative;
  top:3vw;
}

.bubble:nth-child(5){
  width:1vw;
  height:1vw;
  position: relative;
  bottom:0.2vw;
}

.bubble-div1, .bubble-div2{
  display: flex;
  transform:translateX(30vw);
}

.bubble1, .bubble2{
  animation:bubbleMovesUp 9s ease both;
}

.bubble3, .bubble6{
  animation:bubbleMovesUp 7s ease both;
  animation-delay:3s;
}

.bubble4, .bubble5{
  animation:bubbleMovesUp 5s ease both;
  animation-delay:2s; 
}

@keyframes bubbleMovesUp{
  0%{
    opacity: 0;
    transform:translateY(0) translateX(30vw);
  }
  
  100%{
    opacity: 0.6;
    transform:translateY(-60vw) translateX(120vw);
  }
}

.fish-div{
  position: relative;
  top:20vw;

}

@keyframes fishMove{
  0%{
    margin-left:104vw;
  }
  
  100%{
    margin-left:-20vw;
  }
}

.fish1, .fish2, .fish3, .fish4, .fish5{
  width:4vw;
  height:2vw;
  border-radius:50%;
  position: relative;
  opacity: 0.8;
}

.fish1:after, .fish2:after, .fish3:after, .fish4:after, .fish5:after{
  content:"";
  position: absolute;
  width:2vw;
  height:1.5vw;
  clip-path: polygon(0 43%, 100% 100%, 100% 0);
  left:3.5vw;
  top:0.5vw;
  background-color: inherit;
}

.fish1{
  left:1vw;
  background-color:#e87112;
  margin-left:104vw;
  animation:fishMove 15s ease forwards ;
}

.fish2{
  left:4vw;
  background-color: #01014c;
  margin-left:104vw;
  animation:fishMove 15s ease forwards ;
  position: relative;
}

.fish3{
  left:-3vw;
  background-color: #d82973;
  margin-left:104vw;
  animation:fishMove 15s ease forwards ;
  animation-delay:0.4s;
}

.fish4{
  left:6vw;
  background-color:#5a357d;
  margin-left:104vw;
  animation:fishMove 15s ease forwards ;
  animation-delay:0.3s;
}

.fish-div{
  position: absolute;
  top:75vh;
}

.blurred-box{
  position: relative;
  width: 250px;
  height: 350px;
  top: calc(50% - 175px);
  left: calc(50% - 125px);
  background: inherit;
  border-radius: 2px;
  overflow: hidden;
 margin-top: -200px;
}

.blurred-box:after{
 content: '';
 width: 300px;
 height: 300px;
 background: inherit; 
 position: absolute;
 left: -25px;
 right: 0;
 top: -25px;  
 bottom: 0;
 box-shadow: inset 0 0 0 200px rgba(255,255,255,0.05);
 filter: blur(10px);
}


/* Form which you dont need */
.user-login-box{
  position: relative;
  margin-top: 50px;
  text-align: center;
  z-index: 1;
}
.user-login-box > *{
  display: inline-block;
  width: 200px;
}

.user-icon{
  width: 100px;
  height: 100px;
  position: relative;
  border-radius: 50%;
  background-size: contain;
  background-image: url('https://images.unsplash.com/photo-1549068106-b024baf5062d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=934&q=80');
}

.user-name{
  margin-top: 15px;
  margin-bottom: 15px;
  color: white;
}

input.user-password{
  width: 120px;
  height: 18px;
  opacity: 0.4;
  border-radius: 2px;
  padding: 5px 15px;
  border: 0;
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
     <%
if(session.getAttribute("username")==null)
        {
            response.sendRedirect("login1.jsp");
        }
%>
    
    
<div class="container">
  <div class="diver"> 
    <div class="goggle">
         <div class="g-glass"></div>
         <div class="g-connect"></div>
          <div class="g-band"></div>
       </div>
      <div class="connector-band"></div>
     <div class="cap">
        <div class="face"></div>
     </div>
    <div class="attire">
      <div class="o2-cyl"></div>
       <div class="neck"></div>
      <div class="hand">
        <div class="upper-hand"></div>
        <div class="mid-hand"></div>
        <div class="palm">
          <div class="thumb"></div>
        </div>
      </div>
    </div>

    <div class="belt"></div>
    <div class="upper-and-lower-body-join"></div>

      <div class="leg-front">
        <div class="lf-thigh"></div>
        <div class="lf-calf"></div>
      </div>
      
      <div class="leg-back">
        <div class="lb-thigh"></div>
        <div class="lb-calf"></div>
    </div>
    
    <div class="flipper-front">
      <div class="ff-flip"></div>
    </div>
    <div class="flipper-back">
      <div class="fb-flip"></div>
    </div>

  </div>
  

<div class="blurred-box">
  <!--  you dont need the user-login-box html  -->
  <!--  for demo purposes only and its shit  -->
  <div class="user-login-box">
    <span class="user-icon"></span>
    <div class="user-name"Enter Transcation Id You want to delete</div>
    <form action="checktransid.jsp" method="post">
    <input class="user-password" type="text" placeholder="Transaction Id" name="transid"  />
    <button type="submit" class="button">SUBMIT</button>
  </div>
</form>
</div>
</div>

  <div class="bubble-div1">
      
  <div class="bubble bubble1"></div>
  <div class="bubble bubble2"></div>
  <div class="bubble bubble3"></div>
  <div class="bubble bubble4"></div>
  <div class="bubble bubble5"></div>
  <div class="bubble bubble6"></div>


  </div>

  <div class="diver2"> 
    <div class="goggle">
         <div class="g-glass"></div>
         <div class="g-connect"></div>
          <div class="g-band"></div>
       </div>
      <div class="connector-band"></div>
     <div class="cap">
        <div class="face"></div>
     </div>
    <div class="attire">
      <div class="o2-cyl"></div>
       <div class="neck"></div>
      <div class="hand">
        <div class="upper-hand"></div>
        <div class="mid-hand"></div>
        <div class="palm">
          <div class="thumb"></div>
        </div>
      </div>
    </div>
    <div class="belt"></div>
    <div class="upper-and-lower-body-join"></div>

      <div class="leg-front">
        <div class="lf-thigh"></div>
        <div class="lf-calf"></div>
      </div>
      
      <div class="leg-back">
        <div class="lb-thigh"></div>
        <div class="lb-calf"></div>
    </div>
    
    <div class="flipper-front">
      <div class="ff-flip"></div>
    </div>
    <div class="flipper-back">
      <div class="fb-flip"></div>
    </div>

  </div>
  
    <div class="bubble-div2">
      
  <div class="bubble bubble1"></div>
  <div class="bubble bubble2"></div>
  <div class="bubble bubble3"></div>
  <div class="bubble bubble4"></div>
  <div class="bubble bubble5"></div>
      <div class="bubble bubble6"></div>

  </div>
  
  <div class="fish-div">
    <div class="fish1"></div>
    <div class="fish2"></div>
    <div class="fish3"></div>
    <div class="fish4"></div>
  </div>

</div>

</body>
</html>