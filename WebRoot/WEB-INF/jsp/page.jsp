<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="../../css/css.css" rel="stylesheet" type="text/css" />
<link href="../../css/page.css" rel="stylesheet" type="text/css" />
<script src="../../js/jquery.min.1.8.2.js" type="text/javascript"></script>
<script src="../../js/jquery.SuperSlide.2.1.1.js" type="text/javascript"></script>
<script src="../../js/news.js" type="text/javascript"></script>
<script src="../../js/jquery-1.3.2.js" type="text/javascript"></script>
<title>无标题文档</title>
</head>

<body>
	<!-- 代码 开始 -->
	<!-- 引入头部 -->
	<jsp:include page="header.jsp"></jsp:include>
	<!--广告样式-->
	<div class="AD_img"
		style="background: url(../images/page_AD_02.png) no-repeat; height: 300px; background-position: center;"></div>
	<!--内页样式-->
	<div class="page clearfix">
		<div class="clearfix">
			<ul class="web_way">
				<li class="button_way"></li>
				<li>您现在的位置：</li>
				<li><a href="/">首页</a></li>
				<li>&gt;</li>
				<li><a href="/Home/Video">视频中心</a></li>
				<li>&gt;</li>
				<li><a href="#">系统培训</a></li>
			</ul>
		</div>
		<div class="Content_styles clearfix margin_bottom">
			<div class="Section_About">
				<div class="title_name">
					<div class="name">关于我们</div>
					<span class="English">ABOUTB US</span>
				</div>
				<!--内容-->
				<div class="info">
					信息，指音讯、消息、通讯系统传输和处理的对象，泛指人类社会传播的一切内容。人通过获得、识别自然界和社会的不同信息来区别不同事物，得以认识和改造世界。在一切通讯和控制系统中，信息是一种普遍联系的形式。1948年，数学家香农在题为"通讯的数学理论"的论文中指出:"信息是用来消除随机不定性的东西"。创建一切宇宙万物的最基本万能单位是信息。

				</div>
			</div>
		</div>
	</div>
	<!--合作企业样式-->
	<div class="Cooperate">
		<div class="main">
			<div id="Cooperate_logo" class="Cooperate_logo">
				<div class="hd">
					<a class="next">&lt;</a> <a class="prev">&gt;</a>
				</div>
				<div class="bd">
					<ul class="picList">
						<li><div class="pic">
								<a href=""><img src="../images/xy-1.jpg" /></a>
							</div></li>
						<li><div class="pic">
								<a href=""><img src="../images/xu-2.jpg" /></a>
							</div></li>
						<li><div class="pic">
								<a href=""><img src="../images/xu-3.jpg" /></a>
							</div></li>
						<li><div class="pic">
								<a href=""><img src="../images/xu-4.jpg" /></a>
							</div></li>
						<li><div class="pic">
								<a href=""><img src="../images/xu-2.jpg" /></a>
							</div></li>
						<li><div class="pic">
								<a href=""><img src="../images/xu-4.jpg" /></a>
							</div></li>
					</ul>
				</div>
			</div>
			<script type="text/javascript">
				jQuery("#Cooperate_logo").slide({
					mainCell : ".bd ul",
					effect : "leftLoop",
					vis : 5,
					autoPlay : false
				});
			</script>
		</div>
	</div>
	<!-- 引入底部 -->
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>
