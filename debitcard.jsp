<link rel="stylesheet" type="text/css" href="debitcard.css" />
<form action="wallet"  method="post">
<div id="card-success" class="hidden">
  <i class="fa fa-check"></i>
  <p>Payment Successful!</p>
</div>
<div id="form-errors" class="hidden">
  <i class="fa fa-exclamation-triangle"></i>
  <p id="card-error">Card error</p>
</div>
<div id="form-container">

  <div id="card-front">
    <div id="shadow"></div>
    <div id="image-container">
      <span id="amount">paying: <strong>$99</strong></span>
      <span id="card-image">
      
        </span>
    </div>
    <!--- end card image container --->

    <label for="card-number">
        Card Number
      </label>
    <input type="text" id="card-number" placeholder="1234-5678-9101-1112" length="16" pattern="[5-7]{1}[0-9]{3}-[0-9]{4}-[0-9]{4}-[0-9]{4}">
    <div id="cardholder-container">
      <label for="card-holder">Card Holder
      </label>
      <input type="text" id="card-holder" placeholder="e.g. John Doe" />
    </div>
    <!--- end card holder container --->
    <div id="exp-container">
      <label for="card-exp">
          Expiration
        </label>
      <input id="card-month" type="text" placeholder="MM" length="2" pattern="(0)[0-9])|((1)[0-2]">
      <input id="card-year" type="text" placeholder="YY" length="2" pattern="[0-2][0-9])">
    </div>
        <div id="cvc-container">
      <label for="card-cvc"> CVC/CVV</label>
      <input id="card-cvc" placeholder="XXX" type="text" length="3" pattern="[0-9]{3}">
      <p>Last 3 or 4 digits</p>
    </div>
    <!--- end CVC container --->
    <!--- end exp container --->
  </div>
  <!--- end card front --->
  <div id="card-back">
    <div id="card-stripe">
    </div>

  </div>
  <!--- end card back --->
  <input type="text" id="card-token" />
  <input type="submit" id="card-btn">

</div>
    
    <%
if(session.getAttribute("username")==null)
        {
            response.sendRedirect("login1.jsp");
        }

String wallet=request.getParameter("money");
    session.setAttribute("card",wallet);
    %>
</form>
<!--- end form container --->

<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
<script type="text/javascript" src="https://js.stripe.com/v2/"></script>
<script src="https://use.fontawesome.com/f1e0bf0cbc.js"></script>
