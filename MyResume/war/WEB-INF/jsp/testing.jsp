<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en" ng-app="StarterApp">
  <head>
    <link rel="stylesheet" href="https://ajax.googleapis.com/ajax/libs/angular_material/0.9.4/angular-material.min.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=RobotoDraft:300,400,500,700,400italic">
    <link href="css/angular-content.css" rel="stylesheet">
    <link href="/css/bootstrap-theme.css" rel="stylesheet">
	<link href="/css/bootstrap.css" rel="stylesheet">
	<link href="/css/animation.css" rel="stylesheet">
	<link href="/css/main.min.css" rel="stylesheet">
	<link href="/css/font-awesome.min.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="//cdnjs.cloudflare.com/ajax/libs/nprogress/0.1.2/nprogress.min.css">
    <link rel="stylesheet" type="text/css" href="//cdnjs.cloudflare.com/ajax/libs/animate.css/3.1.0/animate.min.css">
    <link rel="stylesheet" type="text/css" href="//netdna.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
    <meta name="viewport" content="initial-scale=1" />
  </head>
  <body layout="column" ng-controller="AppCtrl">
  
    <md-toolbar layout="row" id="topHeader">
     <img alt="" src="img/myimage.png" id="profileSmall"  >
     <h2 id="headerName"  align="center" style="font-size: 20px;font-family:sans-serif;"> Abhishek Kumar</h2>
    </md-toolbar>
    
    
    <div class="container vs-triplelayout">
    
    <md-toolbar layout="row" id="header">
      <div class="md-toolbar-tools" min>
        <div class="center" >
    	 <img alt="" src="img/myimage.png" id="profile">
        <h2 id="name"  align="center" style="font-size: 26px;font-family:sans-serif;"> Abhishek Kumar</h2>
         <md-whiteframe class="md-whiteframe-z5" layout layout-align="center center" style="background-color:#1A237E;margin-top: 15px" >
    		<span style="font-family: cursive;">Software Engineer</span>
  		</md-whiteframe>
		</div>
       
      </div>
    </md-toolbar>
   

	<ul class="vs-nav">
		<li class="vs-nav-current"><a href="#/about" id="abtMe">About Me</a></li>
		<li class="vs-nav-right"><a href="#/professional" id="profess" >Professional</a></li>
		<li class="vs-nav-left"><a href="#/connection" id="connec" >Connection</a></li>
	</ul>
	</header>

	<div class="wrapper">
		<section id="about" class="vs-current">
		<div class="content">
			<div class="row">
				<div class="col-md-12">
					<h2 class="section-title">
						<span><i class="fa fa-user"></i>A LITTLE ABOUT ME</span>
					</h2>
					<div class="intro">
						<h2>
							Hello. I am
							<span id="about-rotate-title" class="rotate-words">
							<span id="sofEng" class="rotate-in active">a Software Engineer.</span> 
							<span id="slfLrn" class="rotate-out">a Self Learner.</span> 
							<span id="AndDev" class="rotate-out">an Android Developer.</span>
							</span>
							<br>I live in a small town somewhere in the
							world.<br>I am passionated about software development,
							mainly interested in <strong>Backend</strong> and <strong>Android</strong>
							application development.<br>
							<br>My professional rule is simple <strong>Keep it
								Better (Code &nbsp;&amp;&amp; &nbsp;App)</strong><br>and i will
							always work for it.
						</h2>
					</div>
				</div>
			</div>
			<h2 class="section-title">
				<span><i class="fa fa-th-large"></i>WHAT I DO THEN</span>
			</h2>
			<div class="intro">
				<h2>
					Well, I will <span id="about-rotate-work" class="rotate-words">
					<span class="rotate-out">think</span> 
					<span class="rotate-out">analyze</span>
					<span class="rotate-in active">design</span> 
					<span class="rotate-out">build app</span>
					<span class="rotate-out">break something</span> 
					<span class="rotate-out">fix it</span>
					<span class="rotate-out">test it</span> 
					<span class="rotate-out">launch and repeat</span></span>
				</h2>
			</div>
			<div class="row">
				<div class="col-xs-6 col-sm-4 col-md-2">
					<div class="process">
						<div class="process-box">
							<i class="fa fa-lightbulb-o fa-2x fa-spin"></i>
							<h4>IDEA</h4>
						</div>
					</div>
				</div>
				<div class="col-xs-6 col-sm-4 col-md-2">
					<div class="process">
						<div class="process-box">
							<i class="fa fa-puzzle-piece fa-2x fa-spin"></i>
							<h4>CONCEPT</h4>
						</div>
					</div>
				</div>
				<div class="col-xs-6 col-sm-4 col-md-2">
					<div class="process">
						<div class="process-box">
							<i class="fa fa-paint-brush fa-2x fa-spin"></i>
							<h4>DESIGN</h4>
						</div>
					</div>
				</div>
				<div class="col-xs-6 col-sm-4 col-md-2">
					<div class="process">
						<div class="process-box">
							<i class="fa fa-code fa-2x fa-spin"></i>
							<h4>DEVELOP</h4>
						</div>
					</div>
				</div>
				<div class="col-xs-6 col-sm-4 col-md-2">
					<div class="process">
						<div class="process-box">
							<i class="fa fa-bug fa-2x fa-spin"></i>
							<h4>TEST</h4>
						</div>
					</div>
				</div>
				<div class="col-xs-6 col-sm-4 col-md-2">
					<div class="process">
						<div class="process-box">
							<i class="fa fa-rocket fa-2x fa-spin"></i>
							<h4>LAUNCH</h4>
						</div>
					</div>
				</div>
			</div>
		</div>
		</section>
		<section id="resume" class="vs-right">
		<div class="content">
			
		</div>
		</section>
		<section id="contact" class="vs-left">
		<div class="content">
			
		</div>
		</section>
	</div>
  </div>
    <!-- Angular Material Dependencies -->
    <script src="//ajax.googleapis.com/ajax/libs/jquery/1.10.0/jquery.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.3.15/angular.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.3.15/angular-animate.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.3.15/angular-aria.min.js"></script>
    <script src="http://imakewebthings.github.com/jquery-waypoints/waypoints.min.js" type="text/javascript"></script>
    <script src="js/angular-material.min.js"></script>
    <script src="js/bootstrap.js"></script>
    <script src="js/jquery.validate.min.js"></script>
    <script src="js/main.js"></script> 
    <script src="js/mainanim.min.js"></script>
    <script src="js/fastclick.min.js"></script>
    <script src="js/nprogress.min.js"></script>
    <script src="js/modernizr.custom.js"></script>
    
    
  </body>
</html>

