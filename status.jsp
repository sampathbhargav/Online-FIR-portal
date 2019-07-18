
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
  <title>ONLINE FIR</title>
  <link rel="stylesheet" type="text/css" href="style/style.css" />
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
		  
		  <li class="selected"><a href="status.jsp">Status</a></li>
          <li><a href="services.jsp">Complaint</a></li>
          <li><a href="help.jsp">Help</a></li>
          <li><a href="contact2.jsp">Contact us</a></li>
          <li><a href="./logout">Logout</a></li>
		  
        </ul>
      </div>
    </div>
    <div id="content_header"></div>
    <div id="site_content">
	  <h1>STATUS</h1>
	  
	  
	  <table align="center" cellpadding="5" cellspacing="5" border="1">
<tr>

</tr>
	<tr bgcolor="#A52A2A">
		<td><b>complaint's name</b></td>
		<td><b>complaint</b></td>
		<td><b>police ID</b></td>
		<td><b>police name</b></td>
		<td><b>police station</b></td>
		<td><b>status level</b></td>
	</tr>
	<%
	try {
	 Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","password");
	
	Statement st=con.createStatement();
	
	String n=(String)session.getAttribute("username");
	ResultSet rs=st.executeQuery("select * from policeupload where slevel='solved' and uname='"+n+"'");
	
	while(rs.next())
	{
	%>
	
	<tr bgcolor="#DEB887">
			
			
			<td><%=rs.getString(2) %></td>
			<td><%=rs.getString(3) %></td>
			<td><%=rs.getString(4) %></td>
			<td><%=rs.getString(5) %></td>
			<td><%=rs.getString(6) %></td>
			<td bgcolor="yellow"><%=rs.getString(7) %></td>
			
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
