<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="../css/css.css" />
<title>Insert title here</title>
<style type="text/css">
h6{
	padding-left: 5px; 
}
</style>
</head>
<body>
	<div class="left_box">
		<div class="left_news_top">
			<h6 class="news_adv">用户管理</h6>
			<ul>
				<li style="padding: 5px;">
					<a href="${pageContext.request.contextPath }/rest/user/goUser_list">用户信息</a>
				</li>
			</ul>
			<h6 class="news_adv">我要报名</h6>
			<ul>
				<li style="padding: 5px;">
					<a href="${pageContext.request.contextPath }/rest/enroll/goEnroll_list">报名信息</a>
				</li>
			</ul>
			<h6 class="news_adv">新闻动态</h6>
			<ul>
				<li style="padding: 5px;">
					<a href="${pageContext.request.contextPath }/rest/sdynamics/goSdy_list">新闻动态</a>
					<a href="${pageContext.request.contextPath }/rest/sdynamics/goSdyAdd" style="float: right;">添加</a>
				</li>
				<%-- <li style="padding: 5px;">
					<a href="${pageContext.request.contextPath }/rest/tnews/goTnews_list">行业新闻</a>
					<a href="${pageContext.request.contextPath }/rest/tnews/goTnewsAdd" style="float: right;">添加</a>
				</li> --%>
			</ul>
			<h6 class="news_adv">师资力量</h6>
			<ul>
				<li style="padding: 5px;">
					<a href="${pageContext.request.contextPath }/rest/tone/goTone_list">信息安全教师团队</a>
					<a href="${pageContext.request.contextPath }/rest/tone/goToneAdd" style="float: right;">添加</a>
				</li>
				<li style="padding: 5px;">
					<a href="${pageContext.request.contextPath }/rest/ttwo/goTwo_list">RATIONAL 教师团队</a>
					<a href="${pageContext.request.contextPath }/rest/ttwo/goTwoAdd" style="float: right;">添加</a>
				</li>
			</ul>
		</div>
	</div>
</body>
</html>