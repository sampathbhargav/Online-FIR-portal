import javax.servlet.*;
import javax.servlet.http.*;
import java.io.*;

import java.sql.*;

public class policeupload extends HttpServlet
{

public void doGet(HttpServletRequest req,HttpServletResponse res) throws ServletException,IOException
{
res.setContentType("text/html");

try
{
Class.forName("oracle.jdbc.driver.OracleDriver");
Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","password");
Statement st=con.createStatement();
PrintWriter out = res.getWriter();
HttpSession session = req.getSession(false);

String pid=(String)session.getAttribute("pid");
String pname=(String)session.getAttribute("username");
String uname=req.getParameter("uname");

String cname=req.getParameter("cname");
String pstation=req.getParameter("ps");
String slevel=req.getParameter("sl");
ResultSet rs=st.executeQuery("select complaint from complaint where uname='"+uname+"'");
rs.next();
String complaint=rs.getString(1);

int i=st.executeUpdate("insert into policeupload values('"+uname+"','"+cname+"','"+complaint+"','"+pid+"','"+pname+"','"+pstation+"','"+slevel+"')");

if(i>0)
{

out.println("<script type=\"text/javascript\">");
out.println("alert('successfully uploaded');");
out.println("location='policeupload.jsp';");
out.println("</script>");

res.sendRedirect("policeupload.jsp");
}
else
{
out.println("<script type=\"text/javascript\">");
out.println("alert('not uploades something is wrong try again');");
out.println("location='policeupload.jsp';");
out.println("</script>");

res.sendRedirect("pcomplaints.jsp");
}
con.close();
}
catch (Exception e)
{

}

}
}

