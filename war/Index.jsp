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
	content="IgniteMSIT would be the first, to ever host an Ignite Talk in Delhi-NCR.">
<META NAME="ROBOTS" CONTENT="INDEX, FOLLOW">
<meta name="google-site-verification"
	content="2VAoCnYQe5VWD-VUTqlYPrJC-qBEpQq_fzLDF3rUtmo" />
<meta name="msvalidate.01" content="FB4B640430CE5941B73AC59B120A21CE" />
<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
<title>Ignite MSIT</title>
<!-- Favicon -->
<link rel="shortcut icon" type="image/icon"
	href="assets/images/favicon.ico" />
<!-- Font Awesome -->
<link href="assets/css/font-awesome.css" rel="stylesheet">
<!-- Bootstrap -->
<link href="assets/css/bootstrap.css" rel="stylesheet">
<!-- Slick slider -->
<link rel="stylesheet" type="text/css" href="assets/css/slick.css" />
<!-- Fancybox slider -->
<link rel="stylesheet" href="assets/css/jquery.fancybox.css"
	type="text/css" media="screen" />
<!-- Animate css -->
<link rel="stylesheet" type="text/css" href="assets/css/animate.css" />
<!-- Theme color -->
<link id="switcher" href="assets/css/theme-color/red-theme.css"
	rel="stylesheet">

<!-- Main Style -->
<link href="style.css" rel="stylesheet">

<!-- Fonts -->
<!-- Open Sans for body font -->
<link href='https://fonts.googleapis.com/css?family=Open+Sans'
	rel='stylesheet' type='text/css'>
<!-- Raleway for Title -->
<link href='https://fonts.googleapis.com/css?family=Raleway'
	rel='stylesheet' type='text/css'>
<!-- Pacifico for 404 page   -->
<link href='https://fonts.googleapis.com/css?family=Pacifico'
	rel='stylesheet' type='text/css'>

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
<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body itemscope itemtype="http://schema.org/Event">
	<div id="fb-root"></div>
	<script>
		(function(d, s, id) {
			var js, fjs = d.getElementsByTagName(s)[0];
			if (d.getElementById(id))
				return;
			js = d.createElement(s);
			js.id = id;
			js.src = "//connect.facebook.net/en_US/sdk.js#xfbml=1&version=v2.5&appId=1453946961575719";
			fjs.parentNode.insertBefore(js, fjs);
		}(document, 'script', 'facebook-jssdk'));
	</script>
	<!-- BEGAIN PRELOADER -->
	<div id="preloader">
		<div class="loader">&nbsp;</div>
	</div>
	<!-- END PRELOADER -->

	<!-- SCROLL TOP BUTTON -->
	<a class="scrollToTop" href="home"><i class="fa fa-chevron-up"></i></a>
	<!-- END SCROLL TOP BUTTON -->

	<!-- Start header section -->
	<header id="header">
		<div class="header-inner">
			<!-- Header image -->
			<img src="assets/images/header-bg.jpg" alt="img">
			<div class="header-overlay">
				<div class="header-content">
					<!-- Start header content slider -->
					<h2 class="header-slide">
						We will <span>inspire</span> <span>encourage</span> <span>ignite</span>
						you
					</h2>
					<!-- End header content slider -->
					<!-- Header btn area -->
					<div class="header-btn-area">
						<a class="download-btn menu-scroll" href="#menu-area">Have a
							Look</a>
					</div>
				</div>
			</div>
		</div>
	</header>
	<!-- End header section -->

	<!-- Start menu section -->
	<section id="menu-area">
		<nav class="navbar navbar-default main-navbar" role="navigation">
			<div class="container">
				<div class="navbar-header">
					<!-- FOR MOBILE VIEW COLLAPSED BUTTON -->
					<button type="button" class="navbar-toggle collapsed"
						data-toggle="collapse" data-target="#navbar" aria-expanded="false"
						aria-controls="navbar">
						<span class="sr-only">Toggle navigation</span> <span
							class="icon-bar"></span> <span class="icon-bar"></span> <span
							class="icon-bar"></span>
					</button>
					<!-- LOGO -->
					<a class="navbar-brand logo" href="/home"><img
						src="assets/images/logo_real.png" alt="logo"></a>
				</div>
				<div id="navbar" class="navbar-collapse collapse">
					<ul id="top-menu" class="nav navbar-nav main-nav menu-scroll">
						<li id="menuHome" class="active"><a href="#menu-area">Home</a></li>
						<li id="menuSpeaker"><a href="#from-blog">Speakers</a></li>
						<li id="menuFormat"><a href="#service">Format</a></li>
						<li id="menuAbout"><a href="#about">About</a></li>
						<li id="menuRegister"><a href="#call-to-action">Register</a></li>
						<li><a href="team">Team </a></li>
						<li id="menuContact"><a href="#contact">Contact</a></li>
					</ul>
				</div>
				<!--/.nav-collapse -->
			</div>
		</nav>
	</section>
	<!-- End menu section -->

	<!-- Welcome Modal -->
	<div id="welcomeModal" class="modal fade">
		<div class="modal-dialog" style="color: #000000; width: 65%">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close btn btn-danger"
						data-dismiss="modal">&times;</button>
					<h4 class="modal-title">Testimonial</h4>
				</div>
				<div class="modal-body">
					<img src="/assets/images/newshd.jpg" alt="News" style="width: 100%">
					<div class="modal-footer">
						<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Welcome Modal -->

	<!-- Testimonial Section Start -->
	<section id="testimonial">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<!-- Start welcome area -->
					<div class="welcome-area">
						<div class="title-area">
							<h2 class="tittle">Testimonial</h2>
							<span class="tittle-line"></span>
						</div>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-md-12">
					<div class="about-area">
						<div class="row">
							<div class="col-md-5 col-sm-6 col-xs-12" id="news">
								<div class="about-left wow fadeInLeft">
									<img src="assets/images/news.jpg" alt="img"
										style="width: 100%; height: 100%;">
								</div>
							</div>
							<div class="col-md-7 col-sm-6 col-xs-12">
								<div class="about-right wow fadeInRight">
									<div class="title-area">
										<h2 class="tittle">
											The <span>Pinnacle</span> of IgniteMSIT
										</h2>
										<span class="tittle-line"></span>
										<p class="justify">The Home Minister Of India, Mr. Rajnath
											Singh, has gracefully recognized IgniteMSIT as an event that
											will act as a catalyst in bringing revolutionary ideas to
											front. His words of appreciation has reinforced the
											enthusiasm of the Ignite Team and the Institution on a whole.</p>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- Testimonial Section Start -->

	<!-- Start intro section -->
	<section id="counter">
		<img src="assets/images/counter-bg.jpg" alt="img">
		<div class="counter-overlay">
			<div class="container">
				<div class="row">
					<div class="col-md-12">
						<!-- Start counter area -->
						<div class="counter-area">
							<div class="col-md-3 col-sm-6 col-xs-6">
								<div class="single-counter">
									<span class="fa fa-calendar"></span>
									<div class="counter-count">
										<p>
											<br />30th March 2016
										</p>
									</div>
								</div>
							</div>
							<div class="col-md-3 col-sm-6 col-xs-6">
								<div class="single-counter">
									<span class="fa fa-location-arrow"></span>
									<div class="counter-count">
										<p>
											Maharaja<br />Surajmal Institute<br />of Technology
										</p>
									</div>
								</div>
							</div>
							<div class="col-md-3 col-sm-6 col-xs-6">
								<div class="single-counter">
									<span class="fa fa-tag"></span>
									<div class="counter-count">
										<p>500 Passes</p>
									</div>
								</div>
							</div>
							<div class="col-md-3 col-sm-6 col-xs-6">
								<div class="single-counter">
									<span class="fa fa-info"></span>
									<div class="counter-count">
										<p>
											Brilliant<br />Speakers
										</p>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- End intro section -->

	<!-- Start from blog section -->
	<section id="from-blog">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div class="from-blog-area">
						<div class="title-area">
							<h2 class="tittle">
								Our <span>Speakers</span>
							</h2>
							<span class="tittle-line"></span>
						</div>
						<!-- From Blog content -->
						<div class="from-blog-content">
							<div class="row">
								<% 
									List <Speaker> ls = ofy().load().type(Speaker.class).list();
									Iterator <Speaker> it = ls.iterator();
									int i = 0;
									try{
										Speaker g = ofy().load().type(Speaker.class).id("Gaur Gopal Das").now();
										if(g != null){
									%>
								<div class="col-md-4 col-xs-12 col-sm-4 wow slideInUp"
									data-wow-delay="<%= 200*((i%3)+1) %>ms">
									<article class="single-from-blog">
										<figure>
											<img src="<%= g.getPic() %>" alt="img">
										</figure>
										<div class="blog-title">
											<h2>
												<%= g.getName() %>
											</h2>
											<p class="justify">
												<%= g.getShortDesc() %>
											</p>
										</div>
										<p class="justify"><%= g.getDesc() %></p>
										<div class="blog-footer">
											<a href="https://www.google.co.in/search?q=<%=g.getName()%>"
												target="_blank"><span class="fa fa-google"></span></a>
										</div>
									</article>
								</div>
								<%
											i++;
										}
									}catch(Exception e){
										e.printStackTrace();
									}
									while(it.hasNext()){
										Speaker s = it.next();
										if(!(s.getName().equals("Gaur Gopal Das"))){
								%>
								<div class="col-md-4 col-xs-12 col-sm-4 wow slideInUp"
									data-wow-delay="<%= 200*((i%3)+1) %>ms">
									<article class="single-from-blog">
										<figure>
											<img src="<%= s.getPic() %>" alt="img">
										</figure>
										<div class="blog-title">
											<h2>
												<%= s.getName() %>
											</h2>
											<p class="justify">
												<%= s.getShortDesc() %>
											</p>
										</div>
										<p class="justify"><%= s.getDesc() %></p>
										<div class="blog-footer">
											<!-- 
											<a href="<%= s.getFacebook() %>"><span
												class="fa fa-facebook"></span></a> <a
												href="<%= s.getTwitter() %>"><span class="fa fa-twitter"></span></a>
											<a href="<%= s.getLinkedin() %>"><span
												class="fa fa-linkedin"></span></a> <a
												href="<%= s.getGoogle() %>"><span
												class="fa fa-google-plus"></span></a>
												 -->
											<a href="https://www.google.co.in/search?q=<%=s.getName()%>"
												target="_blank"><span class="fa fa-google"></span></a>
										</div>
									</article>
								</div>
								<%
											if(i%3==2)
											{
												%>
							</div>
							<div class="row">
								<%
											}
											i++;
										}
									}
								%>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- End from blog section -->

	<!-- Start Format section -->
	<section id="service">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div class="service-area">
						<div class="title-area">
							<h2 class="tittle">Format</h2>
							<span class="tittle-line"></span>
						</div>
						<!-- service content -->
						<div class="service-content">
							<ul class="service-table">
								<li class="col-md-4 col-sm-12">
									<div class="single-service wow slideInUp">
										<span class="fa fa-edit service-icon"></span>
										<h4 class="service-title">Ignite Presentation</h4>
										<p>5 Minutes / Speaker</p>
									</div>
								</li>
								<li class="col-md-4 col-sm-12">
									<div class="single-service wow slideInUp">
										<span class="fa fa-sort-amount-asc service-icon"></span>
										<h4 class="service-title">Talk</h4>
										<p>5 Minutes / Speaker</p>
									</div>
								</li>
								<li class="col-md-4 col-sm-12">
									<div class="single-service wow slideInUp">
										<span class="fa fa-map-o service-icon"></span>
										<h4 class="service-title">Q & A / Interview</h4>
										<p>5 Minutes / Speaker</p>
									</div>
								</li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- End service section -->


	<!-- Start about section -->
	<section id="about">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<!-- Start welcome area -->
					<div class="welcome-area">
						<div class="title-area">
							<h2 class="tittle">
								Ignite <span>MSIT</span>
							</h2>
							<span class="tittle-line"></span>
						</div>
					</div>
					<!-- End welcome area -->
				</div>
			</div>
			<div class="row">
				<div class="col-md-12">
					<div class="about-area">
						<div class="row">
							<div class="col-md-5 col-sm-6 col-xs-12">
								<div class="about-left wow fadeInLeft">
									<img src="assets/images/about.jpg" alt="img"
										style="width: 100%; height: 100%;">
								</div>
							</div>
							<div class="col-md-7 col-sm-6 col-xs-12">
								<div class="about-right wow fadeInRight">
									<div class="title-area">
										<h2 class="tittle">
											About <span>Ignite</span> MSIT
										</h2>
										<span class="tittle-line"></span>
										<div class="don-share" data-style="icons" data-bubbles="none"
											data-limit="3">
											<div class="don-share-facebook"></div>
											<div class="don-share-twitter"></div>
											<div class="don-share-google"></div>
										</div>
										<script type="text/javascript">
											(function() {
												var dr = document
														.createElement('script');
												dr.type = 'text/javascript';
												dr.async = true;
												dr.src = '//share.donreach.com/buttons.js';
												(document
														.getElementsByTagName('head')[0] || document
														.getElementsByTagName('body')[0])
														.appendChild(dr);
											})();
										</script>
										<p itemprop="description">Ignite Talks is a fast-paced
											geek event, which brings to front the august minds around us.
											IgniteMSIT would be the first, to ever host an Ignite Talk in
											Delhi-NCR. We target a selected audience of 350 budding
											revolutionists to be a part of this inspiring event. The
											speakers are from varied domains, sharing their views, ideas
											and experiences to the fullest, in the minimum amount of
											time.</p>
										<div class="about-btn-area">
											<a href="team" class="button button-default"
												data-text="Check Our Team"><span>Check Our Team</span></a>
										</div>
										<meta itemprop="startDate" content="2016-03-30T10:00">
										<meta itemprop="endDate" content="2016-03-30T16:00">
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- End about section -->

	<!-- Start Register Section -->
	<section id="call-to-action">
		<img src="assets/images/call-to-action-bg.png" alt="img">
		<div class="call-to-overlay">
			<div class="container">
				<div class="call-to-content wow fadeInUp">
					<h2>Register Now</h2>
					<a class="button button-default" data-text="Register Now"
						data-toggle="modal" data-target="#registerModal"><span>Register
							Now</span></a>
				</div>
				<div id="registerModal" class="modal fade">
					<div class="modal-dialog" style="color: #000000; width: 90%">
						<div class="modal-content">
							<div class="modal-header">
								<button type="button" class="close btn btn-danger"
									data-dismiss="modal">&times;</button>
								<h4 class="modal-title">Register</h4>
							</div>
							<div class="modal-body">
								<p class="justify">
									If the form is not Loading.<br>Please Login into your
									Google Account or <a href="http://goo.gl/forms/0K3pHX7nPc"
										target="_blank">Click Here</a>
								<p>
									<iframe src="http://goo.gl/forms/0K3pHX7nPc"
										style="width: 100%; height: 60vh; border: 0px;" target="_top">Loading...</iframe>
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
	</section>
	<!-- End Register Section -->

	<!-- Start Contact section -->
	<section id="contact">
		<div class="container">
			<div class="row" itemprop="location" itemscope
				itemtype="http://schema.org/Place">
				<div class="col-md-4 col-sm-6 col-xs-12">
					<div class="contact-left wow fadeInLeft" style="height: 90vh;">
						<h2>Contact with us</h2>
						<address class="single-address">
							<h4>Location:</h4>
							<p itemprop="url" href="http://msit.in">
								<span itemprop="name">Maharaja Surajmal Institute of
									Technology 
							</p>
							<input type="hidden" itemprop="address" itemscope
								itemtype="http://schema.org/PostalAddress" value="New Delhi">
						</address>
						<address class="single-address">
							<h4>Phone</h4>
							<p>+919582323805</p>
						</address>
						<address class="single-address">
							<h4>E-Mail</h4>
							<p>info@ignitemsit.com</p>
						</address>
					</div>
				</div>
				<div class="col-md-8 col-sm-6 col-xs-12">
					<div class="contact-right wow fadeInRight" style="height: 90vh;">
						<h2>Find Us</h2>
						<iframe
							src="https://maps.google.com/maps?f=q&amp;source=s_q&amp;hl=en&amp;geocode=&amp;q=Maharaja Surajmal Institute of Technology&amp;output=embed"
							width="100%" style="height: 60vh;" frameborder="0"
							style="border:0" allowfullscreen></iframe>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- End Contact section -->

	<!-- Start Footer -->
	<footer id="footer">
		<div class="footer-bottom">
			<div>
				<div class="fb-like"
					data-href="https://www.facebook.com/ignitemsit/"
					data-layout="button_count" data-action="like"
					data-show-faces="true" data-share="false"></div>
				<br> <a href="https://www.facebook.com/ignitemsit/"><i
					class="fa fa-facebook"></i></a> <a
					href="http://www.twitter.com/ignitemsit"><i
					class="fa fa-twitter"></i></a> <a
					href="https://plus.google.com/104194730067761944888"><span
					class="fa fa-google-plus"></span></a>
			</div>
			<p style="text-align: center">
				Copyright 2016<br> <a href="http://ignitemsit.com"
					itemprop="url" href="http://ignitemsit.com"><span
					itemprop="name">Ignite MSIT &reg;</span></a>
			</p>
		</div>
	</footer>
	<!-- End Footer -->

	<!-- initialize jQuery Library -->
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
	<!-- Include all compiled plugins (below), or include individual files as needed -->
	<!-- Bootstrap -->
	<script src="assets/js/bootstrap.js"></script>
	<!-- Slick Slider -->
	<script type="text/javascript" src="assets/js/slick.js"></script>
	<!-- Counter -->
	<script type="text/javascript" src="assets/js/waypoints.js"></script>
	<script type="text/javascript" src="assets/js/jquery.counterup.js"></script>
	<!-- mixit slider -->
	<script type="text/javascript" src="assets/js/jquery.mixitup.js"></script>
	<!-- Add fancyBox -->
	<script type="text/javascript" src="assets/js/jquery.fancybox.pack.js"></script>
	<!-- Wow animation -->
	<script type="text/javascript" src="assets/js/wow.js"></script>
	<!-- Custom js -->
	<script type="text/javascript" src="assets/js/custom.js"></script>
	<!-- Scroll Fire Js -->
	<script type="text/javascript" src="assets/js/jquery.scrollfire.js"></script>
	<script>
		$("#news").click(function() {
			$('#welcomeModal').modal('show');
		});
	</script>


</body>
</html>