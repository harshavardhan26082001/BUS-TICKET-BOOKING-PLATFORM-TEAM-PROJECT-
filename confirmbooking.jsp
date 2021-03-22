<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <style>

@import url("https://fonts.googleapis.com/css2?family=Baloo+Tamma+2:wght@400;500&display=swap");

* {
  margin: 0;
  padding: 0;
  box-sizing: border-box;
  outline: none;
  font-family: "Baloo Tamma 2", cursive;
}

body {
  width: 100%;
  height: 100%;

  background-size: auto;
  background-repeat: no-repeat;
  background-image: url("https://picsum.photos/2000/2000?blur=8");
  animation: breath 30s infinite ease-in-out;
}

@keyframes breath {
  0% {
    background-size: 100%;
  }
  50% {
    background-size: 110%;
  }
  100% {
    background-size: 100%;
  }
}
.holder {
  position: absolute;
  padding-left:20px;
  width: 300px;
  height: 300px;
  left: calc(50% - 150px);
  bottom: calc(50% - 150px);

  border-radius: 20px;

  background-color: rgb(0, 0, 0);
  background-color: rgba(0, 0, 0, 0.4);

  transition: 0.9s linear;
}
.holder form {
  display: flex;
  flex-direction: column;

  width: 300px;
  height: 300px;

  align-items: center;
}

.holder form a {
  color: white;
  font-size: 40px;
}

.holder form input {
  padding: 5px;
  border-radius: 5px;
  margin: 10px;

  border: none;

  font-size: 16px;
}

button {
  padding: 10px 15px;
  border: none;

  font-size: 14px;

  margin-top: 30px;

  font-weight: bold;

  background-color: white;
  opacity: 0.4;
}

button:hover {
  opacity: 1;
  cursor: pointer;
}

.fadeOut {
  animation: fadeOut linear 1s;
}

@keyframes fadeOut {
  0% {
    opacity: 1;
  }
  30% {
    opacity: 0;
  }
  100% {
    opacity: 0;
  }
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
    <%
if(session.getAttribute("username")==null)
        {
            response.sendRedirect("login1.jsp");
        }
%>
    <body>
        <section class="holder">
        <form action="welcome.jsp" method="post">
            <a>Want To Cancel Ticket?</a>
            <div class="card">
                <input type="submit" value="HomePage" />
                <br>
            <h1>Want To Proceed?</h1>
            <a href="amountinwallet.jsp">book</a>
            </div>
        </form>
      </section>
      
        
    </body>
</html>
        
        
    </body>
</html>
