package entity;

import com.googlecode.objectify.annotation.Entity;
import com.googlecode.objectify.annotation.Id;

@Entity
public class UserDetails {
	@Id
	String uID;
	String name;
	String pass;
	public UserDetails() {
		super();
	}
	public UserDetails(String uID, String name, String pass) {
		super();
		this.uID = uID;
		this.name = name;
		this.pass = pass;
	}
	public String getuID() {
		return uID;
	}
	public void setuID(String uID) {
		this.uID = uID;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPass() {
		return pass;
	}
	public void setPass(String pass) {
		this.pass = pass;
	}
	
}
