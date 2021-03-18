<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="${pageContext.request.contextPath }css/css.css" rel="stylesheet" type="text/css" />
<style>
	.login{
		float: right;
	}
	.login li{
		float: left;
		padding-left: 10px;
	}
	#top{
		border-bottom: 1px solid;
	}
</style>
<title>Insert title here</title>
</head>
<body>
<div id="top">
	<ul class="login">
		<li><a href="${pageContext.request.contextPath }/index.jsp">退出登录</a></li>
	</ul>
	<div class="top">
		<div class="top_herder clearfix">
			<a href="#"><img src="${pageContext.request.contextPath }/images/logo.png" /><span class="wenzi">专注于信息安全人才培养</span></a>
			<input name="" type="text" class="text_Searching" /><input name=""
				type="button" class="button_Search" />
		</div>
		<!--菜单栏样式-->
		<div class="">
			<ul id="nav" class="nav clearfix">
				<li class="nLi">
					<h3>
						<a href="#">首页</a><em></em>
					</h3>
				</li>
				<!-- <li class="nLi"><h3>
						<a href="#">关于我们</a>
					</h3>
					<em></em></li> -->
				<li class="nLi">
					<h3>
						<a href="#">新闻动态</a>
					</h3>
					<em></em>
					<ul class="sub">
						<em></em>
						<li><a href="#">学院动态</a></li>
						<li><a href="#">行业新闻</a></li>
					</ul>
				</li>
				<li class="nLi "><h3>
						<a href="#">师资力量</a>
					</h3>
					<em></em></li>
				<!-- <li class="nLi">
					<h3>
						<a href="#">精品课程</a>
					</h3>
					<em></em>
					<ul class="sub">
						<em></em>
						<li><a href="#">RATIONAL培训</a></li>
						<li><a href="#">信息安全培训</a></li>
					</ul>
				</li> -->
				<!-- <li class="nLi">
					<h3>
						<a href="#">合作伙伴</a>
					</h3>
					<em></em>
					<ul class="sub">
						<em></em>
						<li><a href="#">合作伙伴</a></li>
						<li><a href="#">合作案例</a></li>
					</ul>
				</li> -->
				<li class="nLi">
					<h3>
						<a href="#">我要报名</a>
					</h3>
					<em></em>
					<ul class="sub">
						<em></em>
						<li><a href="#">RATIONAL培训</a></li>
						<li><a href="#">信息安全培训</a></li>
					</ul>
				</li>
				<!-- <li class="nLi "><h3>
						<a href="#">联系我们</a>
					</h3>
					<em></em></li> -->
			</ul>
			</div>
		</div>
	</div>
</body>
</html>