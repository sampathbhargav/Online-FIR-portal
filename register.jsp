<!DOCTYPE HTML>
<html>

<head>
  <title>ONLINE FIR</title>
  <link rel="stylesheet" type="text/css" href="style/style.css" />
<style>
body {font-family: Arial, Helvetica, sans-serif;}
form {border: 3px solid #f1f1f1;}

input[type=text], input[type=password], textarea, input[type=date] {
    width: 100%;
    padding: 12px 20px;
    margin: 8px 0;
    display: inline-block;
    border: 1px solid #ccc;
    box-sizing: border-box;
}

button {
    background-color: #BBBBBB;<!--#4CAF50-->
    color: white;
    padding: 14px 20px;
    margin: 8px 0;
    border: none;
    cursor: pointer;
    width: 49%;
}

button:hover {
    opacity: 0.8;
}

.cancelbtn {
    width: auto;
    padding: 10px 18px;
    background-color: #f44336;
}

.imgcontainer {
    text-align: center;
    margin: 24px 0 12px 0;
}

img.avatar {
	height: 20%;
    width: 10%;
    border-radius: 50%;
}

.container {
    padding: 16px;
}

span.psw {
    float: right;
    padding-top: 16px;
}

/* Change styles for span and cancel button on extra small screens */
@media screen and (max-width: 300px) {
    span.psw {
       display: block;
       float: none;
    }
    .cancelbtn {
       width: 100%;
    }
}
</style>

<script type="text/javascript">
function validation()
{
var na=document.getElementById("n").value;
var _na=new RegExp("[a-zA-Z ]");
if(!_na.test(na))
{
alert("enter valid username");
document.getElementById("n").value="";
}


var pa=document.getElementById("p").value;
var _pa=new RegExp("^(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{4,8}$");<!--Password matching expression. Password must be at least 4 characters, no more than 8 characters, and must include at least one upper case letter, one lower case letter, and one numeric digit. Eg: abcd@12A -->
if(!_pa.test(pa))
{
alert("enter valid password"+"Password must be at least 4 characters, no more than 8 characters, and must include at least one upper case letter, one lower case letter, and one numeric digit.\n\n"+"eg: abcd@12A");
document.getElementById("p").value="";
}


var em=document.getElementById("e").value;
var _em=new RegExp("^([a-zA-Z0-9_\-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([a-zA-Z0-9\-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$");
<!--Email validator that adheres directly to the specification for email address naming. It allows for everything from ipaddress and country-code domains, to very rare characters in the username.    Matches	asmith@mactec.com | foo12@foo.edu | bob.smith@foo.tv-->
if(!_em.test(em))
{
alert("enter valid email");
document.getElementById("e").value="";
}
var phn=document.getElementById("ph").value;
var _phn=new RegExp("^[0-9]{10}$");
if(!_phn.test(phn))
{
alert("enter valid phone number");
document.getElementById("ph").value="";
}
}

</script>
 
</head>

<body>
  <div id="main">
    <div id="header">
      <div id="logo">
        <div id="logo_text">
          <!-- class="logo_colour", allows you to change the colour of the text -->
          <h1 style="color:blue; font-size:400%;text-align:LEFT;"><a href="home.html">ONLINE FIR<span class="logo_colour"></span></a></h1>
          <h2 style="text-align:  right;">Justice For  All</h2>
        </div>
      </div>
      <div id="menubar">
        <ul id="menu">
          <!-- put class="selected" in the li tag for the selected page - to highlight which page you're on -->
         <li><a href="home.jsp">Home</a></li>
          <li class="selected"><a href="register.jsp">Register</a></li>
          <li><a href="login.jsp">Login</a></li>
          <li><a href="serve.jsp">Services</a></li>
          <li><a href="contact.jsp">Contact Us</a></li>
        </ul>
      </div>
    </div>
    <div id="content_header"></div>
    <div id="site_content">
	
<h2><font color="#CF0000"><B>Registration Form</B></font></h2>

<form method="get" action="./register">
  <div class="imgcontainer">
    <img src="style/img_avatar2.png" alt="Avatar" class="avatar">
  </div>

  <div class="container">
    <label for="uname"><b>Name</b></label>
    <input type="text" placeholder="Enter Username" name="uname" id="n" required>

    <label for="psw"><b>Password</b></label>
    <input type="password" placeholder="Enter Password" name="psw" id="p" required>
	
	<label for="email"><b>Email id</b></label>
    <input type="text" placeholder="Enter Email id" name="email" id="e" required>
	
	<label for="pno"><b>Phone no</b></label>
    <input type="text" placeholder="Enter phone no" name="pno" id="ph" required><br><br>

	<label for="gen"><b>Gender : </b></label>
	  <input type="radio" name="gender" value="male" id="ge"> Male
<input type="radio" name="gender" value="female" id="ge"> Female
<input type="radio" name="gender" value="transgender" id="ge"> Transgender<br><br><br>
        
		<label for="dob"><b>Date of Birth</b></label>
		<input type="date" name="bday"><br><br>
		
		<label for="dob"><b>Address : </b></label><br>
		<textarea rows="4" cols="35" name="add" id="ad" required placeholder="Enter your Address"></textarea><br><br>
 <input type="checkbox">  i agree to the terms of use <br><br>
		
    <button type="submit" onclick="validation()">Submit</button>&nbsp;
	<button type="reset">Reset</button><br><br>
    <label>
      <input type="checkbox" checked="checked" name="remember"> Remember me
    </label>
  </div>

  <div class="container" style="background-color:#f1f1f1">
  </div>
</form>
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
