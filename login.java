import javax.servlet.*;
import javax.servlet.http.*;
import java.io.*;

import java.sql.*;

public class login extends HttpServlet
{

public void doGet(HttpServletRequest req,HttpServletResponse res) throws ServletException,IOException
{
res.setContentType("text/html");
String s1=req.getParameter("uname");
String s2=req.getParameter("psw");
String s3=req.getParameter("myradio");

try
{
Class.forName("oracle.jdbc.driver.OracleDriver");
Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","password");
Statement st=con.createStatement();

if(req.getParameter("myradio").equals("admin"))
{
ResultSet rs=st.executeQuery("select password from admin where name='"+s1+"'");
rs.next();

if(rs.getString(1).equals(s2))
{
	
	HttpSession session=req.getSession();
	session.setAttribute("username",s1);
	
res.sendRedirect("uploadstatus.jsp");
}
else
{
	res.sendRedirect("login.jsp");
}
}
else if(req.getParameter("myradio").equals("user"))
{
ResultSet rs=st.executeQuery("select password from registration where name='"+s1+"'");
rs.next();

if(rs.getString(1).equals(s2))
{
	
	HttpSession session=req.getSession();
	session.setAttribute("username",s1);
	
res.sendRedirect("services.jsp");
}
else
{
	res.sendRedirect("login.jsp");
}
}
else if(req.getParameter("myradio").equals("police"))
{
ResultSet rs=st.executeQuery("select password,pid from police where name='"+s1+"'");
rs.next();

if(rs.getString(1).equals(s2))
{
	
	HttpSession session=req.getSession();
	session.setAttribute("username",s1);
	session.setAttribute("pid",rs.getString(2));
	
res.sendRedirect("policeupload.jsp");
}
else
{
	res.sendRedirect("login.jsp");
}
}

con.close();
}
catch (Exception e)
{

}

}
}

