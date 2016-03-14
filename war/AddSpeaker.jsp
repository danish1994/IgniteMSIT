<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page
	import="com.google.appengine.api.blobstore.BlobstoreServiceFactory"%>
<%@ page import="com.google.appengine.api.blobstore.BlobstoreService"%>
<!DOCTYPE html5>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add Speaker</title>
<!-- Compiled and minified CSS -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.5/css/materialize.min.css">
</head>
<body class="#f5f5f5 grey lighten-4">
	<nav>
		<div class="nav-wrapper #b71c1c red darken-4">
			<a href="#" class="brand-logo">IgniteMSIT</a>
			<ul id="nav-mobile" class="right hide-on-med-and-down">
				<li><a href="/home">Home</a></li>
			</ul>
		</div>
	</nav>
	<div class="container" style="padding: 5vh; background: #ffffff">
		<%
			BlobstoreService blobstoreService = BlobstoreServiceFactory
					.getBlobstoreService();
		%>
		<form action="<%=blobstoreService.createUploadUrl("/addSpeaker")%>"
			method="post" enctype="multipart/form-data">
			<input type="file" name="pic" required /><br /> <input type="text"
				name="name" required placeholder="Name" /><br /> <input
				type="text" name="shortDesc" required
				placeholder="Short Description" /><br /> <input type="text"
				name="desc" required placeholder="Description" /><br /> <input
				type="text" name="facebook" placeholder="Facebook Link" /><br /> <input
				type="text" name="twitter" placeholder="Twitter Link" /><br /> <input
				type="text" name="google" placeholder="Google Link" /><br /> <input
				type="text" name="linkedin" placeholder="Linkedin Link" /><br /> <input
				type="text" name="key" placeholder="Key" /><br /> <input
				type="submit" class="waves-effect waves-light btn" />
		</form>
	</div>
	<!-- Compiled and minified JavaScript -->
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.5/js/materialize.min.js"></script>

</body>
</html>