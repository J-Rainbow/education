<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="../../css/css.css" rel="stylesheet" type="text/css" />
<script src="../../js/jquery.SuperSlide.2.1.1.js" type="text/javascript"></script>
<script src="../../js/fk.js" type="text/javascript"></script>
<style>
	.login{
		float: right;
	}
	.login li{
		float: left;
		padding-left: 10px;
	}
	.login li a{
		
	}
</style>
<title>Insert title here</title>
</head>
<body>
	<div id="top" style="border-bottom: 2px solid #003d7b;">
	<ul class="login">
		<li><a href="${pageContext.request.contextPath }/rest/skip/goLogin">登录</a></li>
		<li><a href="${pageContext.request.contextPath }/rest/skip/goRegister">注册</a></li>
	</ul>
	<div class="top">
		<div class="top_herder clearfix">
			<a href="#"><img src="../../images/logo.png" /><span class="wenzi">专注于信息安全人才培养</span></a>
			<!-- <input name="" type="text" class="text_Searching" /><input name=""
				type="button" class="button_Search" /> -->
		</div>
		<!--菜单栏样式-->
		<div class="">
			<ul id="nav" class="nav clearfix">
				<li class="nLi">
					<h3>
						<a href="${pageContext.request.contextPath }/rest/skip/goIndex">首页</a><!-- <em></em> -->
					</h3>
				</li>
				<!-- <li class="nLi"><h3>
						page.jsp
						<a href="#">关于我们</a>
					</h3>
					<em></em></li> -->
				<li class="nLi">
					<h3>
						<!-- NEWS.jsp -->
						<a href="${pageContext.request.contextPath }/rest/sdynamics/goNews">新闻动态</a>
					</h3>
					<!-- <em></em> -->
					<!-- <ul class="sub">
						<em></em>
						<li><a href="#">学院动态</a></li>
						<li><a href="#">行业新闻</a></li>
					</ul> -->
				</li>
				<li class="nLi "><h3>
						<!-- Faculty_info.jsp -->
						<a href="${pageContext.request.contextPath }/rest/tone/goFaculty_info">师资力量</a>
					</h3>
					<!-- <em></em> --></li>
				<!-- <li class="nLi">
					<h3>
						Courses_IBM.jsp
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
						<!-- Sign_up.jsp -->
						<a href="${pageContext.request.contextPath }/rest/skip/goSignUp">我要报名</a>
					</h3>
					<!-- <em></em>
					<ul class="sub">
						<em></em>
						<li><a href="#">RATIONAL培训</a></li>
						<li><a href="#">信息安全培训</a></li>
					</ul> -->
				</li>
				<!-- <li class="nLi "><h3>
						contact_us.jsp
						<a href="#">联系我们</a>
					</h3>
					<em></em></li> -->
			</ul>
			<script id="jsID" type="text/javascript">
				jQuery("#nav").slide({
					type : "menu",// 效果类型，针对菜单/导航而引入的参数（默认slide）
					titCell : ".nLi", //鼠标触发对象
					targetCell : ".sub", //titCell里面包含的要显示/消失的对象
					effect : "slideDown", //targetCell下拉效果
					delayTime : 300, //效果时间
					triggerTime : 0, //鼠标延迟触发时间（默认150）
					returnDefault : true
				//鼠标移走后返回默认状态，例如默认频道是“预告片”，鼠标移走后会返回“预告片”（默认false）
				});
			</script>
			</div>
		</div>
	</div>
</body>
</html>