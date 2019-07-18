


<%@ page language="java" contentType="text/html"  %>

<%@ page import="java.sql.*"   %>

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
var na=document.getElementById("n1").value;
var _na=new RegExp("[a-zA-Z ]");
if(!_na.test(na))
{
alert("enter valid username");
document.getElementById("n1").value="";
}
var fa=document.getElementById("n2").value;
var _fa=new RegExp("[a-zA-Z ]");
if(!_fa.test(fa))
{
alert("enter valid username");
document.getElementById("n2").value="";
}
var em=document.getElementById("e").value;
var _em=new RegExp("^[a-zA-Z]+@[a-zA-Z]+\.[a-z]{2,3}$");
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

function validation1()
{
document.getElementById("n1").value="";
document.getElementById("n2").value="";
document.getElementById("e").value="";
document.getElementById("ph").value="";

}
</script>
 
</head>

<body>

<%
if(session.getAttribute("username")==null)
{ %>
	<jsp:forward page="login.jsp" />
	<%
}
%>

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
         <li><a href="status.jsp">Status</a></li>
          <li class="selected"><a href="services.jsp">Complaint</a></li>
          <li><a href="help.jsp">Help</a></li>
		  <li><a href="contact2.jsp">Contact Us</a></li>
          <li><a href="./logout">Logout</a></li>
          
        </ul>
      </div>
    </div>
    <div id="content_header"></div>
    <div id="site_content">
      
		<marquee width="100%" direction="HORIZONTAL" height="5%"><font color="#f44336">
PCR : 100   VIGILANCE : 1064   WOMEN IN DISTRESS : 1064.</font>
</marquee>

	<marquee width="100%" direction="HORIZONTAL" height="5%"><font color="#f44336">WELCOME 	
 <font color="blue"><%=session.getAttribute("username")%></font></font>
</marquee>
	
<h1><font color="#CF0000"><B>FILE YOUR COMPLAINT</B></font></h1>
<P>FILL THE BELOW COLOUMNS APPROPRIATELY</p>

<p style="font-size:120%;"><b>Note : </b>The fields with '<span style="font-size:100%;color:red;">&star;</span></b></label>'  this mark should be filled compulsory</p>

<form method="get" action="./complaint">
  <!--<div class="imgcontainer">
    <img src="style/img_avatar2.png" alt="Avatar" class="avatar">
  </div>-->

  <div class="container">
    <label for="uname"><b>Complainant's Name <span style="font-size:100%;color:red;">&star;</span></b></label>
    <input type="text" placeholder="Enter Complainant's Name" name="uname" id="n1" required>
	
	<label for="email"><b>Complainant's Address <span style="font-size:100%;color:red;">&star;</span></b></label></b></label>
    <input type="text" placeholder="Enter Complainant's Address" name="address" id="ad" required>
	
	<label for="pno"><b>Complainant's Mobile Number <span style="font-size:100%;color:red;">&star;</span></b></label> </b></label>
    <input type="text" placeholder="Enter phone no" name="pno" id="ph" required><br><br>
	
	<label for="pno"><b>Complainant's Email ID </b></label>
    <input type="text" placeholder="Enter Complainant's Email ID " name="email" id="e" required><br><br>
	
	<label for="gen"><b>Complainant's Gender <span style="font-size:100%;color:red;">&star;</span></b></label> : </b></label>
	  <input type="radio" name="gender" value="male" id="ge"> Male
<input type="radio" name="gender" value="female" id="ge"> Female
<input type="radio" name="gender" value="transgender" id="ge"> Transgender<br><br><br>

<label for="dob"><b>Complaint <span style="font-size:100%;color:red;">&star;</span></b></label> : </b></label><br>
		<textarea rows="4" cols="35" name="complaint" required placeholder="Enter your Complaint"></textarea><br><br>
	
	<label for="pno"><b>Place of Loss in Hyderabad <span style="font-size:100%;color:red;">&star;</span></b></label></b></label>
    <input type="text" placeholder="Enter Place of Loss in Delhi" name="place" required><br><br>
	
		<label for="dob"><b>Date of Loss <span style="font-size:100%;color:red;">&star;</span></b></label></b></label>
		<input type="date" name="loss"><br><br>
		
		<label for="pno"><b>Lost Articles <span style="font-size:100%;color:red;">&star;</span></b></label></b></label>
    <input type="text" placeholder="Enter Lost Articles" name="articles" required><br><br>
	
	<label for="pno"><b>Description</b></label>
    <input type="text" placeholder="Enter some Description" name="pno" required><br><br>
		
		
 <input type="checkbox" required>  i agree to the terms of service<br><br>
		
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
