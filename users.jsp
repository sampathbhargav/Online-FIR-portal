
<%@ page language="java" contentType="text/html"  %>

<%@ page import="java.sql.*"   %>

<%
try {
Class.forName("oracle.jdbc.driver.OracleDriver");
       
}
catch (Exception e)
{
	
}
		
%>


<html>

<head>
  <title>ONLINE FIR : ADMIN</title>
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
          <li><a href="uploadstatus.jsp">Upload Status</a></li>
          <li  class="selected"><a href="users.jsp">Users</a></li>
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
	
	<h2><font color="#CF0000"><b>USERS</font></b></h2>
	
	 <table align="center" cellpadding="5" cellspacing="5" border="1">
<tr>

</tr>
	<tr bgcolor="#A52A2A">
		<td><b>User name</b></td>
		<td><b>password</b></td>
		<td><b>Email</b></td>
		<td><b>phone number</b></td>
	</tr>
	<%
	try {
	 Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","password");
	
	Statement st=con.createStatement();
	
	String n=(String)session.getAttribute("username");
	ResultSet rs=st.executeQuery("select * from registration");
	
	while(rs.next())
	{
	%>
	
	<tr bgcolor="#DEB887">
			
			<td><%=rs.getString(1) %></td>
			<td><%=rs.getString(2) %></td>
			<td><%=rs.getString(3) %></td>
			<td><%=rs.getString(4) %></td>
			
			
		</tr>
		
	<%
	}
	con.close();
	}
	catch (Exception e)
	{
		
	}
	%>
	  </table>
	  
	  <h2><font color="#CF0000"><b>complaints solved</font></b></h2>
	
	 <table align="center" cellpadding="5" cellspacing="5" border="1">
<tr>

</tr>
	<tr bgcolor="#A52A2A">
		
		<td><b>User name</b></td>
		<td><b>complaints name</b></td>
		<td><b>complaint</b></td>
		<td><b>pid</b></td>
		<td><b>police name</b></td>
		
		<td><b>police station</b></td>
		<td><b>status level</b></td>
		
	</tr>
	<%
	try {
	 Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","password");
	
	Statement st=con.createStatement();
	
	String n=(String)session.getAttribute("username");
	ResultSet rs=st.executeQuery("select * from policeupload where slevel='solved'");
	
	while(rs.next())
	{
	%>
	
	<tr bgcolor="#DEB887">
			
			<td><%=rs.getString(1) %></td>
			<td><%=rs.getString(2) %></td>
			<td><%=rs.getString(3) %></td>
			<td><%=rs.getString(4) %></td>
			<td><%=rs.getString(5) %></td>
			<td><%=rs.getString(6) %></td>
			<td><%=rs.getString(7) %></td>
			
			
			
		</tr>
		
	<%
	}
	con.close();
	}
	catch (Exception e)
	{
		
	}
	%>
	  </table>
	  
	  <h2><font color="#CF0000"><b>COMPLAINTS</font></b></h2>

	  	 <table align="center" cellpadding="5" cellspacing="5" border="1">
<tr>

</tr>
	<tr bgcolor="#A52A2A">
		<td><b>User name</b></td>
		<td><b>complaints name</b></td>
		<td><b>complaints address</b></td>
		<td><b>complaints mobileno</b></td>
		<td><b>complaints gender</b></td>
		<td><b>complaint</b></td>
		<td><b>place of loss</b></td>
		<td><b>date of loss</b></td>
		<td><b>articles</b></td>
	</tr>
	<%
	try {
	 Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","password");
	
	Statement st=con.createStatement();
	
	String n=(String)session.getAttribute("username");
	ResultSet rs=st.executeQuery("select * from complaint");
	
	while(rs.next())
	{
	%>
	
	<tr bgcolor="#DEB887">
			
			<td><%=rs.getString(1) %></td>
			<td><%=rs.getString(2) %></td>
			<td><%=rs.getString(3) %></td>
			<td><%=rs.getString(4) %></td>
			<td><%=rs.getString(5) %></td>
			<td><%=rs.getString(6) %></td>
			<td><%=rs.getString(7) %></td>
			<td><%=rs.getString(8) %></td>
			<td><%=rs.getString(9) %></td>
			
			
		</tr>
		
	<%
	}
	con.close();
	}
	catch (Exception e)
	{
		
	}
	%>
	  </table>
	  
	  	  <h2><font color="#CF0000"><b>POLICE'S</font></b></h2>

	  	 <table align="center" cellpadding="5" cellspacing="5" border="1">
<tr>

</tr>
	<tr bgcolor="#A52A2A">
		<td><b>PoliceID</b></td>
		<td><b>Police name</b></td>
		<td><b>password</b></td>
		
	</tr>
	<%
	try {
	 Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","password");
	
	Statement st=con.createStatement();
	
	String n=(String)session.getAttribute("username");
	ResultSet rs=st.executeQuery("select * from police");
	
	while(rs.next())
	{
	%>
	
	<tr bgcolor="#DEB887">
			
			<td><%=rs.getString(3) %></td>
			<td><%=rs.getString(1) %></td>
			<td><%=rs.getString(2) %></td>
			
			
			
		</tr>
		
	<%
	}
	}
	catch (Exception e)
	{
		
	}
	%>
	  </table>
	  
	  
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
