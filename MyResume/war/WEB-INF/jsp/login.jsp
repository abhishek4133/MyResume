<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" type="text/css" href='/css/angular-content.css'/>
<link rel="icon" type="image/gif" href="img/logo.png">
<link href="/css/bootstrap-theme.css" rel="stylesheet">
<link href="/css/bootstrap.css" rel="stylesheet">
</head>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Admin</title>
</head>



<body align="center" id="mainBody">
 
<div id="loginpannel" align="center">
<div id="sign"> ADMIN LOGIN</div>
<div style="padding-bottom:5px; padding-top: 16%">
		<input type="text" id="username" class="form-control" style="font-size: 18px;" placeholder="User Id">
		<input type="password" id="password" class="form-control" style="font-size: 18px;margin-top: 5px;" placeholder="Password" >
		<button id="logbtm" class="btn btn-primary">Login</button>
		
		
 </div>
 <img class="loader" alt="" src="https://ssl.gstatic.com/s2/oz/images/notifications/spinner_64_b6a3129c3429eba076483f2c93ba38f6.gif" style="height: 20px;width: 20px; display: none">
 <label id="incorrectLoginLabel"  style="font-size:80%; color: #CC0000 ; display: none;">Username/Password incorrect</label>
</div>
	<script src="js/jquery.min.js"></script>
	<!-- <script src="//ajax.googleapis.com/ajax/libs/jquery/1.10.0/jquery.min.js"></script> -->
	<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.3.15/angular.min.js"></script>
	<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.3.15/angular-animate.min.js"></script>
	<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.3.15/angular-aria.min.js"></script>
	<script src="http://imakewebthings.github.com/jquery-waypoints/waypoints.min.js" type="text/javascript"></script>
	<script src="js/angular-material.min.js"></script>
	<script src="js/main.js"></script>
</body>

</html>