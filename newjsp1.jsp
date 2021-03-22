<!DOCTYPE html>
<html>
<head>
  <style>
.btn {
  background-color: #f4511e;
  border: none;
  color: white;
  padding: 400px 32px;
  text-align: center;
  font-size: 16px;
  margin: 4px 2 px;
  opacity: 1;
  transition: 0.3s;
  height: 54px;
}

.btn:hover {opacity: 0.6}


</style>

<script>

function Redirect() {
  window.location = "file:///C:/xampp/htdocs/mobilecommerce.html";
}
</script>

	<title>MyBus</title>
		<meta charset="utf-8">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="style_1.css">	
</head>   
<body style="background-color: rgb(230, 230, 230)">
  <nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="http://localhost/mobilecommerce.html">MyBusApp</a>
    </div>
    <ul class="nav navbar-nav">
      <li class="active"><a href="welcome.jsp">Home</a></li>
      <li><a href="ac.html">Rules Page</a></li>
      <li><a href="aboutus.html">Contact Us</a></li>
      <li><a href="Booktickets.html">Bus Info</a></li>
    </ul>
    <ul class="nav navbar-nav navbar-right">  
      <li><a href="myprofile.jsp"><span class="glyphicon glyphicon-user"></span>Your Profile</a></li>
      <li><a href="emailverify.jsp"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
      <li><a href="login1.jsp"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
    </ul>
  </div>
</nav>

<form class="asd">
   <input class="asdf" type = "button" value = "Redirect Me" onclick = "Redirect();" />
</form>

<div style="background-image: url('bus.jpg');" class="harsha">
        <form class="mysearch" action="selectbus.jsp" method="post" style="margin-top: 150px">
       <input type="text" placeholder="FROM" name="search" style=" width:250px;margin-left: 0px; margin-right: -1px;border-style: solid;border-width: 2px;border-color: rgb(128, 128, 128)" list="hossting-plan">
        <datalist id="hossting-plan">
          <option value="hyderabad"></option>
          <option value="vizag"></option>
          <option value="bangalore"></option>
          <option value="chennai"></option>
        </datalist>
        <input type="text" placeholder="TO" name="search" style="width:250px;margin-right: -1px;border-style: solid;border-width: 2px;border-color: rgb(128, 128, 128)" list="hossting-plan">
        <datalist id="hossting-plan">
          <option value="hyderabad"></option>
          <option value="vizag"></option>
          <option value="bangalore"></option>
          <option value="chennai"></option>
        </datalist>
        <input type="date" placeholder="Onward date" name="onward date" style="width:250px;margin-right: -1px;border-style: solid;border-width: 2px;border-color: rgb(128, 128, 128)">
      <button class="btn" type="submit">Search Buses</button>
    </form>
</div>

<div class="abc">
	<p id="borederimg"></p>
	<p>Introducing On-Time Guarantee!!</p>
  <img src="ontime.jpeg" style="margin-right: 10px;margin-left: -90px">
  <img src="b.png">
</div>
  
<div>
  <h1 style="padding-left: 450px;color: rgb(64, 64, 64);font-size: 2.875em;font-weight: 700;margin-bottom:-90px;margin-top: 100px" >AWARDS & RECOGNITION</h1>
</div>
<div class="insta" style="justify-content: center; flex-wrap: wrap;">
<div class="har1"><figure>
  <img src="Business_Standard1.png" class="appimg" width="400px" height="200px"><a href=""></a></figure>
  <h3>Most Innovative Company!</h3>
</div>
<div class="har2"><figure>
  <img src="Brand_Trust_Report.png" class="appimg" width="400px" height="200px" style="margin-right: 70px;margin-left: 40px"><a href=""></a></figure>
  <figcaption><h3 style="padding-left: 40px">Most Trusted Brand!</h3></figcaption>
</div>
<div class="har3">
  <figure><img src="Eye_For_Travel1.png" class="appimg" width="400px" height="200px"><a href=""></a></figure>
  <figcaption><h3>Mobile Innovation Award</h3></figcaption>
</div>
</div>


<div class="asd">
  <img src="promise.png"" width=90px"></div><div><h1 style="padding-left: 450px;color: rgb(64, 64, 64);font-size: 2.875em;font-weight: 900;margin-bottom: -90px">WE PROMISE TO DELIVER!</h1></div>


<div class="inst">
<div class="delivery1"><figure>
	<img src="maximum_choices.png">
<figcaption><strong>MAXIMUM CHOICE</strong><p style="margin-top: 20px">We give you the widest number of travel options across thousands of routes.</p></figcaption></figure>
</div>
<div class="delivery2"><figure>
	<img src="customer_care.png"></figure><figcaption><strong>SUPERIOR CUSTOMER SERVICE</strong> <p >We put our experience and relationships to good use and are available to solve your travel issues.</p></figcaption>
</div>
<div class="delivery3"><figure>
	<img src="Lowest_fare.png"></figure><figcaption><strong>LOWEST PRICES</strong><p>We always give you the lowest price with the best partner offers.</p></figcaption>
</div>
<div class="delivery4"><figure>
	<img src="benefits.png"></figure><figcaption><strong>UNMATCHED BENEFITS</strong><br>We take care of your travel beyond ticketing by providing you with innovative and unique benefits.</figcaption>
</div>
</div>

<div class="adv"><div class="para">
<h3 style="font-style: italic;">CONVENIENCE ON-THE-GO</h3><br>
<p style = "font-family:courier,arial,helvetica;">Exclusive features on mobile include
redBus NOW - when you need a bus in the next couple of hours. Board a bus on its way.
Boarding Point Navigation - Never lose your way while travelling to your boarding point!
1-click Booking- Save your favourite payment options securely on redBus, and more.
Download the app.
Enter your mobile number below to download the redBus mobile app.</p>
<form action="/action_page.php">
  <input class="phn1"  type="tel" id="phone" name="phone" placeholder="Enter your mobile-number" pattern="^(\+\d{1,2}\s)?\(?\d{3}\)?[\s.-]?\d{3}[\s.-]?\d{4}$" required><br><br>
  <input style="background-color: rgb(255, 51, 51);padding: 10px" type="submit" placeholder="SMS ME THE LINK">
</form>
</div>
<div class ="Phone">
  <img src="a.png" width="450px">
</div></div>

<div class="track">
  <img  style="margin-left: 50px;background-color: white;margin-bottom: 20px" >
</div>
<img src="global.png">
<img src="numbers.png">
<img src="routes.png">

<button onclick="topFunction()" id="myBtn" title="Go to top">Top</button>

<script>
//Get the button
var mybutton = document.getElementById("myBtn");

// When the user scrolls down 20px from the top of the document, show the button
window.onscroll = function() {scrollFunction()};

function scrollFunction() {
  if (document.body.scrollTop > 200 || document.documentElement.scrollTop > 200) {
    mybutton.style.display = "block";
  } else {
    mybutton.style.display = "none";
  }
}

// When the user clicks on the button, scroll to the top of the document
function topFunction() {
  document.body.scrollTop = 0;
  document.documentElement.scrollTop = 0;
}
</script>







<footer class="ct-footer">
  <div class="container">
    <form name="contentForm" enctype="multipart/form-data" method="post" action="">
      <div class="ct-footer-pre text-center-lg">
        <div class="inner">
          <span>Join RedBus to receive updates, news & events!</span>
        </div>
        <div class="inner">
          <div class="form-group">
            <input name="formfields[nl_email]" id="nl_email" class="validate[required]" placeholder="Enter your email address" type="text" value=""> <label for="nl_email" class="sr-only">Email Address</label> <button type="submit" class="btn btn-motive"><a href="http://localhost/register.php">Join</button>
          </div>
        </div>
      </div>
    </form>
    <ul class="ct-footer-list text-center-sm">
      <li>
        <h2 class="ct-footer-list-header">About RedBus</h2>
        <ul>
          <li>
            <a href="">Culture</a>
          </li>
          <li>
            <a href="">Blog</a>
          </li>
          <li>
            <a href="">Careers</a>
          </li>
          <li>
            <a href="">Contact</a>
          </li>
        </ul>
      </li>
      <li>
        <h2 class="ct-footer-list-header">Info About Us</h2>
        <ul>
          <li>
            <a href="">Code of conduct</a>
          </li>
          <li>
            <a href="">Community</a>
          </li>
          <li>
            <a href="">Verified Users</a>
          </li>
          <li>
            <a href="">Mobile apps</a>
          </li>
          <li>
            <a href="">Devlepors</a>
          </li>
        </ul>
      </li>
      <li>
        <h2 class="ct-footer-list-header">Global Sites</h2>
        <ul>
          <li>
            <a href="">Private Policy</a>
          </li>
          <li>
            <a href="">Business app</a>
          </li>
          <li>
            <a href="">Travel widgets</a>
          </li>
          <li>
            <a href="">Products for Business</a>
          </li>
          <li>
            <a href="">Advisors</a>
          </li>
          <li>
            <a href="">Claim your listing</a>
          </li>
          <li>
            <a href="">Business blogs</a>
          </li>
        </ul>
      </li>
      <li>
        <h2 class="ct-footer-list-header">For Booking Tickets</h2>
        <ul>
          <li>
            <a href="">Advertise</a>
          </li>
          <li>
            <a href="">Order</a>
          </li>
          <li>
            <a href="">Book</a>
          </li>
          <li>
            <a href="">Trace</a>
          </li>
          <li>
            <a href="">Hyperpure</a>
          </li>
        </ul>
      </li>
      <li>
        <h2 class="ct-footer-list-header">About</h2>
        <ul>
          <li>
            <a href="">FAQ</a>
          </li>
          <li>
            <a href="">Our Board</a>
          </li>
          <li>
            <a href="">Our Staff</a>
          </li>
          <li>
            <a href="">Contact Us</a>
          </li>
        </ul>
      </li>
    </ul>
    <div class="ct-footer-meta text-center-sm">
      <div class="row">
        <div class="col-sm-6 col-md-2">
          <img src="b.png" width="400px">
        </div>
        <div class="col-sm-6 col-md-3">
          <address>
            <span>myBus<br></span>123 Easy Street<br>
            New Delhi, India<br>
            <span>Phone: <a href="tel:5555555555">9868054543</a></span>
          </address>
        </div>
        <div class="col-sm-6 col-md-3">
          <a href="" target="_blank"><img src="aero.jpeg" style="width: 160px;"></a>
          <address>
            <span>MyIndigo<br></span>123 Easy Street<br>
            New Delhi, India<br>
            <span>Phone: <a href="tel:5555555555">9868054543</a></span>
          </address>
        </div>
        <div class="col-sm-6 col-md-3">
          <ul class="ct-socials list-unstyled list-inline">
            <li>
              <a href="" target="_blank"><img src="fb.png" style="width: 60px;"></a>
            </li>
            <li>
              <a href="" target="_blank"><img src="insta.png" style="width: 60px;"></a>
            </li>
            <li>
              <a href="" target="_blank"><img  src="youtube.png" style="width: 60px;"></a>
            </li>
            <li>
              <a href="" target="_blank"><img src="twitter.png" style="width: 60px;padding-top: 10px;"></a>
            </li>
            <li>
              <a href="" target="_blank"><img src="" style="width: 60px;"></a>
            </li>
          </ul>
        </div>
      </div>
    </div>
  </div>
  <div class="ct-footer-post">
    <div class="container">
      <div class="inner-left">
        <ul>
          <li>
            <a href="">FAQ</a>
          </li>
          <li>
            <a href="">News</a>
          </li>
          <li>
            <a href="">Contact Us</a>
          </li>
        </ul>
      </div>
      <div class="inner-right">
        <p>Copyright © 2016 abcd.&nbsp;<a href="">Privacy Policy</a></p>
      </div>
    </div>
  </div>
</footer>



</body>
</html> 