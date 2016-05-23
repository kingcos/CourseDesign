<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>留言</title>
<link href="<%=request.getContextPath() %>/jsp/css/bootstrap.css" rel="stylesheet" type="text/css">
<!-- jQuery (necessary JavaScript plugins) -->
<script src="<%=request.getContextPath() %>/jsp/js/bootstrap.js"></script>
<!-- Custom Theme files -->
<link href="<%=request.getContextPath() %>/jsp/css/style.css" rel='stylesheet' type='text/css' />
<!-- Custom Theme files -->
<!--//theme-style-->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<script type="application/x-javascript">
	
	 addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } 

</script>

<script src="<%=request.getContextPath() %>/jsp/js/jquery.min.js"></script>
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
	<!-- header -->
	<div class="top-banner">
		<div class="header">
			<div class="container">
				<div class="headr-left">
					<div class="search">
						<form>
							<input type="submit" value=""> <input type="text"
								value="" placeholder="搜索...">
						</form>
					</div>
					<div class="clearfix"></div>
				</div>
				<div class="headr-right">
					<div class="details">
						<ul>
							<li><a href="mailto@kingcosv@hotmai.com"><span
									class="glyphicon glyphicon-envelope" aria-hidden="true"></span>kingcosv@hotmai.com</a></li>
						</ul>
					</div>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
		<!--banner-info-->
		<div class="banner-info">
			<div class="container">
				<div class="logo">
					<h1>
						<a href="<%=request.getContextPath()%>/jsp/index.jsp">iBlog</a>
					</h1>
				</div>
				<div class="top-menu">
					<span class="menu"></span>
					<ul class="nav1">
						<li class="active"><a href="<%=request.getContextPath() %>/jsp/index.jsp">首页</a></li>
						 <li><a href="<%=request.getContextPath() %>/jsp/gallery.jsp">相册</a></li>
						 <li><a href="<%=request.getContextPath() %>/getabout.action">留言</a></li>
						<%
						 	if (session.getAttribute("username") == null) {
						 %>
						<li><a href="<%=request.getContextPath()%>/jsp/Register.jsp">注册</a></li>
						<li><a href="<%=request.getContextPath()%>/jsp/Login.jsp">登录</a></li>

						<%
						 	} else {
						 %>
						<li><a><%=(String)session.getAttribute("username") %></a></li>
						<li><a href="<%=request.getContextPath()%>/jsp/Logout.jsp">退出</a></li>
						<%
						 }
						 %>
					</ul>
				</div>
				<!-- script-for-menu -->
				<script>
					$("span.menu").click(function() {
						$("ul.nav1").slideToggle(300, function() {
							// Animation complete.
						});
					});
				</script>
				<!-- /script-for-menu -->
				<div class="clearfix"></div>
			</div>
		</div>
	</div>
	<!-- banner -->
	<div class="banner">
		<div class="bnr2"></div>
	</div>
	<!---->
	<div class="blog">
		<div class="container">
			<div class="col-md-12">
				<div class="blog-info">
					<div class="about">
						<div class="container">
							<h2>关于</h2>
							<div class="about-info-grids">
								<div class="col-md-5 abt-pic">
									<img
										src="http://ww2.sinaimg.cn/mw690/6b3192abjw8eocnxj7eo5j20k00k0gmw.jpg"
										class="img-responsive" alt="" width="300" height="300" />
								</div>
								<div class="col-md-7 abt-info-pic">
									<br>
									<h3></h3>
									<br>
									<p>今年，我已 20
										岁，在读大二。在大学这一年里，我明白了很多，学到了很多。这一年，我是幸福的，有一个十分凝聚的班级，有一群可爱的室友</p>
									<br>
									<blockquote>The people who are crazy enough to
										thinkthey can change the world, are the ones who do.</blockquote>
								</div>
								<div class="clearfix"></div>
							</div>
						</div>
					</div>
					<div class="response">
						<h4>回复</h4>
						
						<c:forEach items="${replylist }" var="re">
						<div class="media response-info">
							<div class="media-left response-text-left">
								<a href="#"> <img class="media-object"
									src="<%=request.getContextPath() %>/jsp/images/icon1.png" alt="" />
								</a>
								<h5>
									<a href="#">${re.reusername }</a>
								</h5>
							</div>
							<div class="media-body response-text-right">
								<p>${re.recontent }</p>
								<ul>
									<li>${re.redate }</li>
								</ul>
							</div>
							<div class="clearfix"></div>
						</div>
						</c:forEach>
						
					</div>
				</div>
				<div class="coment-form">留言</h4>
					<form action="${pageContext.request.contextPath }/createre.action?id=1" method="post">
						<textarea name="reply.recontent" type="text" onfocus="this.value = '';"
							onblur="if (this.value == '') {this.value = '你想说...';}"
							required="">你想说...</textarea>
						<input type="submit" value="回复">
					</form>
				</div>
			</div>
		</div>
		<div class="clearfix"></div>
	</div>
	</div>
	<!-- footer -->
	<!-- footer -->
	<div class="footer">
		<div class="container">
			<div class="footer-grids">
				<div class="col-md-4 ftr-info">
					<h3>关于我</h3>
					<p>14 Java 一班</p>
				</div>
				<div class="col-md-4 ftr-grid">
					<h3>站点导视</h3>
					<ul class="ftr-list">
						<li><a href="<%=request.getContextPath()%>/jsp/index.jsp">首页</a></li>
						<li><a href="<%=request.getContextPath()%>/jsp/gallery.jsp">相册</a></li>
						<li><a href="<%=request.getContextPath()%>/getabout.action">留言</a></li>
					</ul>
				</div>
				<div class="col-md-4 ftr-grid">
					<h3>联系我</h3>
					<ul class="ftr-list">
						<li><a href="mailto@kingcosv@hotmai.com"><span
								class="glyphicon glyphicon-envelope" aria-hidden="true"></span>kingcosv@hotmai.com</a></li>
						<li><a><span class="glyphicon glyphicon-star-empty"
								aria-hidden="true"></span>&nbsp;QQ</a></li>
						<li><a><span class="glyphicon glyphicon-send"
								aria-hidden="true"></span>&nbsp;微博</a></li>
						<li><a href="http://maimieng.com"><span
								class="glyphicon glyphicon-info-sign" aria-hidden="true"></span>&nbsp;iBlog</a></li>
					</ul>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
	</div>
	<!---->
	<div class="copywrite">
		<div class="container">
			<p>
				Copyright &copy; 2016 Powered by <a href="http://maimieng.com">http://maimieng.com</a>
			</p>
		</div>
	</div>
	<!-- 代码部分begin -->
	<div class="side">
		<ul>
			<li><a
				href="javascript:window.open('http://b.qq.com/webc.htm?new=0&sid=375975847&o=maimieng.com&q=7', '_blank', 'height=502, width=644,toolbar=no,scrollbars=no,menubar=no,status=no');"><div
						class="sidebox">
						<img src="<%=request.getContextPath() %>/jsp/images/side_icon01.png">QQ</a>
	</div>
	</li>
	<li><a href="http://weibo.com/375975847"><div class="sidebox">
				<img src="<%=request.getContextPath() %>/jsp/images/side_icon02.png">新浪微博
			</div></a></li>
	<li style="border: none;"><a href="javascript:goTop();"
		class="sidetop"><img src="<%=request.getContextPath() %>/jsp/images/side_icon03.png"></a></li>
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
	<!---->
</body>
</html>