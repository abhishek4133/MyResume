<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en" ng-app="StarterApp">
<head>
<link rel="stylesheet"
	href="https://ajax.googleapis.com/ajax/libs/angular_material/0.9.4/angular-material.min.css">
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=RobotoDraft:300,400,500,700,400italic">
<link href="css/angular-content.css" rel="stylesheet">
<link href="/css/bootstrap-theme.css" rel="stylesheet">
<link href="/css/bootstrap.css" rel="stylesheet">
<link href="/css/animation.css" rel="stylesheet">
<link href="/css/main.min.css" rel="stylesheet">
<link href="/css/font-awesome.min.css" rel="stylesheet">
<link rel="stylesheet" type="text/css"
	href="//cdnjs.cloudflare.com/ajax/libs/nprogress/0.1.2/nprogress.min.css">
<link rel="stylesheet" type="text/css"
	href="//cdnjs.cloudflare.com/ajax/libs/animate.css/3.1.0/animate.min.css">
<link rel="stylesheet" type="text/css"
	href="//netdna.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">

<link rel="stylesheet" type="text/css" href="css/normalize.css" />
<link rel="stylesheet" type="text/css" href="css/tabs.css" />
<link rel="stylesheet" type="text/css" href="css/tabstyles.css" />
<link rel="stylesheet" type="text/css" href="css/demo.css" />

<link rel="stylesheet" href="css/style.css">

<meta name="viewport" content="initial-scale=1" />
</head>
<body layout="column" ng-controller="AppCtrl" id="body">

	<md-toolbar layout="row" id="topHeader"> <img alt=""
		src="img/myimage.png" id="profileSmall">
	<h2 id="headerName" align="center"
		style="font-size: 20px; font-family: sans-serif; display: none;">Abhishek
		Kumar</h2>
	</md-toolbar>


	<div class="container" style="background: #fff">

		<md-toolbar layout="row" id="header">
		<div class="md-toolbar-tools" min>
			<div class="center">
				<img alt="" src="img/myimage.png" id="profile" >
				<h2 id="name" align="center"
					style="font-size: 26px; font-family: sans-serif;">Abhishek Kumar</h2>
				<md-whiteframe class="md-whiteframe-z5" layout
					layout-align="center center"
					style="background-color:#1A237E;margin-top: 15px">
				<span style="font-family: cursive;">Software Engineer</span> </md-whiteframe>
			</div>

		</div>
		</md-toolbar>


		<section style="margin-top: -60px" >
		<div class="tabs tabs-style-line">
			<nav>
			<ul>
				<li><a href="#section-line-1"><span style="font-size: 23px; padding-left: 60px" >About Me</span></a></li>
				<li><a href="#section-line-2"><span style="font-size: 23px">Professional</span></a></li>
				<li><a href="#section-line-3"><span style="font-size: 23px">Timeline</span></a></li>
				<li><a href="#section-line-4"><span style="font-size: 23px">Connection</span></a></li>		
					
			</ul>
			</nav>
			<div class="content-wrap">
				<section id="section-line-1">
				<div class="content">
					<div class="row">
						<div class="col-md-12">
							<h2 class="section-title">
								<span class="headerFont">
								<i class="fa fa-user"></i> SOMETHING ABOUT ME</span>
							</h2>
							<div class="intro fontSize">
								<h2> Hello. I am 
									<span id="about-rotate-title" class="rotate-words">
									    <span id="sofEng" class="rotate-in active">a Software Engineer.</span> 
										<span id="AndDev" class="rotate-out">an Android Developer.</span>
										<span id="slfLrn" class="rotate-out">a Self Learner.</span> 
										<span id="Deter" class="rotate-out">Self Determined.</span>
										<span id="Passionate" class="rotate-out">Passionate.</span>
										<span id="Player" class="rotate-out">Team Player.</span>
										<span id="Original" class="rotate-out">Original.</span>
										<span id="Strategist" class="rotate-out">Strategist.</span>
									</span> 
									<br>Coming from a small place to live my dreams.
									<br>For me Software development is passion & am much passionate, and having interest in
									<strong>Backend</strong> and <strong>Android</strong>
									application development.<br> 
								</h2>
							</div>
						</div>
					</div>
					<h2 class="section-title">
						<span class="headerFont"><i class="fa fa-th-large"></i>WHAT I REGULARLY DO</span>
					</h2>
					<div class="intro fontSize">
						<h2> Well, I used <span id="about-rotate-work" class="rotate-words">
								<span class="rotate-out">think</span> <span class="rotate-out">analyze</span>
								<span class="rotate-out">optimize</span>
								<span class="rotate-in active">design</span> <span
								class="rotate-out">build app</span> <span class="rotate-out">find issue</span> 
								<span class="rotate-out">fix those</span> <span
								class="rotate-out">test again</span> <span class="rotate-out">launch</span>
								<span class="rotate-out"> go for next version</span>
							</span>
						</h2>
					</div>
					<div class="row fontSize">
						<div class="col-xs-6 col-sm-4 col-md-2">
							<div class="process">
								<div class="process-box">
									<i class="fa fa-lightbulb-o fa-2x "></i>
									<h4>IDEA</h4>
								</div>
							</div>
						</div>
						<div class="col-xs-6 col-sm-4 col-md-2">
							<div class="process">
								<div class="process-box">
									<i class="fa fa-puzzle-piece fa-2x"></i>
									<h4>CONCEPT</h4>
								</div>
							</div>
						</div>
						<div class="col-xs-6 col-sm-4 col-md-2">
							<div class="process">
								<div class="process-box">
									<i class="fa fa-paint-brush fa-2x"></i>
									<h4>DESIGN</h4>
								</div>
							</div>
						</div>
						<div class="col-xs-6 col-sm-4 col-md-2">
							<div class="process">
								<div class="process-box">
									<i class="fa fa-code fa-2x"></i>
									<h4>DEVELOP</h4>
								</div>
							</div>
						</div>
						<div class="col-xs-6 col-sm-4 col-md-2">
							<div class="process">
								<div class="process-box">
									<i class="fa fa-bug fa-2x"></i>
									<h4>TEST</h4>
								</div>
							</div>
						</div>
						<div class="col-xs-6 col-sm-4 col-md-2">
							<div class="process">
								<div class="process-box">
									<i class="fa fa-rocket fa-2x"></i>
									<h4>LAUNCH</h4>
								</div>
							</div>
						</div>
					</div>
				</div>
				</section>


				<section id="section-flip-2">
				<div class="content">
					<div class="row">
						<div class="col-md-6">
							<h2 class="section-title">
								<span class="headerFont"><i class="fa fa-code"></i>SKILL</span>
							</h2>
							<div class="skillset dev-skillset" style="font-size: 16px;">
								<dl>
									<dt>Languages</dt>
									<dd>
										<div class="entry-meta">
											<a rel="tag">Java</a><a rel="tag">Javascript</a> <a rel="tag">Android</a>
										</div>
									</dd>
									<dt>Web</dt>
									<dd>
										<div class="entry-meta">
											<a rel="tag">jQuery</a> <a rel="tag">Html</a> 
											<a target="_blank" rel="tag">Bootstrap</a>
										</div>
									</dd>
									<dt>Mobile Platform</dt>
									<dd>
										<div class="entry-meta">
											<a rel="tag">Android</a>
										</div>
									</dd>
									<dt>Frameworks</dt>
									<dd>
										<div class="entry-meta">
											<a rel="tag">Spring</a>
											<a rel="tag">Android</a>
											<a rel="tag">Angular JS</a>
											<a rel="tag">Backbone JS</a>
										</div>
									</dd>
									<dt>Servers</dt>
									<dd>
										<div class="entry-meta">
											<a rel="tag">AppEngine</a> 
											<a rel="tag">TomCat</a>
										</div>
									</dd>
									<dt>Database</dt>
									<dd>
										<div class="entry-meta">
											<a rel="tag">Datastore</a> 
											<a rel="tag">MySql</a>
											<a rel="tag">SQLite</a>
										</div>
									</dd>
								</dl>
							</div>
						</div>

						<div class="col-md-6">
							<h2 class="section-title">
								<span class="headerFont"><i class="fa fa-comments"></i>WORK</span>
							</h2>
							<div class="fontSize" style="margin-left: 30px;">
								<span class="timeline-content" style="color: red;">ADAPTAVANT TECHNOLOGY SOLUTIONS</span>
								<br>
								<span class="timeline-content" style="font-size: 15px;">Software Engineer</span>
								<br>
								<br>
								<span class="timeline-content" style="font-size: 15px;">Project i worked on:</span>
								<br>
								<ul>
									<li><a class="timeline-content timeline-header" href="https://my.setmore.com" target="_blank">SETMORE</a></li>
									<li><a class="timeline-content timeline-header" href="http://www.csvtable.appspot.com" target="_blank">CSV TABLE</a></li>
									<li><a class="timeline-content timeline-header" href="https://my.adaptiveyou.com" target="_blank">ADAPTIVEYOU</a></li>
								</ul>
							</div>
						</div>
					</div>
				</div>
				</section>


				<section id="section-flip-3" >

				<div class="content">
					<div class="row">
						<div class="col-md-12">
							<div class="cd-timeline-block">
								<div class="cd-timeline-img ">
									<img src="https://fbcdn-profile-a.akamaihd.net/hprofile-ak-xtp1/v/t1.0-1/p64x64/11695002_962075403844792_4506594232856281540_n.jpg?oh=c619d5d571f576e3914d05cee4d0d362&oe=563CBBD4&__gda__=1451408147_aca4f0d335e16bd289d55f0be89e5389" alt="Picture">
								</div>
								<!-- cd-timeline-img -->
								<div class="cd-timeline-content" >
									<span class="timeline-header" >FIRST DAY IN ADAPTAVANT</span>
									<br>
									<span class="timeline-content" style="color: red;">ADAPTAVANT TECHNOLOGY SOLUTIONS</span>
									<br>
									<span class="timeline-content">Felt proud, Started working for Adaptavant Technology and on my first project</span>
									<span class="cd-date date">Feb 04 2013</span>
								</div>
								<!-- cd-timeline-content -->
							</div>
							<!-- cd-timeline-block -->

							<div class="cd-timeline-block" >
								<div class="cd-timeline-img">
									<img src="img/vedant.jpg">
								</div>
								<!-- cd-timeline-img -->

								<div class="cd-timeline-content" >
									<span class="timeline-header">GRADUATED - B.TECH</span>
									<br>
									<span class="timeline-content" style="color: red;">VEDANT COLLEGE OF ENGINEERING & TECHNOLOGY</span>
									<br>
									<span class="timeline-content">Felt grown up, I completed my B.tech in Computer Science from vedant college of engineering & tech, kota</span>
									<span class="cd-date date">Aug 07 2012</span>
								</div>
								<!-- cd-timeline-content -->
							</div>
							<!-- cd-timeline-block -->

							<div class="cd-timeline-block">
								<div class="cd-timeline-img">
									<img src="img/holymission.png">
								</div>
								<!-- cd-timeline-img -->

								<div class="cd-timeline-content" >
									<span class="timeline-header">COMPLETED HIGHER SECONDARY</span>
									<br>
									<span class="timeline-content" style="color: red;">HOLY MISSION</span>
									<br>
									<span class="timeline-content">I completed my higher secondary from Holy Mission, Samastipur..<br> Tense Moment !!! </span>
									<span class="cd-date date">May 27 2006</span>
								</div>
								<!-- cd-timeline-content -->
							</div>
							<!-- cd-timeline-block -->
							
							<div class="cd-timeline-block">
								<div class="cd-timeline-img">
									<img src="img/school_logo.png" alt="Movie">
								</div>
								<!-- cd-timeline-img -->

								<div class="cd-timeline-content">
									<span class="timeline-header">SECONDARY SCHOOL</span>
									<br>
									<span class="timeline-content" style="color: red;">PREMALOK MISSION</span>
									<br>
									<span class="timeline-content">I completed my secondary school from Premalok Mission, Patna..</span>
									<br>
									<span class="cd-date date">May 28 2004</span>
								</div>
								<!-- cd-timeline-content -->
							</div>
							<!-- cd-timeline-block -->
							
							
							<div class="cd-timeline-block">
								<div class="cd-timeline-img">
									<img src="img/Childhood.jpg">
								</div>
								<!-- cd-timeline-img -->

								<div class="cd-timeline-content" >
									<span class="timeline-header">CHILDHOOD</span>
									<br>
									<span class="timeline-content" style="color: red;">HAPPY HAPPY MISSION</span>
									<br>
									<span class="timeline-content">Most beautiful moment of everyone's life. i was on extreame in naughtiness. thanks my mom is full of patience<br> Happy Moment !!! </span>
									<span class="cd-date date">May 27 2006</span>
								</div>
								<!-- cd-timeline-content -->
							</div>
							
							<div class="cd-timeline-block">
								<div class="cd-timeline-img ">
									<img src="https://fbstatic-a.akamaihd.net/rsrc.php/v2/yU/r/ZdK8JFXQjuC.png">
								</div>
								<!-- cd-timeline-img -->

								<div class="cd-timeline-content">
									<span class="timeline-header">BORN</span>
									<br>
									<span class="timeline-content" >The day i came in this world, thanks to sadar hospital</span>
									<br>
									<span class="cd-date date">Feb 04 1990</span>
								</div>
								<!-- cd-timeline-content -->
							</div>
							<!-- cd-timeline-block -->
						</div>
					</div>
				</div>
				</section>
				<section id="section-flip-4">
				<div class="content">
					<div class="row">
						<div class="col-md-12">
							<h2 class="section-title">
								<span class="headerFont"><i class="fa fa-chain"></i>LET'S GET CONNECTED</span>
							</h2>
							<ul class="social">
								<li><a
									href="https://www.facebook.com/abhishek.4133" target="_blank" ><img src="img/android.svg"></img></a></li>
								<li><a 
									href="https://google.com/+ABHISHEKKUMAR4133"
									target="_blank"><img src="img/googleplus.svg"></img></a></li>
								<li><a 
									href="https://twitter.com/abhishek_4133" target="_blank"><img src="img/twitter.svg"></a></li>
								<li><a 
									href="http://in.linkedin.com/in/abhishek4133"
									target="_blank"><img src="img/linkedin.svg"></img></a></li>
								<li><a 
									href="https://stackoverflow.com/users/3419184/abhishek-kumar?tab=profile"
									target="_blank"><img src="img/stackoverflow.svg"></img></a></li>
								<li><a 
									 href="https://github.com/abhishek4133"
									target="_blank"><img src="img/android.svg"></img></a></li>
								<li><a 
									href="https://www.youtube.com/user/manchi4133/about"
									target="_blank"><img src="img/youtube.svg"></img></a></li>
								<li><a 
									href="https://www.youtube.com/user/manchi4133/about"
									target="_blank"><img src="img/skype.svg"></img></a></li>
							</ul>
						</div>
					</div>
					
					<div class="row">
						<div class="col-md-12">
							<h2 class="section-title">
								<span class="headerFont"><i class="fa fa-send-o"></i>SEND ME A TEXT</span>
								
							</h2>
							<div class="row">
						  		<div class="col-lg-6" style="padding-left: 30px">
						  		<div class="loader" style="position:absolute; width: 100%;height: 100%; display: none;"></div>
						  				<label for="contact-name" >NAME</label>
						      			<input type="text" id="contact-name" class="form-control" style="font-size: 18px;" placeholder="Your name">
						      			
										<label for="email"  style="margin-top: 20px;">EMAIL</label>
						      			<input type="text" id="email" class="form-control"  style="font-size: 18px;"  placeholder="Your email">
						      			
										<label for="message" style="margin-top: 20px;">MESSAGE</label>
										<textarea name="message" id="message" class="required"  placeholder="Enter your message" aria-required="true" style="font-size: 18px;"></textarea>
										<br>
										<div>
										<button id="submit-contact-detail" class="submit button primary small" style="margin-top: 20px;">Send</button>
										<img class="loader" alt="" src="https://ssl.gstatic.com/s2/oz/images/notifications/spinner_64_b6a3129c3429eba076483f2c93ba38f6.gif" style="height: 30px;width: 30px; display: none;">
										<span id="finish" class="alert-success" style="padding: 10px; font-size: 17px; display: none;">Thank you!</span>
										</div>
								</div>		
								</div><!-- /input-group -->
						  </div><!-- /.col-lg-6 -->
							
						</div>
					</div>
					
					
					</div>
				</div>
				</section>
			</div>
			<!-- /content -->
		</div>
		<!-- /tabs --> </section>
	</div>

	<!-- Angular Material Dependencies -->
	<script src="js/jquery.min.js"></script>
	<!-- <script src="//ajax.googleapis.com/ajax/libs/jquery/1.10.0/jquery.min.js"></script> -->
	<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.3.15/angular.min.js"></script>
	<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.3.15/angular-animate.min.js"></script>
	<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.3.15/angular-aria.min.js"></script>
	<script src="http://imakewebthings.github.com/jquery-waypoints/waypoints.min.js" type="text/javascript"></script>
	<script src="js/angular-material.min.js"></script>
	<script src="js/bootstrap.js"></script>
	<script src="js/jquery.validate.min.js"></script>
	<script src="js/fastclick.min.js"></script>
	<script src="js/nprogress.min.js"></script>
	<script src="js/modernizr.custom.js"></script>
	<script src="js/main.js"></script>
	<!--  <script src="js/mainanim.min.js"></script> -->
	<script src="js/mainTimeline.js"></script>


	<script src="js/cbpFWTabs.js"></script>
	<script>
		(function() {
			[].slice.call(document.querySelectorAll('.tabs')).forEach(
				function(el) {
					new CBPFWTabs(el);
				});

		})();
	</script>

	<script type="text/javascript">
		$(document).ready(function() {
			function textAnim() {
				window.timer = setInterval(
					function() {
						var a = $('#about-rotate-title span.active').next();
						$('#about-rotate-title span.active').addClass("rotate-out").removeClass("rotate-in active");
						if (!a.length) {
							a = $('#about-rotate-title').children().first()
						}
						a.addClass("rotate-in active").removeClass("rotate-out");

						var a = $('#about-rotate-work span.active').next();
						$('#about-rotate-work span.active').addClass("rotate-out").removeClass("rotate-in active");
						if (!a.length) {
							a = $('#about-rotate-work').children().first()
						}
						a.addClass("rotate-in active").removeClass("rotate-out");
					}, 2500);
				}
				textAnim();

				$(window).scroll(function() {
					var profileImg = $('#profile').visible(true, false, 'both');
					if (profileImg == true) {
						$('#profileSmall').fadeOut(200);
						$('#headerName').fadeOut(200);
					} else {
						$('#profileSmall').fadeIn(200);
						$('#headerName').fadeIn(200);
					}
				});
			    });

	</script>

</body>
</html>

