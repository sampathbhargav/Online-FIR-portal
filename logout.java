import javax.servlet.*;
import javax.servlet.http.*;
import java.io.*;


public class logout extends HttpServlet
{

public void doGet(HttpServletRequest req,HttpServletResponse res) throws ServletException,IOException
{

HttpSession session=req.getSession();
session.removeAttribute("username");
session.invalidate();
res.sendRedirect("home.jsp");

}
}

