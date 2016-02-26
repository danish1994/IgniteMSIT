package controller;

import static dao.QuestionDao.saveQuestion;

import java.io.IOException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@SuppressWarnings("serial")
public class QuestionController extends HttpServlet {

	public void service(HttpServletRequest req, HttpServletResponse res)
			throws IOException {
		String question = req.getParameter("question");
		String speaker = req.getParameter("speaker");
		String user = "admin";
		DateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
		Date date = new Date();
		// Primary Key
		String id = dateFormat.format(date);
		// Save Comment
		saveQuestion(id + user, speaker, question, user, date);
	}
}
