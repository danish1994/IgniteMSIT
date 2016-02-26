package dao;

import static dao.OfyService.ofy;

import java.util.Date;

import entity.Question;

public class QuestionDao {
	public static void saveQuestion(String id, String speaker, String question, String user, Date date){
		Question q = new Question(id, speaker, question, user, date);
		ofy().save().entity(q);
		ofy().clear();
	}
}
