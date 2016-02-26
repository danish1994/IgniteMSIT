package controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import static dao.UserDetailsDao.saveUser;

@SuppressWarnings("serial")
public class RegisterController extends HttpServlet {
	public void doPost(HttpServletRequest req, HttpServletResponse res)
			throws IOException, ServletException {
		String name = req.getParameter("name");
		String uID = req.getParameter("email");
		String pass = req.getParameter("password");
		PrintWriter out = res.getWriter();
		if (saveUser(uID, name, pass)) {
			out.println("<script type=\"text/javascript\">");
			out.println("alert('Please Login To Continue');");
			out.println("window.location = '/';");
			out.println("</script>");
		} else {
			out.println("<script type=\"text/javascript\">");
			out.println("alert('Email ID Already Exists. Please Try Again');");
			out.println("window.location = '/loginCheck';");
			out.println("</script>");
		}
	}
}
