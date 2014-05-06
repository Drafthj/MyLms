<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>在线学习平台</title>
<link rel="stylesheet" href="resources/css/bootstrap.min.css" />
<link rel="stylesheet" href="resources/css/base.css" />
<script src="resources/js/jquery-2.02.js"></script>
<script src="resources/js/bootstrap.min.js"></script>
<script src="resources/js/bootstrap-hover-dropdown.js"></script>
<style type="text/css">
*,*:before,*:after {
	-webkit-box-sizing: border-box;
	-moz-box-sizing: border-box;
	box-sizing: border-box;
}
</style>
</head>
<body class="typocn" style="padding-top: 80px;">

<!-- nav -->
<jsp:include page="../nav.jsp"></jsp:include>
<div class="container">
<ol class="breadcrumb">
  <li><a href="#">首页</a></li>
  <li><a href="#">在线选课与报名</a></li>
</ol>
<div id="content">
	<div class="col-md-3 clearpadding">
	<div id="search">
	<form action="">
	<input type="text" class="form-control">
	<button>搜索</button>
	</form>
	</div>

	</div>
</div>
</div>
</body>
</html>