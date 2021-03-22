

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
        
          <form method="post" action="admin">
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
  		<button type="submit" class="btn" >Login</button>
  	</div>
              
  	
        <br>
        
        
  </form>
        
    </body>
</html>
