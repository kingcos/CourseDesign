<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>首页</title>
<link href="<%=request.getContextPath()%>/jsp/css/bootstrap.css"
	rel="stylesheet" type="text/css">
<!-- jQuery (necessary JavaScript plugins) -->
<script src="<%=request.getContextPath()%>/jsp/js/bootstrap.js"></script>
<!-- Custom Theme files -->
<link href="<%=request.getContextPath()%>/jsp/css/style.css"
	rel='stylesheet' type='text/css' />
<!-- Custom Theme files -->
<!--//theme-style-->
<meta name="viewport" content="width=device-width, initial-scale=1">
<script type="application/x-javascript">
	
	 addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } 

</script>
<bgsound src="<%=request.getContextPath()%>/music/1.mp3" loop="-1">
<script src="<%=request.getContextPath()%>/jsp/js/jquery-2.1.0.min.js"></script>
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
						<li class="active"><a
							href="<%=request.getContextPath()%>/jsp/index.jsp">首页</a></li>
						<li><a href="<%=request.getContextPath()%>/jsp/gallery.jsp">相册</a></li>
						<li><a href="<%=request.getContextPath()%>/getabout.action">留言</a></li>
						<%
							if (session.getAttribute("username") == null) {
						%>
						<li><a href="<%=request.getContextPath()%>/jsp/Register.jsp">注册</a></li>
						<li><a href="<%=request.getContextPath()%>/jsp/Login.jsp">登录</a></li>

						<%
							} else {
						%>
						<li><a><%=(String) session.getAttribute("username")%></a></li>
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
	<!-- Slider-starts-Here -->
	<script
		src="<%=request.getContextPath()%>/jsp/js/responsiveslides.min.js"></script>
	<script>
		$(function() {
			$("#slider").responsiveSlides({
				auto : true,
				nav : false,
				speed : 500,
				namespace : "callbacks",
				pager : true,
			});
		});
	</script>
	<div class="slider">
		<div class="callbacks_container">
			<ul class="rslides" id="slider">

				<div class="slid banner1">
					<div class="caption">
						<h3>云</h3>
						<p>如果云知道...</p>
					</div>
				</div>
				<div class="slid banner2">
					<div class="caption">
						<h3>书</h3>
						<p>书籍是人类进步的阶梯</p>
					</div>
				</div>
				<div class="slid banner3">
					<div class="caption">
						<h3>树</h3>
						<p>十年树木，百年树人</p>
					</div>
				</div>

			</ul>
		</div>
	</div>
	<!-- content -->
	<div class="content">
		<div class="container">
			<div class="top-game-grids">
				<ul id="flexiselDemo1">
					<li>
						<div class="game-grid">

							<img src="<%=request.getContextPath()%>/jsp/images/gallery/1.jpg"
								class="img-responsive" alt="" />
						</div>
					</li>
					<li>
						<div class="game-grid">
							<img src="<%=request.getContextPath()%>/jsp/images/gallery/2.jpg"
								class="img-responsive" alt="" />
						</div>
					</li>
					<li>
						<div class="game-grid">
							<img src="<%=request.getContextPath()%>/jsp/images/gallery/3.jpg"
								class="img-responsive" alt="" />
						</div>
					</li>
					<li>
						<div class="game-grid">
							<img src="<%=request.getContextPath()%>/jsp/images/gallery/4.jpg"
								class="img-responsive" alt="" />
						</div>
					</li>
					<li>
						<div class="game-grid">
							<img src="<%=request.getContextPath()%>/jsp/images/gallery/5.jpg"
								class="img-responsive" alt="" />
						</div>
					</li>
					<li>
						<div class="game-grid">
							<img src="<%=request.getContextPath()%>/jsp/images/gallery/6.jpg"
								class="img-responsive" alt="" />
						</div>
					</li>
					<li>
						<div class="game-grid">
							<img src="<%=request.getContextPath()%>/jsp/images/gallery/7.jpg"
								class="img-responsive" alt="" />
						</div>
					</li>
					<li>
						<div class="game-grid">
							<img src="<%=request.getContextPath()%>/jsp/images/gallery/8.jpg"
								class="img-responsive" alt="" />
						</div>
					</li>
					<li>
						<div class="game-grid">
							<img src="<%=request.getContextPath()%>/jsp/images/gallery/9.jpg"
								class="img-responsive" alt="" />
						</div>
					</li>
				</ul>

				<script type="text/javascript">
					$(window).load(function() {
						$("#flexiselDemo1").flexisel({
							visibleItems : 4,
							animationSpeed : 1000,
							autoPlay : true,
							autoPlaySpeed : 3000,
							pauseOnHover : true,
							enableResponsiveBreakpoints : true,
							responsiveBreakpoints : {
								portrait : {
									changePoint : 480,
									visibleItems : 1
								},
								landscape : {
									changePoint : 640,
									visibleItems : 2
								},
								tablet : {
									changePoint : 768,
									visibleItems : 3
								}
							}
						});
					});
				</script>
				<script type="text/javascript"
					src="<%=request.getContextPath()%>/jsp/js/jquery.flexisel.js"></script>
			</div>
		</div>
	</div>
	<!-- poster -->
	<div class="poster">
		<div class="container">
			<div class="poster-info">
				<h3>iOS & Android</h3>
				<p>移动应用开发</p>
				<a class="hvr-bounce-to-bottom" href="reviews.html">点我查看</a>
			</div>
		</div>
	</div>
	<!-- x-box -->
	<div class="x-box">
		<div class="container">
			<div class="x-box_sec">
				<div class="col-md-7 x-box-left">
					<h2>My GitHub</h2>
					<h3>我的个人项目</h3>
					<p>开源，共享，方能进步</p>
					<a class="hvr-bounce-to-top" href="https://github.com/kingcos">点我查看</a>
				</div>
				<div class="col-md-5 x-box-right">
					<img src="<%=request.getContextPath()%>/jsp/images/github.png"
						class="img-responsive" alt="" width="300" height="300" />
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
	</div>
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

						<li class="active">
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
						<img
							src="<%=request.getContextPath()%>/jsp/images/side_icon01.png">QQ</a>
	</div>
	</li>
	<li><a href="http://weibo.com/375975847"><div class="sidebox">
				<img src="<%=request.getContextPath()%>/jsp/images/side_icon02.png">新浪微博
			</div></a></li>
	<li style="border: none;"><a href="javascript:goTop();"
		class="sidetop"><img
			src="<%=request.getContextPath()%>/jsp/images/side_icon03.png"></a></li>
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