package controller;

import javax.servlet.*;
import javax.servlet.http.*;
import java.io.*;

@SuppressWarnings("serial")
public class LogoutController extends HttpServlet {
	public void service(HttpServletRequest req,HttpServletResponse res) throws IOException,ServletException
	{
		HttpSession sess=req.getSession(false);
		sess.invalidate();
		res.sendRedirect("index.html");
	}
}
