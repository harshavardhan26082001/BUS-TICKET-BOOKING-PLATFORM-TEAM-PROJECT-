

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registration Page</title>
        
        <style>
    * {
  margin: 0px;
  padding: 0px;
}
body {
  font-size: 120%;
  background: #F8F8FF;
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
  padding: 20px;
}
form, .content {
  width: 30%;
  margin: 0px auto;
  padding: 20px;
  border: 1px solid #B0C4DE;
  background: #99ff99;
  border-radius: 0px 0px 10px 10px;
}
.input-group {
  margin: 10px 0px 10px 0px;
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
}
.btn {
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
        <div class="header">
  	<h2>Register</h2>
  </div>
	
  <form method="post" action="reguse" enctype="multipart/form-data">
  	<div class="input-group">
            <label style="font-family: Courier New; font-size: 20px;font-weight: 700;">FullName:</label>
  	  <input type="text" name="fullname"  pattern="[a-zA-z]{1,20}">
          <ul>
              <li style="margin-left:20px;">range 1 to 20 letters</li></ul>
  	</div>
      <br>
        <div class="input-group">
            <label style="font-family: Courier New; font-size: 20px;font-weight: 700;">username:</label>
  	  <input type="text" name="uname" pattern="[a-zA-z0-9]{3,10}">
          <ul style="margin-left:20px;" >
              <li>
                  no special characters
              </li>
              <li>
                  range from 3 to 10
              </li>
          </ul>
  	</div>
      <br>
  	<div class="input-group">
            <label style="font-family: Courier New; font-size: 20px;font-weight: 700;">Email:</label>
  	  <input type="email" id="email" name="email" pattern="(\W|^)[\w.+\-]*@gmail\.com(\W|$)">
          <ul style="margin-left:20px;">
              <li>
                  '@' should be present
              </li>
              <li>characters should follow after '@'</li>
              <li>'.com' should be present at the end</li>
              
          </ul>          
  	</div>
      <br>
        <div class="input-group">
            <label style="font-family: Courier New; font-size: 20px;font-weight: 700;">Mobile number:</label>
  	  <input type="text"  name="phone" pattern="^[6-9]{1}[0-9]{9}$" >
          <ul>
              <li style="margin-left:20px;">
                 pattern:600000000-9999999999
              </li>
          </ul>
  	</div>
  	<div class="input-group">
            <br>
            <label style="font-family: Courier New; font-size: 20px;font-weight: 700;">Password:</label>
  	  <input type="password" name="password_1" pattern="^[A-z]{1}[a-z]{3,5}(_|@)[0-9]{2,3}">
  	</div>
      <ul>
          <li style="margin-left:20px;">
              1st letter capital.4 to 6 letters till special character."@","_"any one special character.after that 2 to 3 digits
          </li>
      </ul>
        <div class="input-group">
            <br>
            <label style="font-family: Courier New; font-size: 20px;font-weight: 700;">Confirm password:</label>
  	  <input type="password" name="password_2">
                <ul style="margin-left:20px;">
                    <li>Same as password</li>
                </ul>          
  	</div>
      <br>
        <div class="input-group">
            <label style="font-family: Courier New; font-size: 20px;font-weight: 700;">DOB:</label>
  	    <input type="text"  name="dob" pattern="^([0-2][0-9]|(3)[0-1])(-)(((0)[0-9])|((1)[0-2]))(-)(((1)(9)(4)[0-9])|((2)(0)(0)[0-2]))$">
            <ul>
                <li style="margin-left:20px;">
                   those are born between 01-01-1940 and 31-12-2002 are eligible to register 
                </li>
            </ul>
  	</div>
      <br>
      <div class="input-group">
          <label style="font-family: Courier New; font-size: 20px;font-weight: 700;">Desktop profile:</label>
  	  <input type="file" name="myimg"><br><br>
  	</div>
  	<div class="input-group">
            <button type="submit" class="btn" name="reg_user">Register</button>
  	</div>
        <div class="input-group">
  	  <button type="reset" class="btn" >clear</button>
  	</div>
      <p style="font-family: Courier New; font-size: 20px;font-weight: 700;">
            Already a member?<a href="login1.jsp">Sign in</a>
  	</p>
  </form>
    </body>
</html>
