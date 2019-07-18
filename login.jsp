<!DOCTYPE HTML>
<html>

<head>
  <title>ONLINE FIR</title>
  <link rel="stylesheet" type="text/css" href="style/style.css" />
<style>
body {font-family: Arial, Helvetica, sans-serif;}
form {border: 3px solid #f1f1f1;}

input[type=text], input[type=password] {
    width: 100%;
    padding: 12px 20px;
    margin: 8px 0;
    display: inline-block;
    border: 1px solid #ccc;
    box-sizing: border-box;
}

button {
    background-color: #AAAAAA;
    color: white;
    padding: 14px 20px;
    margin: 8px 0;
    border: none;
    cursor: pointer;
    width: 100%;
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
function validation1()
{
document.getElementById("n").value="";
document.getElementById("p").value="";
}
</script>

</head>

<body style="background-color:#FFFFFF;">
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
          <li><a href="register.jsp">Register</a></li>
          <li class="selected"><a href="login.jsp">Login</a></li>
          <li><a href="serve.jsp">Services</a></li>
          <li><a href="contact.jsp">Contact Us</a></li>
        </ul>
      </div>
    </div>
    <div id="content_header"></div>
    <div id="site_content">
	<h2><font color="#CF0000"><b>Login Form</font></b></h2>

<form method="get" action="./login">
  <div class="imgcontainer">
    <img src="style/img_avatar2.png" alt="Avatar" class="avatar">
  </div>

  <div class="container">
    <label for="uname"><b><font color="black">Username</font></b></label>
    <input type="text" placeholder="Enter Username" name="uname" id="n" required>

    <label for="psw"><b><font color="black">Password</font></b></label>
    <input type="password" placeholder="Enter Password" name="psw" id="p" required><br><br>
	
	<label for="myradio"><b><font color="red">Login as  </font></b></label>&nbsp;
	<input type="radio" value="admin" name="myradio"><b> Admin </b>
	&nbsp;<input type="radio" value="user" name="myradio" checked> <b>User</b>&nbsp;
	<input type="radio" value="police" name="myradio"><b> Police</b>
        <br><br>
    <button type="submit"><b>Login</b></button>
    <label>
      <input type="checkbox" checked="checked" name="remember"><font color="black"> Remember me</font>
    </label>
  </div>

  <div class="container" style="background-color:#f1f1f1">
    <button type="button" class="cancelbtn" onclick="validation1()">Cancel</button>
    <span class="psw">Forgot <a href="#">password?</a></span>
  </div>
</form> 
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
