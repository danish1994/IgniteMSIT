package controller;

import javax.servlet.*;
import javax.servlet.http.*;

import java.io.*;

import static dao.UserDetailsDao.validate;

@SuppressWarnings("serial")
public class LoginController extends HttpServlet {
	public void doPost(HttpServletRequest req, HttpServletResponse res)
			throws IOException, ServletException {
		String uID = req.getParameter("email");
		String pass = req.getParameter("password");
		if (validate(uID, pass)) {
			System.out.println("Valid");
			HttpSession sess = req.getSession();
			sess.setAttribute("uID", uID);
			res.sendRedirect("/");
		} else {
			PrintWriter out = res.getWriter();
			out.println("<script type=\"text/javascript\">");
			out.println("alert('Invalid Details. Please Try Again.');");
			out.println("window.location = '/loginCheck';");
			out.println("</script>");
		}
	}
}