package controller;

import static dao.SpeakerDao.saveSpeaker;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.appengine.api.blobstore.BlobKey;
import com.google.appengine.api.blobstore.BlobstoreService;
import com.google.appengine.api.blobstore.BlobstoreServiceFactory;
import com.google.appengine.api.images.ImagesService;
import com.google.appengine.api.images.ImagesServiceFactory;

import entity.Speaker;
import static dao.OfyService.ofy;

@SuppressWarnings("serial")
public class SpeakerController extends HttpServlet {
	public void doPost(HttpServletRequest req, HttpServletResponse res)
			throws IOException, ServletException {
		String name = req.getParameter("name");
		String desc = req.getParameter("desc");
		String shortDesc = req.getParameter("shortDesc");
		String facebook = req.getParameter("facebook");
		String google = req.getParameter("google");
		String twitter = req.getParameter("twitter");
		String linkedin = req.getParameter("linkedin");
		String key = req.getParameter("key");
		// Blob Store Start
		BlobstoreService blobstoreService = BlobstoreServiceFactory
				.getBlobstoreService();
		Map<String, List<BlobKey>> blobs = blobstoreService.getUploads(req);
		List<BlobKey> blobKeys = blobs.get("pic");
		BlobKey blobKey = new BlobKey(blobKeys.get(0).getKeyString());
		ImagesService imagesService = ImagesServiceFactory.getImagesService();
		@SuppressWarnings("deprecation")
		String pic = imagesService.getServingUrl(blobKey);
		// Blob Store End
		PrintWriter out = res.getWriter();

		try {
			Speaker s = ofy().load().type(Speaker.class).id(name).now();
			ofy().delete().entity(s).now();
		} catch (Exception e) {
			e.printStackTrace();
		}
		if (key.equals("ignitemsit-speaker")) {
			saveSpeaker(name, desc, shortDesc, facebook, twitter, linkedin,
					google, pic);
			out.println("<script type=\"text/javascript\">");
			out.println("alert('Speaker Saved');");
			out.println("window.location = '/';");
			out.println("</script>");
		} else {
			out.println("<script type=\"text/javascript\">");
			out.println("alert('Oops! Something Went Wrong. Please Try Again');");
			out.println("window.location = '/';");
			out.println("</script>");
		}
	}
}