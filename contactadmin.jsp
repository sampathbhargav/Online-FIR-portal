<!DOCTYPE HTML>
<html>

<head>
  <title>ONLINE FIR : POLICE</title>
  <link rel="stylesheet" type="text/css" href="style/style.css" />
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
var em=document.getElementById("e").value;
var _em=new RegExp("^[a-zA-Z]+@[a-zA-Z]+\.[a-z]{2,3}$");
if(!_em.test(em))
{
alert("enter valid email");
document.getElementById("e").value="";
}
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
          <li><a href="policeupload.jsp">Upload-Status</a></li>
          <li><a href="pcomplaints.jsp">Complaints</a></li>
          <li class="selected"><a href="contactadmin.jsp">Contact-admin</a></li>
          <li><a href="./logout">Logout</a></li>
        </ul>
      </div>
    </div>
    <div id="content_header"></div>
    <div id="site_content">
	<form action="">
		<h1>Contact Admin</h1>
        <P></P>       
          <div class="form_settings">
            <p><span>Name : </span><input class="contact" type="text" name="your_name" value="" placeholder="Enter name" id="n" /></p>
            <p><span>Police ID : </span><input class="contact" type="text" name="your_email" value="" placeholder="Enter Police ID" id="e" /></p>
            <p><span>Message : </span><textarea class="contact textarea" rows="8" cols="50" name="your_enquiry" placeholder="Enter your Message"></textarea></p>
            <p style="padding-top: 15px"><span>&nbsp;</span><input class="submit" type="submit" name="contact_submitted" value="submit" onclick="validation()" /></p>
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
