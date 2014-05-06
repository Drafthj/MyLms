<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<div class="navbar navbar-inverse navbar-fixed-top">
		<div class="container">
			<a class="navbar-brand" href="#"><img height="auto"
				src="resources/images/logo1.png"></a>
			<div class="collapse navbar-collapse">
				<ul class="nav navbar-nav pull-left">
					<li class="active"><a href="#">首页</a></li>
					<li class="dropdown"><a href="#" class="dropdown-toggle"
						data-hover="dropdown" data-toggle="dropdown">选课<strong
							class="caret"></strong></a>
						<ul class="dropdown-menu">
							<li><a href="#">在线课程选课与报名</a></li>
							<li><a href="#">我的岗位必修课程</a></li>
							<li><a href="#">在线课程选课与报名</a></li>
						</ul></li>
					<li class="dropdown "><a data-toggle="dropdown"
						data-hover="dropdown" class="dropdown-toggle">学习<strong
							class="caret"></strong></a>
						<ul class="dropdown-menu">
							<li><a href="#">我需要参与的在线学习项目</a></li>
							<li class="divider"></li>
							<li><a href="#">我正在学习的课程</a></li>
							<li><a href="#">我已完成的在线课程</a></li>
							<li><a href="#">我已过期的在线课程</a></li>
							<li class="divider"></li>
							<li><a href="#">我需参加的面授培训</a></li>
						</ul></li>

					<li class="dropdown "><a data-toggle="dropdown"
						data-hover="dropdown" class="dropdown-toggle" href="#">考试<strong
							class="caret"></strong></a>
						<ul class="dropdown-menu">
							<li><a href="#">我的综合考试</a></li>
							<li><a href="#">我的课程考试</a></li>
							<li><a href="#">我的过关竞赛</a></li>
							<li><a href="#">我的模拟测验</a></li>
							<li class="divider"></li>
							<li><a href="#">正式考试报名</a></li>
							<li><a href="#">模拟考试题库</a></li>
						</ul></li>


					<li class="dropdown "><a data-toggle="dropdown"
						data-hover="dropdown" class="dropdown-toggle" href="#">问卷<strong
							class="caret"></strong></a>
						<ul class="dropdown-menu">
							<li><a href="#">我需参与的问卷</a></li>
							<li><a href="#">我的在线课程问卷</a></li>
							<li><a href="#">我的面授培训问卷</a></li>
							<li><a href="#">我已参与的问卷</a></li>
						</ul></li>
					<li class="dropdown "><a data-toggle="dropdown"
						data-hover="dropdown" class="dropdown-toggle" href="#">评估<strong
							class="caret"></strong></a>
						<ul class="dropdown-menu">
							<li><a href="#">我需要参与的360评估</a></li>
							<li><a href="#">我已参与的360评估</a></li>
						</ul></li>
					<li class="dropdown "><a data-toggle="dropdown"
						data-hover="dropdown" class="dropdown-toggle" href="#">档案<strong
							class="caret"></strong></a>
						<ul class="dropdown-menu">
							<li><a href="#">我的课程学习档案</a></li>
							<li><a href="#">我的在线考试档案</a></li>
							<li><a href="#">我的面授培训档案</a></li>
							<li><a href="#">我的学分档案</a></li>
							<li><a href="#">我的错题回顾</a></li>
						</ul></li>

					<li class="dropdown "><a data-toggle="dropdown"
						data-hover="dropdown" class="dropdown-toggle" href="#">知识<strong
							class="caret"></strong></a>
						<ul class="dropdown-menu">
							<li><a href="#">知识中心</a></li>
						</ul></li>

					<li class="dropdown "><a data-toggle="dropdown"
						data-hover="dropdown" class="dropdown-toggle" href="#">资讯<strong
							class="caret"></strong></a>
						<ul class="dropdown-menu">
							<li><a href="#">系统公告</a></li>
							<li><a href="#">课程公告</a></li>
							<li><a href="#">公司信息</a></li>
							<li><a href="#">部门信息</a></li>
						</ul></li>
					<li class="dropdown "><a data-toggle="dropdown"
						data-hover="dropdown" class="dropdown-toggle"
						href="/pro/?c=Home.InfoCenter&m=my_alert_sms_list">我的<strong
							class="caret"></strong><span class="badge badge-important"
							id="msg_unread" style="position: absolute; top: 8px;">0</span></a>
						<ul class="dropdown-menu">

							<li><a href="#"><i class="icon-envelope-alt"></i> 提醒消息 <span
									id="#" class="badge badge-important">0</span></a></li>
							<li><a href="#"><i class="icon-envelope"></i> 站内私信 <span
									id="inbox_unread" class="badge badge-important">0</span></a></li>

							<li class="divider"></li>
							<li><a href="#"><i class="icon-heart"></i> 我的收藏</a></li>

							<li><a href="#"><i class="icon-heart"></i> 我的错题集</a></li>
							<li><a href="#"><i class="icon-desktop"></i> 报名申请</a></li>
							<li class="divider"></li>

							<li><a href="#"><i class="icon-user"></i> 个人资料</a></li>
							<li><a href="#"><i class="icon-picture"></i> 修改头像</a></li>
							<li><a href="#"><i class="icon-random"></i> 修改密码</a></li>


							<li class="divider"></li>

							<li><a href="javascript:;"
								onclick="javascript:dialog_open('/pro/?c=Index&m=help','帮助','550px','800px');"><i
									class="icon-list"></i> 帮助</a></li>
							<li class="divider"></li>
							<li><a id="confirmExit" href="javascript:;"><i
									class="icon-power-off"></i> 退出</a></li>

						</ul></li>
				</ul>
			</div>
		</div>
	</div>
</body>
</html>