<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta name="description" content="">
	<meta name="author" content="">
	<%
		String webRootPath = request.getContextPath();
	%>

	<title>Minh Le's Information</title>

	<!-- CSS -->
	<!-- Bootstrap core CSS -->
	<link href="<%=webRootPath %>/bootstrap/css/bootstrap.min.css" rel="stylesheet" media="screen">

	<!-- Owl Carousel -->
	<link href="<%=webRootPath %>/css/owl.theme.css" rel="stylesheet">
	<link href="<%=webRootPath %>/css/owl.carousel.css" rel="stylesheet">

	<!-- Magnific-popup lightbox -->
	<link href="<%=webRootPath %>/css/magnific-popup.css" rel="stylesheet">

	<!-- Simple text rotator -->
	<link href="<%=webRootPath %>/css/simpletextrotator.css" rel="stylesheet">

	<!-- Font Awesome CSS -->
	<link href="<%=webRootPath %>/css/font-awesome.min.css" rel="stylesheet" media="screen">

	<!-- Animate css -->
	<link href="<%=webRootPath %>/css/animate.css" rel="stylesheet">

	<!-- Custom styles CSS -->
	<link href="<%=webRootPath %>/css/style.css" rel="stylesheet" media="screen">
</head>
<body>

	<div class="wrapper">

		<!-- Preloader -->

		<div id="preloader">
			<div id="status">
				<div class="status-mes"><h4>Minh Le</h4></div>
			</div>
		</div>

		<!-- Navigation start -->

		<nav class="navbar navbar-custom navbar-fixed-top" role="navigation">
			<div class="container">

				<!-- Brand and toggle get grouped for better mobile display -->
				<div class="navbar-header">
					<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
						<span class="sr-only">Toggle navigation</span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
					</button>
					<a class="navbar-brand" href="#">Minh Le</a>
				</div>

				<!-- Collect the nav links, forms, and other content for toggling -->
				<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
					<ul class="nav navbar-nav navbar-right">
						<li><a href="#intro">home</a></li>
						<li><a href="#profile">Profile</a></li>
						<li><a href="#services">Services</a></li>
						<li><a href="#resume">Resume</a></li>
						<li><a href="#portfolio">Portfolio</a></li>
						<li><a href="#contact">Contact</a></li>
					</ul>
				</div>

			</div>
		</nav>

		<!-- Navigation end -->

		<!-- Intro section start -->

		<section id="intro" class="section">

			<div class="container">

				<div class="row">

					<div class="col-md-12">

						<div class="hello wow bounceInDown">
							<h1>Hello, I'm Minh Le</h1>
							<h3><span class="rotate">Mobile, Web and Application Developer | Back-end Developer | Java, C#, JavaScript</span></h3>
						</div>

						<a href="#profile">
							<div class="mouse-icon">
								<div class="wheel"></div>
							</div>
						</a>

					</div>

				</div><!-- .row -->

			</div><!-- .container -->

		</section>

		<!-- Intro section end -->

		<!-- Profile contact callout section -->

		<section id="profile-contact">

			<div class="container">

				<div class="row">

					<div class="col-sm-4 wow bounceInLeft">
						<div class="profile-item">
							<i class="fa fa-envelope-o"></i>
							<h5><a href="#">ledinhminh3883@gmail.com</a></h5>
						</div>
					</div>

					<div class="col-sm-4 wow bounceInUp">
						<div class="profile-item">
							<i class="fa fa-phone"></i>
							<h5>(435)754-5808</h5>
						</div>
					</div>

					<div class="col-sm-4 wow bounceInRight">
						<div class="profile-item">
							<i class="fa fa-map-marker"></i>
							<h5>Logan, Utah 84341</h5>
						</div>
					</div>

				</div><!-- .row -->

			</div><!-- .container -->

		</section>

		<!-- Profile contact callout section -->

		<!-- Profile section start -->

		<section id="profile" class="section">

			<div class="container">

				<div class="row">

					<div class="col-md-12 headline wow bounceInDown">
						<h2>Minh Le</h2>
						<p>I am a Mobile, Web and Application Developer. My professionals are Java, C# and JavaScript.</p>
					</div>

					<div class="col-md-3 col-sm-6 hidden-xs wow bounceInLeft">
						<img class="avatar" src="<%=webRootPath %>/images/photo.jpg" alt="">
					</div>

					<div class="col-md-3 col-sm-6 wow bounceInUp">

						<div class="profile-widget">
							<h3>Skillset</h3>

							<h5>Java, C#, JavaScript, HTML5, VB.NET</h5>
							<div class="skill-bar">
								<div class="skill-rate-on"></div>
								<div class="skill-rate-on"></div>
								<div class="skill-rate-on"></div>
								<div class="skill-rate-on"></div>
							</div>

							<h5>Matlab, C++, PHP, ASP, Erlang</h5>
							<div class="skill-bar">
								<div class="skill-rate-on"></div>
								<div class="skill-rate-on"></div>
								<div class="skill-rate-on"></div>
								<div class="skill-rate-off"></div>
							</div>

							<h5>Android, Windows Phone, SharePoint</h5>
							<div class="skill-bar">
								<div class="skill-rate-on"></div>
								<div class="skill-rate-on"></div>
								<div class="skill-rate-on"></div>
								<div class="skill-rate-on"></div>
							</div>

							<h5>MySQL, MS SQL Server</h5>
							<div class="skill-bar">
								<div class="skill-rate-on"></div>
								<div class="skill-rate-on"></div>
								<div class="skill-rate-on"></div>
								<div class="skill-rate-on"></div>
							</div>
						</div>

						<div class="profile-widget">
							<h3>Social Profiles</h3>
							<ul class="widget-social">
								<li><a href="#"><i class="fa fa-facebook fa-fw"></i></a></li>
								<li><a href="#" onclick="window.open('https://www.github.com/minhld');"><i class="fa fa-github-alt"></i></a></li>
								<li><a href="#" onclick="window.open('https://www.linkedin.com/in/ledinhminh3883');"><i class="fa fa-linkedin"></i></a></li>
								<li><a href="#" onclick="window.open('https://sites.google.com/site/ldmcntt');"><i class="fa fa-google-plus"></i></a></li>
							</ul>
						</div>

					</div><!-- .col-md-3 -->

					<div class="col-md-6 col-sm-12 wow bounceInRight">
						<h3>Professional Profile</h3>
						<p>I am a researcher in Computer Science at Utah State University. My research focus on opening the possibilities of applying mobile opportunistic networks to the extreme cases like disaster areas or battlefields with respect to trust, high performance and energy preservation. I have totally 7 years of experience in software industry and 4 years in academia that made me professional in windows, web and mobile platforms and technologies.</p>
						<p>In my leisure time, I develop useful mobile applications as a hobby. I'm really passionate about computer and mathematics and willing to read anything relevant to.</p>
					</div>

				</div><!-- .row -->

			</div><!-- .container -->

		</section>

		<!-- Profile section end -->

		<!-- Callout section start -->

		<section id="stats" class="callout">

			<div class="container">

				<div class="row">

					<div class="col-md-3 col-sm-12 hidden-xs wow bounceInLeft">
						<h3>My Stats</h3>
					</div>

					<div class="col-md-3 col-sm-4 wow bounceInDown">
						<div class="stat">
							<div class="stat-icon">
								<h2><i class="fa fa-coffee hidden-xs"></i><span class="timer" data-to="10"></span></h2>
							</div>
							<h3>Techniques</h3>
						</div>
					</div>

					<div class="col-md-3 col-sm-4 wow bounceInUp">
						<div class="stat">
							<div class="stat-icon">
								<h2><i class="fa fa-code hidden-xs"></i><span class="timer" data-to="25"></span></h2>
							</div>
							<h3>Projects</h3>
						</div>
					</div>

					<div class="col-md-3 col-sm-4 wow bounceInRight">
						<div class="stat">
							<div class="stat-icon">
								<h2><i class="fa fa-child hidden-xs"></i><span class="timer" data-to="500"></span>+</h2>
							</div>
							<h3>Happy colleagues</h3>
						</div>
					</div>

				</div><!-- .row -->

			</div><!-- .container -->

		</section>

		<!-- Callout section end -->

		<!-- Services section start -->

		<section id="services" class="section">

			<div class="container">

				<div class="row">

					<div class="col-md-12 headline wow bounceInDown">
						<h2>What i can do</h2>
						<p>My Services.</p>
					</div>

					<div class="col-md-12">

						<div class="row">

							<div class="col-sm-4 wow bounceInLeft">
								<div class="service">
									<div class="icon">
										<i class="fa fa-pencil"></i>
									</div>
									<h4>Mobile Development</h4>
									<div class="text">
										<p>I have 3 years working in commercial and research projects on Android using Java, and 2 years working on Windows Phone using C#.</p>
									</div>
								</div>
							</div>

							<div class="col-sm-4 wow bounceInUp">
								<div class="service">
									<div class="icon">
										<i class="fa fa-image"></i>
									</div>
									<h4>Web Development</h4>
									<div class="text">
										<p>I am capable of web development using different technologies JSP, ASP and PHP. My forte is HTML5/CSS3 and JavaScript.</p>
									</div>
								</div>
							</div>

							<div class="col-sm-4 wow bounceInRight">
								<div class="service">
									<div class="icon">
										<i class="fa fa-cog"></i>
									</div>
									<h4>Back-end Development</h4>
									<div class="text">
										<p>I have 3 years experience in Spring Framework and 1 year in SharePoint Services and Joomla. Web servers that I usually use are Tomcat, JBoss and IIS.</p>
									</div>
								</div>
							</div>

						</div><!-- .row -->

						<div class="row">

							<div class="col-sm-4 wow bounceInUp" data-wow-delay=".2s">
								<div class="service">
									<div class="icon">
										<i class="fa fa-code"></i>
									</div>
									<h4>Window Applications</h4>
									<div class="text">
										<p>I have several years working in Window commercial applications using C# and VB.NET (with Visual Studio) and Java (with Eclipse).</p>
									</div>
								</div>
							</div>

							<div class="col-sm-4 wow bounceInUp" data-wow-delay=".4s">
								<div class="service">
									<div class="icon">
										<i class="fa fa-desktop"></i>
									</div>
									<h4>Distributed Systems</h4>
									<div class="text">
										<p>I have 3 years doing research projects in distributed systems. My current research improves performance and energy efficiency of mobile systems.</p>
									</div>
								</div>
							</div>

							<div class="col-sm-4 wow bounceInUp" data-wow-delay=".6s">
								<div class="service">
									<div class="icon">
										<i class="fa fa-life-ring"></i>
									</div>
									<h4>Research</h4>
									<div class="text">
										<p>One of my strengths is problem solving and algorithms. I have good background in Mathematics (2 Bronze prizes in National Mathematical Contests).</p>
									</div>
								</div>
							</div>

						</div><!-- .row -->

					</div><!-- .col-md-12 -->

				</div><!-- .row -->

			</div><!-- .container -->

		</section>

		<!-- Services section end -->

		<!-- Callout section start -->

		<section class="callout">

			<div class="container">

				<div class="row">

					<div class="col-md-3 hidden-xs wow bounceInLeft">
						<h3>My status</h3>
					</div>

					<div class="col-md-9 headline nomargin wow bounceInDown">
						<h3>I'm currently looking for intern positions.</h3>
						<p>I am actively looking for a Software Developer position where I could learn and dedicate my efforts, as well as work full-time in the future.</p>
						<a href="#contact" class="btn btn-default btn-custom-2 callout-btn"><i class="fa fa-paper-plane-o icon-before"></i> Contact me</a>
					</div>

				</div><!-- .row -->

			</div><!-- .container -->

		</section>

		<!-- Callout section end -->

		<!-- Resume section start -->

		<section id="resume" class="section">

			<div class="container">

				<div class="row">

					<div class="col-md-12 headline wow bounceInDown">
						<h2>Resume</h2>
						<p>My education and experience.</p>
					</div>

				</div><!-- .row -->

				<div class="row resume-items">

					<div class="col-md-3 wow bounceInLeft">
						<h3>Education</h3>
					</div>

					<div class="col-md-6 col-sm-8 resume-item wow bounceInUp">
						<h4>Master in Computer Science - Middleware for Mobile Computing</h4>
						<p>We have been developing Service Market Middleware, an edge-computing architecture that utilizes both edge server and mobile peer-to-peer network to enable seamless remote executions with respect to high performance and failure-resistance. Our implementations on Android and Windows phone illustrates the capability of our middleware in reality with performance increased to 70% and 50% of energy conserved.</p>
						<hr class="hidden-xs">
					</div>

					<div class="col-md-3 col-sm-4 resume-place wow bounceInRight">
						<h4><i class="fa fa-suitcase"></i>Utah State University</h4>
						<i class="fa fa-calendar"></i> 2015 - Now
						<hr class="visible-xs">
					</div>

					<div class="col-md-6 col-md-offset-3 col-sm-8 resume-item wow bounceInUp">
						<h4>Master in Computer Science - Distributed Systems</h4>
						<p>Developed SensorBridge: a system extending Message-oriented Middleware to easily deploy with arbitrary wireless sensor networks. SensorBridge is adaptive with most of the sensor types, applicable for web and 3D virtualization systems.</p>
						<hr class="hidden-xs">
					</div>

					<div class="col-md-3 col-sm-4 resume-place wow bounceInRight">
						<h4><i class="fa fa-suitcase"></i>Konkuk University</h4>
						<i class="fa fa-calendar"></i> 2008 - 2010
						<hr class="visible-xs">
					</div>

				</div><!-- .row -->

				<div class="row resume-items">

					<div class="col-md-3 wow bounceInLeft">
						<h3>Experience</h3>
					</div>

					<div class="col-md-6 col-sm-8 resume-item wow bounceInUp">
						<h4>Software Developer</h4>
						<p>Involved in full-stack development of publishing system and social network for ebook-reader community.</p>
						<p>Developed high performance back-end web services (REST APIs) including content management, document conversion, storage and security.</p>
						<p>Developed front-end interactive web with HTML5 and JQuery. Developed Android and Windows Phone versions of the system.</p>
						<p><b>Techniques</b>: Java, C#, JSP, HTML5, JavaScript, JQuery, MySQL, Spring Framework, Android, ASP.</p>
						<hr class="hidden-xs">
					</div>

					<div class="col-md-3 col-sm-4 resume-place wow bounceInRight">
						<h4><i class="fa fa-suitcase"></i>NSoft Inc.</h4>
						<i class="fa fa-calendar"></i> 2012 - 2015
						<hr class="visible-xs">
					</div>

					<div class="col-md-6 col-md-offset-3 col-sm-8 resume-item wow bounceInUp">
						<h4>Software Developer</h4>
						<p>Designed and developed cluster-based web services for iris recognition to accelerate iris matching speed to 500k of comparisons per second.</p>
						<p>Enabled distributed shared memory and opened SOAP-based APIs for web and mobile applications.</p>
						<p>Developed visual toolkit to automatically detect memory leaks of the matching library and evaluate the correctness of the implemented algorithms.</p>
						<p><b>Techniques</b>: Java, C#, C++, SOAP, Web Services, JBoss, MySQL, Android.</p>
						<hr class="hidden-xs">
					</div>

					<div class="col-md-3 col-sm-4 resume-place wow bounceInRight">
						<h4><i class="fa fa-suitcase"></i>IriTech Inc.</h4>
						<i class="fa fa-calendar"></i> 2010 - 2012
						<hr class="visible-xs">
					</div>

					<div class="col-md-6 col-md-offset-3 col-sm-8 resume-item wow bounceInUp">
						<h4>Software Integration Engineer</h4>
						<p>Customized and provided SharePoint workflow services to governmental organizations.</p>
						<p>Converted data from Oracle DB to Microsoft SQL Server and built Business Intelligence tools to speedup report creation.</p>
						<p><b>Techniques</b>: C#, SharePoint, Windows Workflow, Microsoft SQL Server, Oracle DB.</p>
						<hr class="hidden-xs">
					</div>

					<div class="col-md-3 col-sm-4 resume-place wow bounceInRight">
						<h4><i class="fa fa-suitcase"></i>FPT Information System</h4>
						<i class="fa fa-calendar"></i> 2007 - 2008
						<hr class="visible-xs">
					</div>

					<div class="col-md-6 col-md-offset-3 col-sm-8 resume-item wow bounceInUp">
						<h4>Software Developer</h4>
						<p>Worked in Software Outsourcing Group and involved into project POCs and solved technical problems.</p>
						<p>Developed and maintained 6 outsourcing software projects.</p>
						<p><b>Techniques</b>: C#, VB.NET, Windows CE, SQLCE, Delphi, ASP, PHP.</p>
						<hr class="hidden-xs">
					</div>

					<div class="col-md-3 col-sm-4 resume-place wow bounceInRight">
						<h4><i class="fa fa-suitcase"></i>FPT Software</h4>
						<i class="fa fa-calendar"></i> 2005 - 2007
						<hr class="visible-xs">
					</div>

				</div><!-- .row -->

				<div class="row">

					<div class="col-md-6 col-md-offset-3 wow bounceInUp">
						<a href="files/minhle-resume.pdf" class="btn btn-default btn-custom-2"><i class="fa fa-cloud-download icon-before"></i> Download Resume</a>
					</div>

				</div><!-- .row -->

			</div><!-- .container -->

		</section>

		<!-- Resume section end -->

		<!-- Callout section start -->

		<section id="clients" class="callout">

			<div class="container">

				<div class="row">

					<div class="col-md-3 hidden-xs wow bounceInLeft">
						<h3>Achievements</h3>
					</div>

					<div class="col-md-9 wow bounceInRight">

						<div id="owl-clients" class="owl-carousel">

							<div class="owl-item">
								<img src="<%=webRootPath %>/images/logo/a1.jpg" alt="" onclick="window.open('http://grco.usu.edu');" style="cursor:pointer;">
								<h4>USU Student Research Award 2016</h4>
							</div>

							<div class="owl-item">
								<img src="<%=webRootPath %>/images/logo/a1.jpg" alt="" onclick="window.open('http://www.usu.edu');" style="cursor:pointer;">
								<h4>USU Graduate Scholarship 2015 - Now</h4>
							</div>

							<div class="owl-item">
								<img src="<%=webRootPath %>/images/logo/a8.jpg" alt="" onclick="window.open('http://ec.europa.eu/research/mariecurieactions');" style="cursor:pointer;">
								<h4>Marie Curie Scholarship 2012</h4>
							</div>

							<div class="owl-item">
								<img src="<%=webRootPath %>/images/logo/a2.jpg" alt="" onclick="window.open('https://www.useoul.edu/research/bk21-groups');" style="cursor:pointer;">
								<h4>BK21 Scholarship 2008-2010</h4>
							</div>

							<div class="owl-item">
								<img src="<%=webRootPath %>/images/logo/a3.jpg" alt="" onclick="window.open('http://www.microsoft-certification.co.uk/mcad_training.html');" style="cursor:pointer;">
								<h4>MCAD 2008</h4>
							</div>

							<div class="owl-item">
								<img src="<%=webRootPath %>/images/logo/a5.jpg" alt="">
								<h4>National Mathematical Olympiad 2001</h4>
							</div>

							<div class="owl-item">
								<img src="<%=webRootPath %>/images/logo/a5.jpg" alt="">
								<h4>National Mathematical Olympiad 2000</h4>
							</div>

						</div>

					</div><!-- .col-md-9 -->

				</div><!-- .row -->

			</div><!-- .container -->

		</section>

		<!-- Callout section end -->

		<!-- Portfolio section start -->

		<section id="portfolio" class="section">

			<div class="container">

				<div class="row">

					<div class="col-md-12 headline wow bounceInDown">
						<h2>Portfolio</h2>
						<p>Some pictures of my interesting works.</p>
					</div>

					<div class="col-md-4 col-sm-6 wow bounceInLeft">
						<a href="<%=webRootPath %>/images/p1.jpg" class="pop-up" title="BuzzPost">
							<div class="portfolio-item">
								<div class="portfolio-item-preview">
									<img src="<%=webRootPath %>/images/p1.jpg" alt="">
								</div>
								<div class="portfolio-item-description">
									<h3>BuzzPost</h3>
									<p>Web</p>
								</div>
							</div>
						</a>
					</div>

					<div class="col-md-4 col-sm-6 wow bounceInUp">
						<!--  <a href="https://vimeo.com/45830194" class="video-pop-up" title="Caption 2"> -->
						<a href="<%=webRootPath %>/images/p2.jpg" class="pop-up" title="CampusWeek">
							<div class="portfolio-item">
								<div class="portfolio-item-preview">
									<img src="<%=webRootPath %>/images/p2.jpg" alt="">
								</div>
								<div class="portfolio-item-description">
									<h3>CampusWeek</h3>
									<p>Web</p>
								</div>
							</div>
						</a>
					</div>

					<div class="col-md-4 col-sm-6 wow bounceInRight">
						<a href="<%=webRootPath %>/images/p3.jpg" class="pop-up" title="Pubress Android">
							<div class="portfolio-item">
								<div class="portfolio-item-preview">
									<img src="<%=webRootPath %>/images/p3.jpg" alt="">
								</div>
								<div class="portfolio-item-description">
									<h3>Pubress Android</h3>
									<p>Android</p>
								</div>
							</div>
						</a>
					</div>

					<div class="col-md-4 col-sm-6 wow bounceInUp" data-wow-delay=".2s">
						<a href="<%=webRootPath %>/images/p5.jpg" class="pop-up" title="EBook Reader">
							<div class="portfolio-item">
								<div class="portfolio-item-preview">
									<img src="<%=webRootPath %>/images/p5.jpg" alt="">
								</div>
								<div class="portfolio-item-description">
									<h3>EBook Reader</h3>
									<p>Android</p>
								</div>
							</div>
						</a>
					</div>

					<div class="col-md-4 col-sm-6 wow bounceInUp" data-wow-delay=".4s">
						<a href="<%=webRootPath %>/images/p8.jpg" class="pop-up" title="SensorBridge-3D">
							<div class="portfolio-item">
								<div class="portfolio-item-preview">
									<img src="<%=webRootPath %>/images/p8.jpg" alt="">
								</div>
								<div class="portfolio-item-description">
									<h3>SensorBridge 3D</h3>
									<p>Windows App</p>
								</div>
							</div>
						</a>
					</div>

					<div class="col-md-4 col-sm-6 wow bounceInUp" data-wow-delay=".6s">
						<a href="<%=webRootPath %>/images/p6.jpg" class="pop-up" title="SensorBridge-Web">
							<div class="portfolio-item">
								<div class="portfolio-item-preview">
									<img src="<%=webRootPath %>/images/p6.jpg" alt="">
								</div>
								<div class="portfolio-item-description">
									<h3>SensorBridge Web</h3>
									<p>Web</p>
								</div>
							</div>
						</a>
					</div>

				</div><!-- .row -->

			</div><!-- .container -->

		</section>

		<!-- Portfolio section end -->

		<!-- Contact section start -->

		<section id="contact" class="section">

			<div class="container">

				<div class="row">

					<div class="col-md-12 headline wow bounceInLeft">
						<h2>Contact Me</h2>
						<p>Drop me a line if you are interested in my resume. I love to hear you.</p>
					</div>

					<div class="col-md-6 wow bounceInUp">

						<p>If I couldn't reply you in time, please leave me a text message.</p>

						<ul class="icon-list">
							<li><i class="fa fa-fw fa-map-marker"></i>Logan, Utah 84341</li>
							<li><i class="fa fa-fw fa-phone"></i>(435)754-5808</li>
							<li><i class="fa fa-fw fa-envelope-o"></i><a href="mailto:">ledinhminh3883@gmail.com</a></li>
							<li><i class="fa fa-fw fa-globe"></i><a href="">http://www.jajanglab.com</a></li>
						</ul>

					</div>

					<div class="col-md-6 wow bounceInRight">

						<form id="contact-form" role="form" novalidate>

							<div class="form-group">
								<label class="sr-only" for="name">Name</label>
								<input type="text" id="name" class="form-control" name="name" placeholder="Name" required="">
								<p class="help-block text-danger"></p>
							</div>

							<div class="form-group">
								<label class="sr-only" for="email">Email address</label>
								<input type="email" id="email" class="form-control" name="email" placeholder="E-mail" required="">
								<p class="help-block text-danger"></p>
							</div>

							<div class="form-group">
								<textarea class="form-control" id="message" name="message" rows="7" placeholder="Your message" required=""></textarea>
								<p class="help-block text-danger"></p>
							</div>

							<button type="submit" class="btn btn-custom-1">
								<i class="fa fa-bullhorn icon-before"></i> Send it
							</button>

						</form>

						<div id="contact-response"></div>

					</div>

				</div><!-- .row -->

			</div><!-- .container -->

		</section>

		<!-- Contact section end -->

		<!-- Footer start -->

		<footer id="footer">

			<div class="container">

				<div class="row">

					<div class="col-md-12">
						<p class="copy">
							© 2017 Minh Le, All Rights Reserved.
						</p>
					</div>

				</div><!-- .row -->

			</div><!-- .container -->

		</footer>

		<!-- Footer end -->

	</div><!-- .wrapper -->

	<!-- Javascript files -->
	<!-- jQuery -->
	<script src="<%=webRootPath %>/js/jquery-1.11.0.min.js"></script>
	<!-- Bootstrap JS -->
	<script src="<%=webRootPath %>/bootstrap/js/bootstrap.min.js"></script>
	<!-- Background slider -->
	<script src="<%=webRootPath %>/js/jquery.backstretch.min.js"></script>
	<!-- OwlCarousel -->
	<script src="<%=webRootPath %>/js/owl.carousel.min.js"></script>
	<!-- Modal for portfolio -->
	<script src="<%=webRootPath %>/js/jquery.magnific-popup.min.js"></script>
	<!-- Text rotator -->
	<script src="<%=webRootPath %>/js/jquery.simple-text-rotator.min.js"></script>
	<!-- Waypoints -->
	<script src="<%=webRootPath %>/js/jquery.waypoints.js"></script>
	<!-- CountTo  -->
	<script src="<%=webRootPath %>/js/jquery.countTo.js"></script>
	<!-- WOW - Reveal Animations When You Scroll -->
	<script src="<%=webRootPath %>/js/wow.min.js"></script>
	<!-- Smooth scroll -->
	<script src="<%=webRootPath %>/js/smoothscroll.js"></script>
	<!-- Fitvids -->
	<script src="<%=webRootPath %>/js/jquery.fitvids.js"></script>
	<!-- jqBootstrapValidation -->
	<script src="<%=webRootPath %>/js/jqBootstrapValidation.js"></script>
	<!-- Custom scripts -->
	<script src="<%=webRootPath %>/js/custom.js"></script>

</body>
</html>
