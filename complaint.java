import javax.servlet.*;
import javax.servlet.http.*;
import java.io.*;

import java.sql.*;

public class complaint extends HttpServlet
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

HttpSession session=req.getSession();



String n=(String)session.getAttribute("username");
String uname=req.getParameter("uname");
String address=req.getParameter("address");
String phone=req.getParameter("pno");
String gender=req.getParameter("gender");
String complaint=req.getParameter("complaint");
String place=req.getParameter("place");
String loss=req.getParameter("loss");
String articles=req.getParameter("articles");
int i=st.executeUpdate("insert into complaint values('"+n+"','"+uname+"','"+address+"','"+phone+"','"+gender+"','"+complaint+"','"+place+"','"+loss+"','"+articles+"')");
if(i>0)
{
out.println("<script type=\"text/javascript\">");
out.println("alert('successfully logged in');");
out.println("location='services.jsp';");
out.println("</script>");

res.sendRedirect("services.jsp");
}
else
{
out.println("<script type=\"text/javascript\">");
out.println("alert('something is wrong try again');");
out.println("location='services.jsp';");
out.println("</script>");

res.sendRedirect("services.jsp");
}
con.close();
}
catch (Exception e)
{

}

}
}

