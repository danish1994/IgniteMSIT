package controller;

import static dao.OfyService.ofy;

import java.io.IOException;
import java.util.Iterator;
import java.util.List;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONArray;
import org.json.JSONObject;

import entity.Question;

@SuppressWarnings("serial")
public class LoadQuestionController extends HttpServlet {
	public void doGet(HttpServletRequest req, HttpServletResponse res) {
		String speaker = req.getParameter("speaker");
		JSONArray jArray = new JSONArray();
		List<Question> pc = ofy().load().type(Question.class)
				.filter("speaker", speaker).list();
		System.out.println(pc);
		Iterator<Question> it = pc.iterator();
		while (it.hasNext()) {
			Question c = it.next();
			JSONObject question = new JSONObject();
			try {
				question.put("question", c.getQuestion());
			} catch (Exception e) {
				e.printStackTrace();
			}
			jArray.put(question);
		}
		res.setContentType("application/JSON");
		try {
			res.getWriter().write(jArray.toString());
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
}
