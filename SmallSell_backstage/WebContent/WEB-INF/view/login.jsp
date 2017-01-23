<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
  <!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8" />
		<title>bootstrap案例</title>
		<!--用百度的静态资源库的cdn安装bootstrap环境-->
		<!-- Bootstrap 核心 CSS 文件 -->
		<link href="http://apps.bdimg.com/libs/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet">
		<!--font-awesome 核心我CSS 文件-->
		<link href="//cdn.bootcss.com/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet">
		<!-- 在bootstrap.min.js 之前引入 -->
		<script src="http://apps.bdimg.com/libs/jquery/2.0.0/jquery.min.js"></script>
		<!-- Bootstrap 核心 JavaScript 文件 -->
		<script src="http://apps.bdimg.com/libs/bootstrap/3.3.0/js/bootstrap.min.js"></script>
		<!--jquery.validate-->
		<script type="text/javascript" src="js/jquery.validate.min.js" ></script>
		<script type="text/javascript" src="js/message.js" ></script>
		<style type="text/css">
			body{background: url(image/4.jpg) no-repeat;background-size: cover;font-size: 16px;color:#ffffff}
			.form{background: rgba(255,255,255,0.2);width:400px;margin:100px auto;}
			#login_form{display: block;}
			#register_form{display: none;}
			.fa{display: inline-block;top: 27px;left: 6px;position: relative;color: #ccc;}
			input[type="text"],input[type="password"]{padding-left:26px;}
			.checkbox{padding-left:21px;}
			
		</style>
	</head>
	<body>
	<div class="container">
		<div class="form row">
			<form class="form-horizontal col-sm-offset-3 col-md-offset-3" id="login_form">
				<h3 class="form-title">登录</h3>
				<div class="col-sm-9 col-md-9">
					<div class="form-group">
						<i class="fa fa-user fa-lg"></i>
						<input class="form-control required" type="text" placeholder="Username" name="username" autofocus="autofocus" maxlength="20"/>
					</div>
					<div class="form-group">
							<i class="fa fa-lock fa-lg"></i>
							<input class="form-control required" type="password" placeholder="Password" name="password" maxlength="8"/>
					</div>
					<div class="form-group">
						<label class="checkbox">
							<input type="checkbox" name="remember" value="1"/> 记住密码
						</label>
						<hr />
						登录遇到困难吗？<br/>
						请类型管理员
					</div>
					<div class="form-group">
						<input type="submit" class="btn btn-success pull-right" value="登录 "/>   
					</div>
				</div>
			</form>
		</div>
		</div>
	<script type="text/javascript" >
	
	$().ready(function() {
		$("#login_form").validate({
			rules: {
				username: "required",
				password: {
					required: true,
					minlength: 5
				},
			},
			messages: {
				username: "请输入姓名",
				password: {
					required: "请输入密码",
					minlength: jQuery.format("密码不能小于{0}个字 符")
				},
			}
		});
		$("#register_form").validate({
			rules: {
				username: "required",
				password: {
					required: true,
					minlength: 5
				},
				rpassword: {
					equalTo: "#register_password"
				},
				email: {
					required: true,
					email: true
				}
			},
			messages: {
				username: "请输入姓名",
				password: {
					required: "请输入密码",
					minlength: jQuery.format("密码不能小于{0}个字 符")
				},
				rpassword: {
					equalTo: "两次密码不一样"
				},
				email: {
					required: "请输入邮箱",
					email: "请输入有效邮箱"
				}
			}
		});
	});
	</script>
	</body>
</html>
