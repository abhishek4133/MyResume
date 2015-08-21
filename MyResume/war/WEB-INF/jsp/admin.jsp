<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
<link href="/css/main.min.css" rel="stylesheet">
<link href="/css/angular-content.css" rel="stylesheet">
<link rel="icon" type="image/gif" href="img/logo.png">
<link href="/css/font-awesome.min.css" rel="stylesheet">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Admin Panel</title>
</head>
<body>
<div class="container">

<div layout="row"  style="width:100%; background-color: #000000; padding-top: 5px"><span style="font-size: 22px; color: #fff;">&nbsp&nbsp Admin</span>
	<a style="color: #fff; position: absolute; top: 10px; right: 20px" href="/logout"><i class="fa fa-power-off"></i>&nbsp Logout</a>
</div>
						
	<div>
		<div class="row" style="margin-top: 20px">
			<div class="vertical-divider" >
		    	<div class="col-xs-3 myAdmin"></div>
		  		<div class="col-xs-8 detail" style="border-left: thick solid #f0f0f0; "></div>
			</div>
		</div>
	</div>
</div>
	<script type="text/template" id="userDetailTemplate">
			<label>Date: <@= user.date@></label>
			<br>
			<label for="contact-name">NAME</label>
			<input type="text" id="contact-name" class="form-control" style="font-size: 18px;" placeholder="Your name" 
				disabled="disabled" value="<@= user.name@>">
						      			
			<label for="email"  style="margin-top: 20px;">EMAIL</label>
			<input type="text" id="email" class="form-control"  style="font-size: 18px;"  placeholder="Your email" 
				disabled="disabled" value="<@= user.email@>">
						      			
			<label for="message" style="margin-top: 20px;">MESSAGE</label>
			<input name="message" id="message" class="required"  placeholder="Enter your message" 
					value="<@= user.msg@>"disabled="disabled" ></textarea>
		</script>
	<script type="text/template" id="userListTemplate">
  			<ul class="list-group" style="width:100%;margin-top: 5px; color:black;">
				<@_.each(users, function(user){ @>
				  <li class="list-group-item button primary"><a href="#/view/<@= user.seq @>"  style="color:black; height:100%"><@= user.name @></a></li>
				<@ }); @>
			</ul>
	</script>
<script src="js/jquery.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
<script src="/js/underscore.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/backbone.js/1.2.1/backbone-min.js"></script>

<script type="text/javascript">
var globalData = null;
	var UserList = Backbone.View.extend({
 		el				:	'.myAdmin',
 		initialize		: 	function(options) {
 								var _this = this;
					 			$.ajax({
									url : '/getList',
									type: 'get',
									contentType: 'application/json', 
									success: function(data){
									if(data) {
										globalData = data;
										console.log(data[0].name);
										_this.globalData = data;
										_this.render(options.renderUserDetail, options.seq);
									}
									}
								});
 							},
 		render 			:	function(renderUserDetail, seq) {
					 			var _this = this;
					 			for(var i=0; i<_this.globalData.length; i++) {
					 				_this.globalData[i]['seq'] = i;
								}
								var template = _.template($('#userListTemplate').html()) ({users: _this.globalData});
								_this.$el.html(template);
								if(renderUserDetail)
								{
									_this.renderUserDetail(seq)
								}
				 			},
	renderUserDetail	:	function(seq) {
								try {
									 UserDetail = new UserDetail();
								 } catch(e)
								 {}
								 UserDetail.render(seq); 
							}
 	});
	
	var UserDetail = Backbone.View.extend({
		el:".detail",
		render: function(seq) {
			var index = seq.seq;
			var user = UserList.globalData[index];
			var template = _.template($('#userDetailTemplate').html()) ({user: user});
			this.$el.html(template);
		}
	})
 
	 var Router = Backbone.Router.extend({
		 routes: {
			 '': 'home',
			 'view/:id':'showDetail',
			 'delete':'deleteUser'
		 },
	 });
	 
	 var router = new Router();
	 
	 router.on('route:home', function() {
		 try {
			 UserList = new UserList({renderUserDetail : true,seq : {seq : 0}});
		 } catch(e) {
			 UserList.render();
		 }
	 });
		
	 router.on('route:showDetail', function(seq) {
		 try {
			 UserList = new UserList({renderUserDetail : true,seq : {seq : seq}});
		 } catch(e) {
			 UserList.renderUserDetail({seq : seq});
		 }
	 });
	 Backbone.history.start();
</script> 

</body>
</html>