import javax.servlet.*;
import javax.servlet.http.*;
import java.io.*;

import java.sql.*;

public class register extends HttpServlet
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
PrintWriter out = res.getWriter();

String uname=req.getParameter("uname");
String pword=req.getParameter("psw");
String email=req.getParameter("email");
String phone=req.getParameter("pno");

int i=st.executeUpdate("insert into registration values('"+uname+"','"+pword+"','"+email+"','"+phone+"')");

if(i>0)
{

out.println("<script type=\"text/javascript\">");
out.println("alert('successfully logged in');");
out.println("location='register.jsp';");
out.println("</script>");

res.sendRedirect("register.jsp");
}
else
{
out.println("<script type=\"text/javascript\">");
out.println("alert('not registered try again');");
out.println("location='index.jsp';");
out.println("</script>");

res.sendRedirect("register.jsp");
}
con.close();
}
catch (Exception e)
{

}

}
}

