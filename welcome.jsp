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

<script>

function Redirect() {
  window.location = "file:///C:/xampp/htdocs/mobilecommerce.html";
}
</script>

<%
        response.setHeader("Cache-Control","no-cache,no-store,must-revalidate");
        
        
        %>

	<title>MyBus</title>
		<meta charset="utf-8">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="google.css">	
</head>   
<body style="background-color: rgb(230, 230, 230)">
  <nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="">SMASH</a>
    </div>
    <ul class="nav navbar-nav">
      <li class="active"><a href="welcome.jsp">Home</a></li>
      <li><a href="rules.jsp">Rules Page</a></li>
      <li><a href="aboutus.jsp">Contact Us</a></li>
      <li><a href="busdet.jsp">Bus Info</a></li>
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

<form class="asd">
   <input class="asdf" type = "button" value = "Redirect Me"  />
</form>

<div style="background-image: url('bus.jpg');" class="harsha">
        <form class="mysearch" action="selectbus.jsp" method="post" style="margin-top: 150px">
          <div  class="custom-select" style="width:250px;height: 10px;border-style: solid;">
        <select name="from">
          <option value="0">From</option>
          <option value="hyderabad">hyderabad</option>
          <option value="vizag">vizag</option>
          <option value="banglore">bangalore</option>
          
        </select>
      </div>  
      <div class="custom-select" style="width: 250px;height: 10px;border-style: solid;border-radius: 6px;">
        <select name="to">
          <option value="0">TO</option>
          <option value="hyderabad">hyderabad</option>
          <option value="vizag">vizag</option>
          <option value="banglore">bangalore</option>
          
        </select>
      </div>

        <input type="date" placeholder="Onward date" name="date" style="width:250px;height: 70px;  margin-right: -1px;border-style: solid;border-width: 2px;border-color: rgb(128, 128, 128)">
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
  <figcaption><h3>Most Innovative Company!</h3></figcaption>
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


<script>
  
var x, i, j, l, ll, selElmnt, a, b, c;
/*look for any elements with the class "custom-select":*/
x = document.getElementsByClassName("custom-select");
l = x.length;
for (i = 0; i < l; i++) {
  selElmnt = x[i].getElementsByTagName("select")[0];
  ll = selElmnt.length;
  /*for each element, create a new DIV that will act as the selected item:*/
  a = document.createElement("DIV");
  a.setAttribute("class", "select-selected");
  a.innerHTML = selElmnt.options[selElmnt.selectedIndex].innerHTML;
  x[i].appendChild(a);
  /*for each element, create a new DIV that will contain the option list:*/
  b = document.createElement("DIV");
  b.setAttribute("class", "select-items select-hide");
  for (j = 1; j < ll; j++) {
    /*for each option in the original select element,
    create a new DIV that will act as an option item:*/
    c = document.createElement("DIV");
    c.innerHTML = selElmnt.options[j].innerHTML;
    c.addEventListener("click", function(e) {
        /*when an item is clicked, update the original select box,
        and the selected item:*/
        var y, i, k, s, h, sl, yl;
        s = this.parentNode.parentNode.getElementsByTagName("select")[0];
        sl = s.length;
        h = this.parentNode.previousSibling;
        for (i = 0; i < sl; i++) {
          if (s.options[i].innerHTML == this.innerHTML) {
            s.selectedIndex = i;
            h.innerHTML = this.innerHTML;
            y = this.parentNode.getElementsByClassName("same-as-selected");
            yl = y.length;
            for (k = 0; k < yl; k++) {
              y[k].removeAttribute("class");
            }
            this.setAttribute("class", "same-as-selected");
            break;
          }
        }
        h.click();
    });
    b.appendChild(c);
  }
  x[i].appendChild(b);
  a.addEventListener("click", function(e) {
      /*when the select box is clicked, close any other select boxes,
      and open/close the current select box:*/
      e.stopPropagation();
      closeAllSelect(this);
      this.nextSibling.classList.toggle("select-hide");
      this.classList.toggle("select-arrow-active");
    });
}
function closeAllSelect(elmnt) {
  /*a function that will close all select boxes in the document,
  except the current select box:*/
  var x, y, i, xl, yl, arrNo = [];
  x = document.getElementsByClassName("select-items");
  y = document.getElementsByClassName("select-selected");
  xl = x.length;
  yl = y.length;
  for (i = 0; i < yl; i++) {
    if (elmnt == y[i]) {
      arrNo.push(i)
    } else {
      y[i].classList.remove("select-arrow-active");
    }
  }
  for (i = 0; i < xl; i++) {
    if (arrNo.indexOf(i)) {
      x[i].classList.add("select-hide");
    }
  }
}
/*if the user clicks anywhere outside the select box,
then close all select boxes:*/
document.addEventListener("click", closeAllSelect);
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
        <p>Copyright ? 2016 abcd.&nbsp;<a href="">Privacy Policy</a></p>
      </div>
    </div>
  </div>
</footer>



</body>
</html> 