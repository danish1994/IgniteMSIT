<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="entity.Speaker"%>
<%@ page import="java.util.Iterator"%>
<%@ page import="java.util.List"%>
<%@ page import="static dao.OfyService.ofy"%>
<%@ page import="com.google.appengine.api.datastore.Query.Filter"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="keywords"
	content="Ignite MSIT Maharaja Surajmal Institute of Technology New Delhi NCR first talk event IgniteMSIT 30 March 2016 Diwakar Vaish speaker Abhas mitra vishwas mudagal ignitemsit.com best event of msit">
<meta name="description"
	content="IgniteMSIT would be the first, to ever host an Ignite Talk in Delhi-NCR. We target a selected audience of 350 budding revolutionists to be a part of this inspiring event. The speakers are from varied domains, sharing their views, ideas and experiences to the fullest, in the minimum amount of time. The event will be held at Auditorium,MSIT,Delhi,India on 30.03.2016">
<META NAME="ROBOTS" CONTENT="INDEX, FOLLOW">
<meta name="google-site-verification"
	content="2VAoCnYQe5VWD-VUTqlYPrJC-qBEpQq_fzLDF3rUtmo" />
<meta name="msvalidate.01" content="FB4B640430CE5941B73AC59B120A21CE" />

<title>Ignite MSIT</title>
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
<link rel="stylesheet" href="your-path/social-share-kit.css"
	type="text/css">
<script type="text/javascript" src="js/modernizr.custom.js"></script>

<script
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
<link href="http://www.jqueryscript.net/css/jquerysctipttop.css"
	rel="stylesheet" type="text/css">
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

<script src="https://cdn.jsdelivr.net/sharer.js/latest/sharer.min.js"></script>

</head>
<body itemscope itemtype="http://schema.org/Event">
	<div id="preloader">
		<div id="status">
			<img width="" height="" src="img/preloader.gif" height="64" width="64" alt="">
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
				<a class="navbar-brand" href="/home"> <img width="" height="" src="img/logo.png"
					alt="Logo" style="width: 5em; height: 3em"></a>
			</div>

			<!-- Collect the nav links, forms, and other content for toggling -->
			<div class="collapse navbar-collapse"
				id="bs-example-navbar-collapse-1">
				<ul class="nav navbar-nav navbar-right">
					<li><a href="#home" class="page-scroll">Home</a></li>
					<li><a href="#speaker-section" class="page-scroll">Speakers</a></li>
					<li><a href="#team-section" class="page-scroll">Format</a></li>
					<li><a href="#about-section" class="page-scroll">About</a></li>
					<li><a href="#testimonials-section" class="page-scroll">Register</a></li>
					<li><a href="/team">Team</a></li>
					<li><a href="#contact-section" class="page-scroll">Contact</a></li>
				</ul>
			</div>
			<!-- /.navbar-collapse -->
		</div>
		<!-- /.container-fluid -->
	</nav>

	<!-- Header -->
	<header class="text-center" name="home" style="height: 90vh">
		<div class="intro-text" style="height: 100%">
			<div id="myCarousel" class="carousel slide" data-ride="carousel"
				style="height: 100%">
				<!-- Indicators -->

				<ol class="carousel-indicators">
					<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
					<li data-target="#myCarousel" data-slide-to="1"></li>
					<li data-target="#myCarousel" data-slide-to="2"></li>
				</ol>
				<div class="carousel-inner" style="height: 100%">
					<div class="item active" style="height: 100%">
						<img width="" height="" src="img/slider/bg1.jpg" style="width: 100%; height: 100%"
							alt="First slide">
					</div>
					<div class="item" style="height: 100%">
						<img width="" height="" src="img/slider/bg2.jpg" style="width: 100%; height: 100%"
							data-src="" alt="Second slide">
					</div>
					<div class="item" style="height: 100%">
						<img width="" height="" src="img/slider/bg3.jpg" style="width: 100%; height: 100%"
							data-src="" alt="Third slide">
					</div>
				</div>
				<a class="left carousel-control" href="#myCarousel"
					data-slide="prev"><span
					class="glyphicon glyphicon-chevron-left"></span></a> <a
					class="right carousel-control" href="#myCarousel" data-slide="next"><span
					class="glyphicon glyphicon-chevron-right"></span></a>
			</div>
		</div>
	</header>
	<!-- Services Section -->
	<div id="services-section" class="text-center">
		<div class="container">
			<div class="space"></div>
			<div class="row">
				<div class="col-md-3 col-sm-6 service wow fadeInUp"
					data-wow-delay="200ms">
					<i class="fa fa-calendar"></i>
					<h4>
						<strong>2016<br>March 30
						</strong>
					</h4>
				</div>
				<div class="col-md-3 col-sm-6 service wow fadeInUp"
					data-wow-delay="400ms">
					<i class="fa fa-location-arrow"></i>
					<h4>
						<strong>Maharaja Surajmal Institute of Technology</strong>
					</h4>
				</div>
				<div class="col-md-3 col-sm-6 service wow fadeInUp"
					data-wow-delay="600ms">
					<i class="fa fa-tag"></i>
					<h4>
						<strong>350<br>Free Passes
						</strong>
					</h4>
				</div>
				<div class="col-md-3 col-sm-6 service wow fadeInUp"
					data-wow-delay="800ms">
					<i class="fa fa-info"></i>
					<h4>
						<strong>10<br>Speakers
						</strong>
					</h4>
				</div>
			</div>
		</div>
	</div>
	<!-- Speaker Section -->
	<div id="speaker-section" class="text-center">
		<div class="container">
			<!-- Container -->
			<div class="section-title wow fadeInDown">
				<h2>
					<strong>Speakers</strong>
				</h2>
				<hr>
				<div class="clearfix"></div>
			</div>
			<div class="row">
				<div class="portfolio-items">
					<% 
					List <Speaker> ls = ofy().load().type(Speaker.class).list();
					Iterator <Speaker> it = ls.iterator();
					while(it.hasNext()){
						Speaker s = it.next();
						if(!(s.getName().equals("guess"))){
					%>
					<div class="col-md-3 col-sm-6 col-lg-3 col-xs-12">
						<div class="portfolio-item wow fadeInUp" data-wow-delay="200ms">
							<div class="hover-bg">
								<div class="hover-text">
									<a href="/speaker?speaker=<%= s.getName() %>"
										class="portfolio-link" style="text-transform: uppercase;">
										<h4><%= s.getName() %></h4> <%= s.getShortDesc() %></a>
									<div class="clearfix"></div>
									<br /> <br />
									<ul class="list-inline">
										<%
											if(!(s.getTwitter().equals(null)||s.getTwitter().equals("")))
											{
										%>
										<li><a href="<%= s.getTwitter() %>" rel="twitter"><i
												class="fa fa-twitter"></i></a></li>
										<%
											}
											if(!(s.getFacebook().equals(null)||s.getFacebook().equals("")))
											{
										%>
										<li><a href="<%= s.getFacebook() %>" rel="facebook"><i
												class="fa fa-facebook"></i></a></li>
										<%
											}
											if(!(s.getGoogle().equals(null)||s.getGoogle().equals("")))
											{
										%>
										<li><a href="<%= s.getGoogle() %>" rel="google plus"><i
												class="fa fa-google-plus"></i></a></li>
										<%
											}
											if(!(s.getLinkedin().equals(null)||s.getLinkedin().equals("")))
											{
										%>
										<li><a href="<%= s.getLinkedin() %>" rel="linkedin"><i
												class="fa fa-linkedin"></i></a></li>
									</ul>
									<%
											}
										%>
									<i class="fa "></i>
								</div>
								<img width="" height="" alt="<%= s.getName() %>" src="<%= s.getPic() %>"
									class="img-responsive" style="width: 100%">
							</div>
						</div>
					</div>
					<%
						}
					}
					Speaker guess = null;
					try{
						guess = ofy().load().type(Speaker.class).id("guess").now();
					}catch(Exception e){
						e.printStackTrace();
					}
					if(!(guess.getName().equals(null))){
					%>
					<!-- 
					<div class="col-md-3 col-sm-6 col-lg-3 col-xs-12">
						<div class="portfolio-item wow fadeInUp" data-wow-delay="200ms">
							<div class="hover-bg">
								<div class="hover-text">
									<a class="typeform-share link"
										href="https://danish8802204230.typeform.com/to/d79trR"
										data-mode="2" target="_blank"><h3><%= guess.getShortDesc() %></h3></a>
									<script>
										(function() {
											var qs, js, q, s, d = document, gi = d.getElementById, ce = d.createElement, gt = d.getElementsByTagName, id = 'typef_orm', b = 'https://s3-eu-west-1.amazonaws.com/share.typeform.com/';
											if (!gi.call(d, id)) {
												js = ce.call(d, 'script');
												js.id = id;
												js.src = b + 'share.js';
												q = gt.call(d, 'script')[0];
												q.parentNode
														.insertBefore(js, q)
											}
										})()
									</script>
									<div class="clearfix"></div>
									<i class="fa "></i>
								</div>
								<img width="" height="" alt="Guess" src="<%= guess.getPic() %>" class="img-responsive"
									style="width: 100%">
							</div>
						</div>
					</div>
					 -->
					<%
					}
					%>
				</div>
			</div>
			<div class="row">
				<div class="col-md-2 col-md-offset-10">
					<h4>More Coming Soon.</h4>
				</div>
			</div>

		</div>
	</div>
	<!-- Format Section -->
	<div id="team-section" class="text-center">
		<div class="container">
			<div class="section-title wow fadeInDown">
				<h2>
					<strong>Format</strong>
				</h2>
				<hr>
				<div class="clearfix"></div>
			</div>
			<div id="row">
				<div
					class="col-md-2 col-sm-12 col-md-offset-2 col-xs-12 team wow fadeInUp format"
					data-wow-delay="200ms">
					<div class="thumbnail">
						<div class="caption">
							<h3>Ignite Presentation</h3>
							<p>5 Minutes/Speaker</p>
						</div>
					</div>
				</div>
				<div
					class="col-md-2 col-sm-12 col-md-offset-1 col-xs-12 team wow fadeInUp format"
					data-wow-delay="400ms">
					<div class="thumbnail">
						<div class="caption">
							<h3>Talk</h3>
							<p>15 - 20 Minutes/Speaker</p>
						</div>
					</div>
				</div>
				<div
					class="col-md-2 col-sm-12 col-md-offset-1 col-xs-12 team wow fadeInUp format"
					data-wow-delay="600ms">
					<div class="thumbnail">
						<div class="caption">
							<h3>Q&A / Interview</h3>
							<p>15 - 20 Minutes/Speaker</p>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- About Section -->
	<div id="about-section">
		<div class="container">
			<div class="section-title text-center wow fadeInDown">
				<h2>
					<strong>About</strong> us
				</h2>
				<hr>
				<div class="clearfix"></div>
			</div>
			<div class="row">
				<div class="col-md-6 col-sm-12 wow fadeInLeft">
					<img alt="about" src="img/about.jpg" class="img-responsive"
						width="" height="">
				</div>
				<div class="col-md-6 col-sm-12 wow fadeInRight">
					<h4>About Ignite MSIT</h4>
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
					<p style="color: #ffffff" itemprop="description">Ignite Talks
						is a fast-paced geek event, which brings to front the august minds
						around us. IgniteMSIT would be the first, to ever host an Ignite
						Talk in Delhi-NCR. We target a selected audience of 350 budding
						revolutionists to be a part of this inspiring event. The speakers
						are from varied domains, sharing their views, ideas and
						experiences to the fullest, in the minimum amount of time.</p>
					<a href="/team"><button class="btn btn-lg btn-primary">Check
							Our Team</button></a>
					<meta itemprop="startDate" content="2016-03-30T10:00">
					<meta itemprop="endDate" content="2016-03-30T16:00">
					<div></div>
				</div>
			</div>
		</div>
	</div>

	<!-- Register Section -->
	<div id="testimonials-section" class="text-center">
		<div class="container">
			<div class="section-title wow fadeInDown">
				<h2>Register Now</h2>
				<hr>
			</div>
			<div class="row">
				<div class="col-md-8 col-md-offset-2">
					<div class="fadeInUp" data-wow-delay="200ms">
						<p>
							<strong>By registering, you'll be considered as a
								priority at the time of selection of audience, on a
								first-come-first-serve basis over those who haven't registered.</strong>
						</p>
						<button class="btn btn-lg btn-primary" data-toggle="modal"
							data-target="#registerModal">Register Now</button>
						<div id="registerModal" class="modal fade">
							<div class="modal-dialog" style="color: #000000; width: 90%">
								<div class="modal-content">
									<div class="modal-header">
										<button type="button" class="close" data-dismiss="modal">&times;</button>
										<h4 class="modal-title">Register</h4>
									</div>
									<div class="modal-body">
										<h3>
											If the form is not Loading.<br>Please Login into your
											Google Account or <a id="registerButton">Click Here</a>
										</h3>
										<iframe src="http://goo.gl/forms/0K3pHX7nPc"
											style="width: 100%; height: 60vh; border: 0px;">Loading...</iframe>
										<script>
											$("#registerButton")
													.click(
															function() {
																window
																		.open(
																				'http://goo.gl/forms/0K3pHX7nPc',
																				'_blank');
															});
										</script>
									</div>
									<div class="modal-footer">
										<button type="button" class="btn btn-default"
											data-dismiss="modal">Close</button>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- Contact Section -->
	<div id="contact-section" class="text-center" itemprop="location"
		itemscope itemtype="http://schema.org/Place">
		<div class="container">
			<div class="section-title wow fadeInDown ">
				<h2>
					<strong>Contact</strong> Us
				</h2>
				<hr>
			</div>
			<div class="col-md-10 col-md-offset-1 wow fadeInUp"
				data-wow-delay="200ms">
				<div class="col-md-4">
					<i class="fa fa-map-marker fa-2x"></i>
					<p class="section-title" itemprop="url" href="http://msit.in">
						<span itemprop="name"> Maharaja Surajmal Institute of
							Technology,<br> New Delhi, Delhi
						</span> <input type="hidden" itemprop="address" itemscope
							itemtype="http://schema.org/PostalAddress" value="New Delhi">
				</div>
				<div class="col-md-4">
					<i class="fa fa-envelope-o fa-2x"></i>
					<p class="section-title">info@ignitemsit.com</p>
				</div>
				<div class="col-md-4">
					<i class="fa fa-phone fa-2x"></i>
					<p class="section-title">+919582323805</p>
				</div>
				<div class="clearfix"></div>
			</div>
			<br /> <br />
			<div class="col-md-10 col-md-offset-1 wow fadeInUp"
				data-wow-delay="400ms">
				<iframe
					src="https://maps.google.com/maps?f=q&amp;source=s_q&amp;hl=en&amp;geocode=&amp;q=Maharaja Surajmal Institute of Technology&amp;output=embed"
					style="width: 100%; height: 75vh; border: 0px;"></iframe>
				<div id="map">
					<div id="gmap-wrap">
						<div id="gmap"></div>
					</div>
				</div>
				<!--/#map-->
			</div>
		</div>
	</div>
	<div id="footer" class="navbar-default">
		<div class="container">
			<div>
				<br> <a href="https://www.facebook.com/ignitemsit/"><i
					class="fa fa-facebook"></i></a> <a
					href="http://www.twitter.com/ignitemsit"><i
					class="fa fa-twitter"></i></a>
			</div>
			<p>
				Copyright 2016<br> <a href="http://ignitemsit.com"
					itemprop="url" href="http://ignitemsit.com"><span
					itemprop="name">Ignite MSIT &reg;</span></a>
			</p>
		</div>
	</div>
	<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
	<script type="text/javascript" src="js/jquery.1.11.1.js"></script>
	<!-- Include all compiled plugins (below), or include individual files as needed -->
	<script type="text/javascript" src="js/bootstrap.js"></script>
	<script type="text/javascript" src="js/SmoothScroll.js"></script>
	<script type="text/javascript" src="js/wow.min.js"></script>
	<script type="text/javascript" src="js/jquery.isotope.js"></script>
	<script type="text/javascript" src="js/jqBootstrapValidation.js"></script>
	<script type="text/javascript" src="js/contact_me.js"></script>
	<script type="text/javascript" src="js/owl.carousel.js"></script>
	<!-- Javascripts
    ================================================== -->
	<script type="text/javascript" src="js/main.js"></script>
</body>
</html>