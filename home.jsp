
<!DOCTYPE HTML>
<html>

<head>
  <title>ONLINE FIR </title>
  <link rel="stylesheet" type="text/css" href="style/style.css" />
  
  <!--<meta name="viewport" content="width=device-width, initial-scale=1">-->
<!--<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">-->
<style>
.mySlides {display:none;}
</style>
  
</head>

<body>
  <div id="main">
    <div id="header">
      <div id="logo">
        <div id="logo_text">
          <!-- class="logo_colour", allows you to change the colour of the text -->
<h1 style="color:red; font-size:400%;text-align:LEFT;"><a href="home.html">ONLINE FIR<span class="logo_colour"></span></a></h1>
          <h2 style="text-align:  right;">Justice For  All</h2>
        </div>
      </div>
      <div id="menubar">
        <ul id="menu">
          <!-- put class="selected" in the li tag for the selected page - to highlight which page you're on -->
          <li class="selected"><a href="home.jsp">Home</a></li>
          <li><a href="register.jsp">Register</a></li>
          <li><a href="login.jsp">Login</a></li>
          <li><a href="serve.jsp">Services</a></li>
          <li><a href="contact.jsp">Contact Us</a></li>
        </ul>
      </div>
    </div>
    <div id="content_header"></div>
    <div id="site_content">
	
<center>
<div class="" style="max-width:500px">
  <img class="mySlides" src="style/55.jpg" style="width:100%">
  <img class="mySlides" src="style/44.jpg" style="width:100%">
  <img class="mySlides" src="style/22.jpg" style="width:100%">
</div></center>

<script>
var myIndex = 0;
carousel();

function carousel() {
    var i;
    var x = document.getElementsByClassName("mySlides");
    for (i = 0; i < x.length; i++) {
       x[i].style.display = "none";  
    }
    myIndex++;
    if (myIndex > x.length) {myIndex = 1}    
    x[myIndex-1].style.display = "block";  
    setTimeout(carousel, 10000); // Change image every 2 seconds
}
</script>
		<h1><b>WELCOME</b></h1>
        <p><strong>If you are looking for complaining the injustice caused to you to the higher authorities by filing a complaint without getting ambarassed by going to police station, here is the way you can file a complaint and know the status of your complaint ... it just starts with registering your details and logging into the Online FIR...IT JUST BEARLY TAKES YOUR TIME</strong></p>
		<p>IF YOU ARE NEW HERE PLEASE</p>
		<p><b>FOLLOW THE BELOW GIVEN STEPS : </b></p>
        <ul>
		<li><h2>STEP 1</h2></li>
        <p>if you are a new user click on register link and fill the details to create a login</p>
        <li><h2>STEP 2</h2></li>
		<p>After completing the step 1 click on login link and login into the system by your username and password that you have created in step 1</p>
        <li><h2>STEP 2</h2></li>
		<p>select your type of complaint by clicking on the complaints provided below</p>
        <li><h2>STEP 3</h2></li>
		<p>Enter your complaint in the provided form respectively</p>
        </ul>
		<br>
        <p><strong>THANK YOU  !</strong></p>
      </div>
    </div>
    <div id="content_footer"></div>
    <div id="footer" style="font-size: 80%;">
	  <p>Phone no : 100</p>
	  <p>Hydrabad Area</p>
	  <p>Contact information : <a href="mailto:someone@example.com">someone@example.com</a></p>
    </div>
  </div>
</body>
</html>
