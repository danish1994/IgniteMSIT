package entity;

import com.googlecode.objectify.annotation.Entity;
import com.googlecode.objectify.annotation.Id;

@Entity
public class Speaker {
	@Id
	String name;
	String desc;
	String shortDesc;
	String facebook;
	String twitter;
	String linkedin;
	String google;
	String pic;

	public Speaker() {
		super();
	}

	public Speaker(String name, String desc, String shortDesc, String facebook,
			String twitter, String linkedin, String google, String pic) {
		super();
		this.name = name;
		this.desc = desc;
		this.shortDesc = shortDesc;
		this.facebook = facebook;
		this.twitter = twitter;
		this.linkedin = linkedin;
		this.google = google;
		this.pic = pic;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getDesc() {
		return desc;
	}

	public void setDesc(String desc) {
		this.desc = desc;
	}

	public String getShortDesc() {
		return shortDesc;
	}

	public void setShortDesc(String shortDesc) {
		this.shortDesc = shortDesc;
	}

	public String getFacebook() {
		return facebook;
	}

	public void setFacebook(String facebook) {
		this.facebook = facebook;
	}

	public String getTwitter() {
		return twitter;
	}

	public void setTwitter(String twitter) {
		this.twitter = twitter;
	}

	public String getLinkedin() {
		return linkedin;
	}

	public void setLinkedin(String linkedin) {
		this.linkedin = linkedin;
	}

	public String getGoogle() {
		return google;
	}

	public void setGoogle(String google) {
		this.google = google;
	}

	public String getPic() {
		return pic;
	}

	public void setPic(String pic) {
		this.pic = pic;
	}

}
