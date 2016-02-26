package dao;

import static dao.OfyService.ofy;
import entity.Speaker;

public class SpeakerDao {
	public static void saveSpeaker(String name, String desc, String shortDesc,String facebook, String twitter,
			String linkedin, String google, String pic){
		Speaker speaker = new Speaker(name, desc, shortDesc, facebook, twitter, linkedin, google, pic);
		ofy().save().entity(speaker);
		ofy().clear();
	}
}
