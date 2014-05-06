<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>网络学习平台</title>
<link rel="stylesheet" href="resources/css/bootstrap.min.css"/>
<link rel="stylesheet" href="resources/css/bootstrap-theme.min.css"/>
<link rel="stylesheet" href="resources/css/login.css"/>
<link rel="stylesheet" href="resources/css/base.css"/>
<script src="resources/js/jquery-2.02.js"></script>
<script src="resources/js/bootstrap.min.js"></script>
</head>
<body class="typocn">

<div class="head navbar-default">
<div class="container loginC">
			<h1>
				<a href="#"><img
					alt="网络学习平台" src="resources/images/logo.png"></a>
			</h1>
						<div class="search">
				<ul class="inline">
					<li><a href="#">简体中文</a></li>
					<li><a href="#">繁體中文</a></li>
					<li><a href="#">English</a></li>
				</ul>
</div>
</div>
</div>

<!-- nav -->
<div class="nav-container">
	<div class="container loginC nav">
	
	<span class="left"> <a href="http://lms.vision-info.com/pro/">首页</a>
					<a href="#">帮助</a>
	</span>
	 <span class="right"> <a href="javascript:addBookMark();">加入收藏</a>
					<a href="javascript:setMyHomepage('http://lms.vision-info.com/pro/');">设为首页</a>
					<a href="?c=Index&m=user_register">立即注册</a> 
					<a href="?c=Index&m=login">请登录</a>
	</span>
	</div>
</div>
<!-- content -->
<div class="container loginC">
<!-- wrapper -->

<div class="wrapper">
	<div class="main">
		<div class="snsidea">
			<div id="myCarousel" class="carousel slide">
    <ol class="carousel-indicators" style="display: none">
       <li data-target="#myCarousel" data-slide-to="0"  class="active" ></li>
       <li data-target="#myCarousel" data-slide-to="1" class=""></li>
       <li data-target="#myCarousel" data-slide-to="2" class=""></li>
        <li data-target="#myCarousel" data-slide-to="3" class=""></li>
        <li data-target="#myCarousel" data-slide-to="4" class=""></li>
    </ol>
    <div class="carousel-inner" >
        <div class="item active">
           <img src="resources/images/slide01.jpg" alt="">
        </div>
        <div class="item">
           <img src="resources/images/slide02.jpg" alt="">
        </div>
        <div class="item">
              <img src="resources/images/slide03.jpg" alt="">
        </div>
        <div class="item">
              <img src="resources/images/slide04.jpg" alt="">
        </div>
        <div class="item">
              <img src="resources/images/slide05.jpg" alt="">
        </div>
    </div>
    <a class="left carousel-control" href="#myCarousel" data-slide="prev">‹</a>
    <a class="right carousel-control" href="#myCarousel" data-slide="next">›</a>
  </div>
		</div>
<!-- login -->
	<div class="login">
		<h2>学员登录</h2>
		<form id="form1" action="login">
		<p>
			<label>登录名：</label>
			<input id="j_username" type="text" class="input"/>
		</p>
		<p>
			<label>密码：</label>
			<input id="j_password" type="password" class="pwd"/>
		</p>
		<p>
		<span>
		<a class="forget"  href="#">忘记密码?</a>
		</span>
			<input id="loginsubm" class="btn btn-info btn-lg" type="submit" style="margin-top: 15px;" value="登 录"/>
		</p>
		</form>
	</div>



	</div>

</div>
	<!-- foot -->
	
<div class="foot">
	<a href="#">官方网站</a>
	<a href="#">联系我们</a>
	<strong>
	<b>LMS 4.0.26.2055</b>
	</strong>
	©2005-2014 版权所有 
</div>
</div>
</body>
</html>