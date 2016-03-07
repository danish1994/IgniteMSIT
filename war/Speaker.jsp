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
<%
	try{
		String speaker = request.getParameter("speaker");
		Speaker s = ofy().load().type(Speaker.class).id(speaker).now();
		List<Question> det = ofy().load().type(Question.class).filter("speaker", speaker).list();
		Iterator<Question> et = det.iterator();
	%>
<head>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="keywords"
	content="Ignite MSIT Maharaja Surajmal Institute of Technology New Delhi NCR first talk event IgniteMSIT 30 March 2016 Diwakar Vaish speaker Abhas mitra vishwas mudagal ignitemsit.com best event of msit">
<meta name="description" content="IgniteMSIT Speaker">
<META NAME="ROBOTS" CONTENT="INDEX, FOLLOW">
<title><%= s.getName() %></title>
<meta name="description" content="">
<meta name="author" content="">


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
<link rel="stylesheet" href="css/animate.min.css">
<link href='http://fonts.googleapis.com/css?family=Lato:400,700,900,300'
	rel='stylesheet' type='text/css'>
<link
	href='http://fonts.googleapis.com/css?family=Open+Sans:400,700,800,600,300'
	rel='stylesheet' type='text/css'>
<script type="text/javascript" src="js/modernizr.custom.js"></script>

<script>
	(function(i, s, o, g, r, a, m) {
		i['GoogleAnalyticsObject'] = r;
		i[r] = i[r] || function() {
			(i[r].q = i[r].q || []).push(arguments)
		}, i[r].l = 1 * new Date();
		a = s.createElement(o), m = s.getElementsByTagName(o)[0];
		a.async = 1;
		a.src = g;
		m.parentNode.insertBefore(a, m)
	})(window, document, 'script', '//www.google-analytics.com/analytics.js',
			'ga');

	ga('create', 'UA-74431622-1', 'auto');
	ga('send', 'pageview');
</script>

</head>
<body>
	<div id="preloader">
		<div id="status">
			<img src="img/preloader.gif" height="64" width="64" alt="">
		</div>
	</div>
	<nav id="menu" class="navbar navbar-default navbar-fixed-top">
		<div class="container" style="height: 6em">
			<!-- Brand and toggle get grouped for better mobile display -->
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed"
					data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="/home"> <img width="" height=""
					src="img/logo.png" alt="Logo" style="width: 5em; height: 3em"></a>
			</div>

			<!-- Collect the nav links, forms, and other content for toggling -->
			<div class="collapse navbar-collapse"
				id="bs-example-navbar-collapse-1">
				<ul class="nav navbar-nav navbar-right">
					<li><a href="/home#home" class="page-scroll">Home</a></li>
					<li><a href="/home#speaker-section" class="page-scroll">Speakers</a></li>
					<li><a href="/home#team-section" class="page-scroll">Format</a></li>
					<li><a href="/home#about-section" class="page-scroll">About</a></li>
					<li><a href="/home#testimonials-section" class="page-scroll">Register</a></li>
					<li><a href="/team">Team</a></li>
					<li><a href="/home#contact-section" class="page-scroll">Contact</a></li>
				</ul>
			</div>
			<!-- /.navbar-collapse -->
		</div>
		<!-- /.container-fluid -->
	</nav>

	<!-- Header -->
	<header> </header>

	<!-- Speaker Section -->
	<div id="about-section" style="padding-bottom: 5vh">
		<div class="container">
			<div class="section-title text-center wow fadeInDown">
				<h2>
					<strong><%= s.getName() %></strong>
				</h2>
				<hr>
				<div class="clearfix"></div>
			</div>
			<div class="row block-container">
				<div class="col-md-3 wow fadeInLeft">
					<img width="" height="" style="width: 100%" src="<%= s.getPic() %>"
						class="img-responsive" alt="<%= s.getPic() %>">
				</div>
				<div class="col-md-7 wow fadeInRight" >
					<h4><%= s.getShortDesc() %></h4>
					<div class="don-share" data-style="icons" data-bubbles="none"
						data-limit="3">
						<div class="don-share-facebook"></div>
						<div class="don-share-twitter"></div>
						<div class="don-share-google"></div>
					</div>
					<script type="text/javascript">
						(function() {
							var dr = document.createElement('script');
							dr.type = 'text/javascript';
							dr.async = true;
							dr.src = '//share.donreach.com/buttons.js';
							(document.getElementsByTagName('head')[0] || document
									.getElementsByTagName('body')[0])
									.appendChild(dr);
						})();
					</script>
					<p><%= s.getDesc() %></p>
				</div>
			</div>
		</div>
	</div>

	<!-- Contact Section -->
	<div id="about-section" class="text-center" style="padding-top: 0px">
		<div class="container">
			<div class="section-title wow fadeInDown">
				<h2>I Have a Question</h2>
				<hr>
			</div>
			<div class="col-md-10 col-md-offset-1 wow fadeInUp"
				data-wow-delay="200ms">

				<input type="hidden" name="speaker" value="<%= s.getName() %>"
					id="speaker">
				<textarea name="question" placeholder="Enter Your Question"
					style="width: 100%; height: 20vh; color: #000000" id="question"></textarea>
				<br /> <br />
				<button onClick="saveQuestion()" class="btn btn-default">Submit</button>
				<br /> <br />
				<div id="questioncontainer" style="text-align: left"></div>
				<br /> <br />
			</div>
		</div>
	</div>
	<%
	}catch(Exception e){
		response.sendRedirect("/home");
	}
	%>

	<div id="footer">
		<div class="container">
			<div>
				<br> <a href="https://www.facebook.com/ignitemsit/"><i
					class="fa fa-facebook"></i></a> <a
					href="http://www.twitter.com/ignitemsit"><i
					class="fa fa-twitter"></i></a>
			</div>

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