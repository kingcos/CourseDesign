<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>注册</title>

<link rel="stylesheet" href="css/register-style.css">

<script type="text/javascript" src="js/jquery-2.1.0.min.js"></script>
<script type="text/javascript" src="js/easyform.js"></script>
<style>
* {
	margin: 0;
	padding: 0;
	list-style-type: none;
}

a, img {
	border: 0;
}
/* side */
.side {
	position: fixed;
	width: 54px;
	height: 275px;
	right: 0;
	top: 214px;
	z-index: 100;
}

.side ul li {
	width: 54px;
	height: 54px;
	float: left;
	position: relative;
	border-bottom: 1px solid #444;
}

.side ul li .sidebox {
	position: absolute;
	width: 54px;
	height: 54px;
	top: 0;
	right: 0;
	transition: all 0.3s;
	background: #000;
	opacity: 0.8;
	filter: Alpha(opacity = 80);
	color: #fff;
	font: 14px/54px "微软雅黑";
	overflow: hidden;
}

.side ul li .sidetop {
	width: 54px;
	height: 54px;
	line-height: 54px;
	display: inline-block;
	background: #000;
	opacity: 0.8;
	filter: Alpha(opacity = 80);
	transition: all 0.3s;
}

.side ul li .sidetop:hover {
	background: #ae1c1c;
	opacity: 1;
	filter: Alpha(opacity = 100);
}

.side ul li img {
	float: left;
}
</style>
</head>
<body>
	<br>
	<h1>
		<center>注册</center>
	</h1>
	<div class="form-div">
		<%-- <form id="reg-form"
			action="${pageContext.request.contextPath }/register.action"
			method="post"> --%>
		<form id="form1" name="form1" method="post"
			action="${pageContext.request.contextPath }/register.action">
			<table>
				<tr>
					<td>用户名</td>
					<td><input name="user.username" type="text" id="uid"
						easyform="length:4-16;char-normal;real-time;"
						message="用户名必须为4—16位的英文字母或数字"
						easytip="disappear:lost-focus;theme:blue;"></td>
				</tr>
				<tr>
					<td>密码</td>
					<td><input name="psw1" type="password" id="psw1"
						easyform="length:6-16;" message="密码必须为6—16位"
						easytip="disappear:lost-focus;theme:blue;"></td>
				</tr>
				<tr>
					<td>确认密码</td>
					<td><input name="user.userpassword" type="password" id="psw2"
						easyform="length:6-16;equal:#psw1;" message="两次密码输入要一致"
						easytip="disappear:lost-focus;theme:blue;"></td>
				</tr>
				<tr>
					<td>E-mail</td>
					<td><input name="user.useremail" type="text" id="email"
						easyform="email;real-time;" message="Email格式要正确"
						easytip="disappear:lost-focus;theme:blue;"></td>
				</tr>
				<tr>
					<td>手机号码</td>
					<td><input name="user.usertel" type="text" id="nickname"
						easyform="length:11" message="手机号码必须为11位"
						easytip="disappear:lost-focus;theme:blue;"></td>
				</tr>
				<tr>
					<td>博客地址</td>
					<td><input name="user.userblog" type="text" id="blog"></td>
				</tr>
			</table>

			<div class="buttons">
				<input value="注 册" type="submit"
					style="margin-right: 20px; margin-top: 20px;"> <input
					value="登录" type="button" onclick="window.location='Login.jsp'"
					style="margin-right: 45px; margin-top: 20px;">
			</div>

			<br class="clear">
		</form>
	</div>

	<script type="text/javascript">
		$(document).ready(function() {
			$('#reg-form').easyform();
		});
	</script>
	<div style="text-align: center; clear: both;"></div>
	<!-- 代码部分begin -->
	<div class="side">
		<ul>
			<li><a href="javascript:void(0);"><div class="sidebox">
						<img src="images/side_icon01.png">QQ
					</div></a></li>
			<li><a href="javascript:void(0);"><div class="sidebox">
						<img src="images/side_icon02.png">新浪微博
					</div></a></li>
			<li style="border: none;"><a href="javascript:goTop();"
				class="sidetop"><img src="images/side_icon03.png"></a></li>
		</ul>
	</div>
	<script>
		$(function() {
			$(".side ul li").hover(function() {
				$(this).find(".sidebox").stop().animate({
					"width" : "124px"
				}, 200).css({
					"opacity" : "1",
					"filter" : "Alpha(opacity=100)",
					"background" : "#ae1c1c"
				})
			}, function() {
				$(this).find(".sidebox").stop().animate({
					"width" : "54px"
				}, 200).css({
					"opacity" : "0.8",
					"filter" : "Alpha(opacity=80)",
					"background" : "#000"
				})
			});
		});
		//回到顶部函数
		function goTop() {
			$('html,body').animate({
				'scrollTop' : 0
			}, 300);
		}
	</script>
</body>
</html>
