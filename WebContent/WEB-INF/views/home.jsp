<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>在线学习平台</title>
<link rel="stylesheet" href="resources/css/bootstrap.min.css" />
<link rel="stylesheet" href="resources/css/home.css" />
<link rel="stylesheet" href="resources/css/base.css" />
<script src="resources/js/jquery-2.02.js"></script>
<script src="resources/js/bootstrap.min.js"></script>
<script src="resources/js/bootstrap-hover-dropdown.js"></script>
</head>
<body class="typocn" style="padding-top: 80px;">
	<!-- nav -->
	<jsp:include page="content/nav.jsp"></jsp:include>
<script type="text/javascript">
$(document).ready(function() {
	var default_url ="homePro/ajax_recentcourse_list";
$("#tab-content > div").eq(0).load(default_url);
});
</script>
	<!-- content -->
	<div class="container">
		<div class="row">
			<div class="col-md-9 clearpadding">
				<ul class="nav nav-tabs">
					<li class="active"><a href="#home" data-toggle="tab">最近学习课程</a></li>
					<li><a href="#" data-toggle="tab">最近安排课程</a></li>
					<li><a href="#" data-toggle="tab">待参加考试</a></li>
					<li><a href="#" data-toggle="tab">待参与培训</a></li>
					<li><a href="#" data-toggle="tab">待参与问卷</a></li>
				</ul>
				<!-- Tab panes -->
				<div class="tab-content" id="tab-content" style="min-height: 260px;">
					<div id="tab0">...</div>
				</div>
				<div class="cls"></div>
				<ul class="nav nav-tabs" id="tab2">
					<li class="active"><a href="#home" data-toggle="tab">提醒消息</a></li>
					<li><a href="#" data-toggle="tab">部门信息</a></li>
					<li><a href="#" data-toggle="tab">公司信息</a></li>
					<li><a href="#" data-toggle="tab">系统公告</a></li>
				</ul>
				<!-- Tab panes -->
				<div class="tab-content" style="min-height: 260px;">
					<div id="tab20">...</div>
				</div>

				<ul class="nav nav-tabs" id="tab3">
					<li class="active"><a href="#home" data-toggle="tab">热门课程</a></li>
					<li><a href="#" data-toggle="tab">最新课程</a></li>
					<li><a href="#" data-toggle="tab">推荐培训</a></li>
				</ul>
				<!-- Tab panes -->
				<div class="tab-content" style="min-height: 260px;">
					<div id="tab30">...</div>
				</div>
			</div>
			<div class="col-md-3 clearpadding">
				<div class="panel panel-primary">
					<div class="panel-heading">Anonymous</div>
					<div class="panel-body">
						<table style="width: 100%">
							<tr>
								<td valign="top"><div style="padding-left: 0px;">
										<p>
											<span class="b">获得总学分：</span><span class="hei7">200</span>
										</p>
										<p>
											<span class="f14 b">当前等级：</span><span class="hei7"></span>
										</p>
										<p>
											<span class="f14 b">学习总时数：</span><span class="hei7">167.4</span>
										</p>
										<p>
											<span class="f14 b">登录总次数：</span><span class="hei7">14885</span>
										</p>
									</div></td>
								<td valign="top" align="right">
									<div style="float: right">
										<a href="#"><img class="img-rounded" width="84"
											height="95"
											src="http://lms.vision-info.com/lms_data/pro/storage/users_picture/422_530195487b2d1.jpg"
											alt="" /></a>
									</div>
								</td>
							</tr>
						</table>
						<div class="clearfix"></div>
						<ul class="nav nav-pills">
							<li class="dropdown"><a class="dropdown-toggle"
								style="background-color: #DFF0D8" data-toggle="dropdown"
								href="#"> <i class="icon-tasks"></i> 我的学习任务<span
									class="caret"></span> <span class="badge badge-important">5</span>
							</a>
								<ul class="dropdown-menu">
									<li><a href="#"><i class="icon-book"></i> 必修课程 <span
											class="my_task_num">0</span> </a><a href="#"><i
											class="icon-book"></i> 选修课程 <span class="my_task_num">3</span>
									</a></li>
									<li><a href="#"><i class="icon-edit"></i> 课程考试 <span
											class="my_task_num">0</span> </a><a href="#"><i
											class="icon-edit-sign"></i> 综合考试 <span class="my_task_num">2</span>
									</a></li>
									<li><a href="#"><i class="icon-user-md"></i> 面授培训 <span
											class="my_task_num">0</span> </a><a href="#"><i
											class="icon-file-text-alt"></i> 调查问卷 <span
											class="my_task_num">0</span> </a></li>
								</ul></li>
						</ul>
					</div>

				</div>
				<div class="panel panel-primary">
					<div class="panel-heading">
						<h3 class="panel-title">学分排行榜</h3>
					</div>
					<div class="panel-body">
						<ul class="list1">
							<li> Anonymous ( 200.0,&nbsp;Demo)</li>
							<li> 管理员 ( 30.0,&nbsp; )</li>
							<li> 王文芳 ( 20.0,&nbsp;人力资源部门 )</li>
							<li> 满忠政 ( 20.0,&nbsp;人力资源部门 )</li>
							<li>闪维 ( 10.0,&nbsp;Demo )</li>
							<li> 张闿 ( 10.0,&nbsp;人力资源部门 )</li>
							<li> 赵东海 ( 10.0,&nbsp;人力资源部门 )</li>
							<li> 赵 莹 ( 10.0,&nbsp;人力资源部门 )</li>
							<li>苗爱彬 ( 10.0,&nbsp;人力资源部门 )</li>
							<li>李甬 ( 10.0,&nbsp;人力资源部门 )</li>
						</ul>
					</div>
				</div>



				<div class="clearfix"></div>

			</div>
		</div>
	</div>


</body>
</html>