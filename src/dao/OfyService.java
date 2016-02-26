package dao;

import com.googlecode.objectify.Objectify;
import com.googlecode.objectify.ObjectifyFactory;
import com.googlecode.objectify.ObjectifyService;

public class OfyService {
	// Loading Entity Classes
	static {
		factory().register(entity.UserDetails.class);
		factory().register(entity.Speaker.class);
		factory().register(entity.Question.class);
	}
	// Return Objectify
	public static Objectify ofy() {
		return ObjectifyService.ofy();
	}

	// Register Factory
	public static ObjectifyFactory factory() {
		return ObjectifyService.factory();
	}
}