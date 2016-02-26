<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="entity.Speaker"%>
<%@ page import="entity.Question"%>
<%@ page import="java.util.Iterator"%>
<%@ page import="java.util.List"%>
<%@ page import="static dao.OfyService.ofy"%>
<%@ page import="com.google.appengine.api.datastore.Query.Filter"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="keywords"
	content="Ignite MSIT Maharaja Surajmal Institute of Technology New Delhi NCR first talk event IgniteMSIT 30 March 2016 Diwakar Vaish speaker Abhas mitra vishwas mudagal Pulkit Kumar organizer ignitemsit.com best event of msit">
<meta name="description"
	content="IgniteMSIT would be the first, to ever host an Ignite Talk in Delhi-NCR. We target a selected audience of 350 budding revolutionists to be a part of this inspiring event. The speakers are from varied domains, sharing their views, ideas and experiences to the fullest, in the minimum amount of time. The event will be held at Auditorium,MSIT,Delhi,India on 30.03.2016">
<title>Ignite MSIT: Delhi-NCR's first Ignite Event!</title>
<meta name="description" content="">
<meta name="author" content="">

<!-- Favicons
    ================================================== -->
<link rel="shortcut icon" href="img/favicon.ico" type="image/x-icon">
<link rel="apple-touch-icon" href="img/apple-touch-icon.png">
<link rel="apple-touch-icon" sizes="72x72"
	href="img/apple-touch-icon-72x72.png">
<link rel="apple-touch-icon" sizes="114x114"
	href="img/apple-touch-icon-114x114.png">

<!-- Bootstrap -->
<link rel="stylesheet" type="text/css" href="css/bootstrap.css">
<link rel="stylesheet" type="text/css"
	href="fonts/font-awesome/css/font-awesome.css">

<!-- Slider
    ================================================== -->
<link href="css/owl.carousel.css" rel="stylesheet" media="screen">
<link href="css/owl.theme.css" rel="stylesheet" media="screen">

<!-- Stylesheet
    ================================================== -->
<link rel="stylesheet" type="text/css" href="css/style.css">
<link rel="stylesheet" type="text/css" href="css/animate.min.css">
<link href='http://fonts.googleapis.com/css?family=Lato:400,700,900,300'
	rel='stylesheet' type='text/css'>
<link
	href='http://fonts.googleapis.com/css?family=Open+Sans:400,700,800,600,300'
	rel='stylesheet' type='text/css'>
<script type="text/javascript" src="js/modernizr.custom.js"></script>

<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body>
	<div id="preloader">
		<div id="status">
			<img src="img/preloader.gif" height="64" width="64" alt="">
		</div>
	</div>
	<!-- Navigation
    ==========================================-->
	<nav id="menu" class="navbar navbar-default navbar-fixed-top">
		<div class="container">
			<!-- Brand and toggle get grouped for better mobile display -->
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed"
					data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="Index.jsp"> <img
					src="img/logo.png" alt="Logo" style="width: 3em; height: 100%;"></a>
			</div>

			<!-- Collect the nav links, forms, and other content for toggling -->
			<div class="collapse navbar-collapse"
				id="bs-example-navbar-collapse-1">
				<ul class="nav navbar-nav navbar-right">
					<li><a href="Index.jsp#home" class="page-scroll">Home</a></li>
					<li><a href="Index.jsp#speaker-section" class="page-scroll">Speakers</a></li>
					<li><a href="Index.jsp#team-section" class="page-scroll">Format</a></li>
					<li><a href="Index.jsp#about-section" class="page-scroll">About</a></li>
					<li><a href="Index.jsp#testimonials-section"
						class="page-scroll">Register</a></li>
					<li><a href="team.html">Team</a></li>
					<li><a href="Index.jsp#contact-section" class="page-scroll">Contact</a></li>
				</ul>
			</div>
			<!-- /.navbar-collapse -->
		</div>
		<!-- /.container-fluid -->
	</nav>

	<!-- Header -->
	<header> </header>

	<%
	try{
		String speaker = request.getParameter("speaker");
		Speaker s = ofy().load().type(Speaker.class).id(speaker).now();
		List<Question> det = ofy().load().type(Question.class).filter("speaker", speaker).list();
		Iterator<Question> et = det.iterator();
	%>
	<!-- Speaker Section -->
	<div id="about-section">
		<div class="container">
			<div class="section-title text-center wow fadeInDown">
				<h2>
					<strong><%= s.getName() %></strong>
				</h2>
				<hr>
				<div class="clearfix"></div>
			</div>
			<div class="row">
				<div class="col-md-3 wow fadeInLeft">
					<img style="width: 100%" src="<%= s.getPic() %>"
						class="img-responsive">
				</div>
				<div class="col-md-7 wow fadeInRight">
					<h4><%= s.getShortDesc() %></h4>
					<p><%= s.getDesc() %></p>
				</div>
			</div>
		</div>
	</div>

	<!-- Contact Section -->
	<div id="about-section" class="text-center">
		<div class="container">
			<div class="section-title wow fadeInDown">
				<h2>Ask Questions</h2>
				<hr>
			</div>
			<div class="col-md-10 col-md-offset-1 wow fadeInUp"
				data-wow-delay="200ms">

				<input type="hidden" name="speaker" value="<%= s.getName() %>"
					id="speaker">
				<textarea name="question" placeholder="Enter Your Question"
					style="width: 100%; height: 20vh; color: #000000" id="question"></textarea>
				<br></br>
				<button onClick="saveQuestion()" class="btn btn-default">Submit</button>
				<br></br>
				<div id="questioncontainer" style="text-align: left"></div>
				<br></br>
			</div>
		</div>
	</div>
	<%
	}catch(Exception e){
		response.sendRedirect("Index.jsp");
	}
	%>

	<div id="footer">
		<div class="container">
			<p>
				Copyright 2016<br> <a href="http://ignitemsit.com">Ignite
					MSIT &reg;</a>
		</div>
	</div>

	<script>
		function saveQuestion() {
			var speaker = document.getElementById("speaker").value;
			var question = document.getElementById("question").value;
			var xmlhttp = new XMLHttpRequest();
			if (!(question == null || question == '')) {
				var url = '/addQuestion?speaker=' + speaker + '&question='
						+ question;
				xmlhttp.onreadystatechange = function() {
					if (xmlhttp.readyState % 5 == 4 && xmlhttp.status == 200) {
						var out = '<div><h5><blockquote style="color:#ffffff">'
								+ question + '</blockquote></h5></div>';
						document.getElementById("questioncontainer").innerHTML = out
								+ document.getElementById("questioncontainer").innerHTML;
						document.getElementById("question").value = "";
					}
				}
				xmlhttp.open("GET", url, true);
				xmlhttp.send();
			}
		}

		function loadQuestion() {
			var speaker = document.getElementById("speaker").value;
			var xmlhttp = new XMLHttpRequest();
			var url = '/loadQuestion?speaker=' + speaker;
			xmlhttp.onreadystatechange = function() {
				if (xmlhttp.readyState % 5 == 4 && xmlhttp.status == 200) {
					var q = JSON.parse(xmlhttp.responseText);
					console.log(q);
					var i, l = q.length;
					var out = ""
					for (i = 0; i < l; i++) {
						var quest = q[i].question;
						out += '<div><h5><blockquote style="color:#ffffff">'
								+ quest + '</blockquote></h5></div>';
					}
					document.getElementById("questioncontainer").innerHTML += out;
				}
			}
			xmlhttp.open("GET", url, true);
			xmlhttp.send();
		}

		loadQuestion();
	</script>
	<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
	<script type="text/javascript" src="js/jquery.1.11.1.js"></script>
	<!-- Include all compiled plugins (below), or include individual files as needed -->
	<script type="text/javascript" src="js/bootstrap.js"></script>
	<script type="text/javascript" src="js/SmoothScroll.js"></script>
	<script type="text/javascript" src="js/wow.min.js"></script>
	<script type="text/javascript" src="js/jquery.prettyPhoto.js"></script>
	<script type="text/javascript" src="js/jquery.isotope.js"></script>
	<script type="text/javascript" src="js/jqBootstrapValidation.js"></script>
	<script type="text/javascript" src="js/contact_me.js"></script>
	<script type="text/javascript" src="js/owl.carousel.js"></script>

	<!-- Javascripts
    ================================================== -->
	<script type="text/javascript" src="js/main.js"></script>
</body>
</html>