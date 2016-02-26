<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page
	import="com.google.appengine.api.blobstore.BlobstoreServiceFactory"%>
<%@ page import="com.google.appengine.api.blobstore.BlobstoreService"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add Speaker</title>
</head>
<body>
	<%
		BlobstoreService blobstoreService = BlobstoreServiceFactory
				.getBlobstoreService();
	%>
	<form action="<%=blobstoreService.createUploadUrl("/addSpeaker")%>"
		method="post" enctype="multipart/form-data">
			<input type="file" name="pic" required /><br/>
			<input type="text" name="name" required placeholder="Name"/><br/>
			<input type="text" name="shortDesc" required placeholder="Short Description"/><br/>
			<input type="text" name="desc" required placeholder="Description"/><br/>
			<input type="text" name="facebook" placeholder="Facebook Link"/><br/>
			<input type="text" name="twitter" placeholder="Twitter Link"/><br/>
			<input type="text" name="google" placeholder="Google Link"/><br/>
			<input type="text" name="linkedin" placeholder="Linkedin Link"/><br/>
			<input type="text" name="key" placeholder="Key"/><br/>
			<input type="submit"/>
	</form>
</body>
</html>