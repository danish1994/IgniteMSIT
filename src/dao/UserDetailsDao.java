package dao;

import java.util.Iterator;
import java.util.List;

import entity.UserDetails;
import static dao.OfyService.ofy;

public class UserDetailsDao {
	static UserDetails ud = null;

	public static boolean saveUser(String uID, String name, String pass) {
		if (check(uID)) {
			UserDetails user = new UserDetails(uID, name, pass);
			ofy().save().entity(user);
			ofy().clear();
			return true;
		} else
			return false;
	}

	// Check Existing User
	public static boolean check(String uID) {
		List<UserDetails> det = ofy().load().type(UserDetails.class)
				.filter("uID", uID).list();
		Iterator<UserDetails> details = det.iterator();
		if (details.hasNext())
			return false;
		else
			return true;
	}

	// Login
	// Validate Details
	public static boolean validate(String uID, String password) {
		boolean res = true;
		List<UserDetails> det = ofy().load().type(UserDetails.class).list();
		Iterator<UserDetails> details = det.iterator();
		res = details.hasNext();
		while (details.hasNext()) {
			ud = details.next();
			if (ud.getuID().equals(uID)
					&& ud.getPass().equals(password)) {
				res = true;
				break;
			} else
				res = false;
		}
		return res;
	}

}
