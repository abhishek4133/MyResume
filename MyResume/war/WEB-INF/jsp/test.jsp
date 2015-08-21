
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href="/css/bootstrap.css" rel="stylesheet">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>BackBone Sala</title>
</head>
<body>

<div class="container">
<h1>User Manager</h1>
<hr/>
<a href="#/new" class="btn btn-primary">Add User</a>
<hr/>
<div class="mypage"></div>

</div>
		<script type="text/template" id="user_list_template">
				<table class="table striped">
					<thead>
						<tr>
							<th>First Name</th>
							<th>Last Name</th>
							<th>Age</th>
							<th>Edit</th>
						</tr>
					</thead>
					<tbody>
					<@ _.each(users, function(user) {
						@>
						<tr>
							<td><@= user.get('firstname') @></td>
							<td><@= user.get('lastname')@></td>
							<td><@= user.get('age')@></td>
							<td><a href="#/edit/<@= user.get('id') @>" class="btn">Edit</button></td>
						</tr>
					<@ });@>
					</tbody>
				</table>
		</script>
		
		<script type="text/template" id="edit_list_template">
			
			<form class="edit_user_form">
				<h2><@= user? 'Update' : 'Create'@> User</h2>
				<label>First Name</label>
				<br>
				<input type="text" name="firstname" value="<@= user? user.get('firstname'):''@>"/>
				<br>
				<label>Last Name</label>
				<br>
				<input type="text" name="lastname" value="<@= user?  user.get('lastname'):''@>"/>
				<br>
				<label>Age</label>
				<br>
				<input type="text" name="age" value="<@= user?  user.get('age'):''@>"/>
				<br>
				<hr/>
			<button type="submit" class="btn btn-primary"><@= user? 'Update' : 'Create'@></button>
			<@ if(user) { @>
					<input type="hidden" name="id" value="<@= user?  user.id:''@>"/>
					<button class="btn btn-danger delete">Delete</button>
				<@ } @>
			</form>
		</script>

<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.0.0-alpha1/jquery.min.js"></script>
<script src="/js/underscore.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/backbone.js/1.2.1/backbone-min.js"></script>


<script>
	$.ajaxPrefilter(function(options, originalOptions ,jqXHR){
		options.url = "http://backbonejs-beginner.herokuapp.com" + options.url;
	});
	
	
	$.fn.serializeObject = function() {
		var o = {};
		var a = this.serializeArray();
		$.each(a, function() {
			if(o[this.name] !== undefined) {
				if(!o[this.name].push) {
					o[this.name] =  [o[this.name]];
				}				
				o[this.name].push(this.vaue || '');
			} else {
				o[this.name] = this.value || '';
			}
		});
		return o;
	};
	
	var Users = Backbone.Collection.extend({
		url:'/users'
	});
	
	var User = Backbone.Model.extend({
		urlRoot:'/users'
	});
	
	var EditUser = Backbone.View.extend({
		el:'.mypage',
		render: function(options) {
			var that = this;
			if(options.id) {
				that.user = new User({id: options.id});
				that.user.fetch({
					success: function(user) {
						console.log(user);
						var template = _.template($('#edit_list_template').html())({user: user}); 
						that.$el.html(template);
						/* router.navigate('',{trigger:true}) */
					}
				});
			} else {
				var template = _.template($('#edit_list_template').html())( {user : null}); 
				that.$el.html(template);
			}
		},
		events: {
			'submit .edit_user_form':'saveUser',
			'click .delete':'deleteUser'
		},
		saveUser : function(e) {
			e.preventDefault();
			var userObj = $(e.currentTarget).serializeObject();
			var user = new User();
			user.save(userObj, {
				success: function(user) {
					console.log(user);
					router.navigate('',{trigger:true});
				}
			});
			console.log(userObj);
			return false;
		},
		deleteUser : function(e) {
			this.user.destroy({
				success:function(user) {
					console.log(user);
					router.navigate('',{trigger:true});
				}
			});
			return false;
		}
	});
	
	var UserList = Backbone.View.extend({
		el:'.mypage',
		render: function() {
			var that = this;
			var users = new Users();
			users.fetch({
				success: function(users){
					console.log(users);
					var template = _.template($('#user_list_template').html())( {users: users.models}); 
					that.$el.html(template);
				}
			})
			
		}
	});
	
	var Router = Backbone.Router.extend({
		routes: {
			'':'home',
			'new':'editUser',
			'edit/:id':'editUser'
		}
	});
	
	var userList = new UserList();
	var editUser = new EditUser();
	var router = new Router();
	
	router.on('route:home', function(){
		userList.render();
	});
	
	router.on('route:editUser', function(id){
		editUser.render({id: id});
	});
	
	Backbone.history.start();
</script>
</body>
</html>