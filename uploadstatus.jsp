
<%@ page language="java" contentType="text/html"  %>

<%@ page import="java.sql.*"   %>

<html>

<head>
  <title>ONLINE FIR : ADMIN</title>
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
          <li  class="selected"><a href="uploadstatus.jsp">Upload Status</a></li>
          <li><a href="users.jsp">Users</a></li>
          <li><a href="home.jsp">Logout</a></li>
        </ul>
      </div>
    </div>
    <div id="content_header"></div>
    <div id="site_content">
	
	<%
if(session.getAttribute("username")==null)
{ %>
	<jsp:forward page="login.jsp" />
	<%
}
%>

	
	<marquee width="100%" direction="HORIZONTAL" height="5%"><font color="#f44336">
logined as <font color="blue"><%=session.getAttribute("username")%></font></font>
</marquee>
	
	<h2><font color="#CF0000"><b>UPLOAD STATUS OF A USER</font></b></h2>
	<p>to be implemented</p>
	
	<form method="get" action="">
  

  <div class="container">
	<label for="ps"><b>Complaints name</b></label>
    <input type="text" placeholder="Enter complaints name for whom you are uploading status for" name="ps" id="n" required>
  
    <label for="ps"><b>Police Station</b></label>
    <input type="text" placeholder="Enter police station to concern" name="ps" id="n" required>

    <label for="sl"><b>status level</b></label>
    <input type="text" placeholder="Enter level of status" name="sl" id="p" required><br>
		
    <button type="submit">Submit</button>&nbsp;
	<button type="reset">Reset</button><br><br>
  </div>

  <div class="container" style="background-color:#f1f1f1">
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
