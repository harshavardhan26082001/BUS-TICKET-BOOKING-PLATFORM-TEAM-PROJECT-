<!DOCTYPE html>
<html>
<head>
  <title></title>
  <style>
    body {
  margin: 0;
  padding: 0;
  background-image: url("data:image/png;base64, iVBORw0KGgoAAAANSUhEUgAAACoAAAAoCAYAAACIC2hQAAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJbWFnZVJlYWR5ccllPAAAAbRJREFUeNrsl91ugzAMhQMGJk3qNJVe7f0fb/+TWlqVskQ6YVYaCC2OduNIp6XCMV9DnCMXxpgX8zf2Vp/sN1nt8B2Oo9Ubrp+tHs30GBB7smqsWqsiEndGXG+1gUaQDQusrDqrSwLS3f9CQoM5NeZLQBrEu/HgPspIwjPg2hnIdyRySbZ48AdWeQ5yuwCyYYv3A40ryhN6yCoB6VenxvUBajA3BlkugGz9KmKuU0GMPAU5RCALtmU4rIP/vhOy4K8cOY6Ei34BZGqfVQD0sH0CsmeQFeohzDnCEiuqdmUxeFhCcfnToJ6AfGWFc2F/1MRgXdInaC2kHzWDPWIeTUAS/swJb4GmYP1KlkKQIewBwB42hNzhXoO4SdjwHL3n7NsjJgVLOML6yBlNKdgY6K0HdBds/DnYYcZIiBVjF8KGoCIuEimw1W5X5nCRHG4Xc6bVLoJ7om5HOVwkh9tRDhfJ4XZ8v4i5yMKVvMntvDOIuggeKup2hNct6iKIEXU7X/WiLiLQjly5HT/wxVxEoB25cjvtmbRn0p5JeybtmbRn0p5JeybtmbRn0p5Je6Z/6Jl+BRgAqFHkuKGmPZUAAAAASUVORK5CYII=");
}

h1 {
  font-size: 4em;
  padding: .6em 1.4em;
  font-family: monospace;
  color: #1650ff;
}
.button {
  background-color: #4CAF50; /* Green */
  border: none;
  color: white;
  margin-left: 700px;
  height:20px;
  padding: 16px 32px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  transition-duration: 0.4s;
  cursor: pointer;
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
<script>  
var request;  
function sendInfo()  
{  
var v=document.vinform.t1.value;  
var url="admin2bus.jsp?val="+v;  
  
if(window.XMLHttpRequest){  
request=new XMLHttpRequest();  
}  
else if(window.ActiveXObject){  
request=new ActiveXObject("Microsoft.XMLHTTP");  
}  
  
try{  
request.onreadystatechange=getInfo;  
request.open("POST",url,true);  
request.send();  
}catch(e){alert("Unable to connect to server");}  
}  
  
function getInfo(){  
if(request.readyState==4){  
var val=request.responseText;  
document.getElementById('amit').innerHTML=val;  
}  
}  
  
</script>  
</head>
<body>
<form name="vinform">  
  <h1 style="margin-left: 500px;">Admin Page:</h1>
  <h2 style="font-family: Arial,Helvetica;color: black;margin-left: 300px;margin-top: 100px;">Enter Identity Number:</h2>
  <input type="text" name="t1" onkeyup="sendInfo()" style="margin-left: 400px;width: 200px;">  
</form>  
  
<span id="amit"> </span>  
<a href="Admin22.jsp" class="button button3">booking history</a>
</body>
</html>