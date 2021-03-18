<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="../css/css.css" rel="stylesheet" type="text/css" />
<script src="../js/jquery.min.1.8.2.js" type="text/javascript"></script>
<script src="../js/jquery.SuperSlide.2.1.1.js" type="text/javascript"></script>
<script src="../js/fk.js" type="text/javascript"></script>
<title>晶林科技网站首页</title>
</head>
<body>
	<!-- 引入头部 -->
	<jsp:include page="header.jsp"></jsp:include>
	<!--幻灯片-->
	<div class="banner">
		<div class="Slide">
			<div id="slideBox" class="slideBox">
				<div class="hd">
					<ul></ul>
				</div>
				<div class="bd">
					<ul>
						<li><a href="#"><div
									style="background: url(../images/bananer.png) no-repeat; background-position: center; height: 490px"></div></a></li>
						<li><a href="#"><div
									style="background: url(../images/banner1.jpg) no-repeat; background-position: center; height: 490px"></div></a></li>
						<li><a href="#"><div
									style="background: url(../images/bananer.png) no-repeat; background-position: center; height: 490px"></div></a></li>
						<li><a href="#"><div
									style="background: url(../images/bananer.png) no-repeat; background-position: center; height: 490px"></div></a></li>
						<li><a href="#"><div
									style="background: url(../images/bananer.png) no-repeat; background-position: center; height: 490px"></div></a></li>
					</ul>
				</div>
				<a class="prev" href="javascript:void(0)"></a> <a class="next"
					href="javascript:void(0)"></a>
			</div>
			<script type="text/javascript">
				jQuery(".slideBox").slide({
					titCell : ".hd ul",
					mainCell : ".bd ul",
					effect : "leftLoop",
					autoPlay : true,
					autoPage : true,
					triggerTime : 1000,
					interTime : 5000
				});
			</script>
		</div>
	</div>
	<!--内容样式-->
	<div class="main">
		<!--栏目样式-->
		<div class="Section_style">
			<ul>
				<li class="Section_list">
					<div class="Section_img">
						<a href="Courses_IBM.jsp"><img src="../images/pd_img_23.png" /></a>
					</div>
					<div class="title">
						<a href="Courses_IBM.jsp">IBM教育学院</a>
					</div>
					<div class="link_name">
						<a href="#">服务简介</a> <a href="#">信息安全技术与意识培训</a> <a href="#">信息安全技术与意识培训</a>
						<a href="#">信息安全技术与意识培训</a>
					</div>
				</li>
				<li class="Section_list">
					<div class="Section_img">
						<a href="Courses_xinxianquan.jsp"><img
							src="../images/pd_img_26.png" /></a>
					</div>
					<div class="title">
						<a href="Courses_xinxianquan.jsp">信息安全学院</a>
					</div>
					<div class="link_name">
						<a href="#">服务简介</a> <a href="#">信息安全技术与意识培训</a> <a href="#">信息安全技术与意识培训</a>
						<a href="#">信息安全技术与意识培训</a>
					</div>
				</li>
				<li class="Section_list">
					<div class="Section_img">
						<a href="Courses_yunaqfw.jsp"><img src="../images/pd_img_20.png" /></a>
					</div>
					<div class="title">
						<a href="Courses_yunaqfw.jsp">云安全服务</a>
					</div>
					<div class="link_name">
						<a href="#">服务简介</a> <a href="#">信息安全技术与意识培训</a> <a href="#">信息安全技术与意识培训</a>
						<a href="#">信息安全技术与意识培训</a>
					</div>
				</li>
				<li class="Section_list Spacing">
					<div class="Section_img">
						<a href="Courses_xxaqpx.jsp"><img src="../images/pd_img_17.png" /></a>
					</div>
					<div class="title">
						<a href="Courses_xxaqpx.jsp">信息安全培训认证</a>
					</div>
					<div class="link_name">
						<a href="#">服务简介</a> <a href="#">信息安全技术与意识培训</a> <a href="#">信息安全技术与意识培训</a>
						<a href="#">信息安全技术与意识培训</a>
					</div>
				</li>

			</ul>
		</div>
		<!--新闻样式-->
		<div class="MEWS_style Plate">
			<div class="title_name">
				新闻动态<b>NEWS</b> <a href="#" class="more">MORE</a>
			</div>
			<div class="clearfix">
				<div id="Mews_slideBox" class="Mews_slideBox">
					<div class="hd">
						<ul>
							<li>1</li>
							<li>2</li>
							<li>3</li>
						</ul>
					</div>
					<div class="bd">
						<ul>
							<li>
								<div class="bg"></div>
								<div>
									<a href="#"><img src="../images/AD_1.png" /></a>
								</div>
								<div class="title">
									<a href="">效果图1</a>
								</div>
							</li>
							<li>
								<div class="bg"></div>
								<div>
									<a href="#"><img src="../images/AD-2.png" /></a>
								</div>
								<div class="title">
									<a href="">效果图2</a>
								</div>
							</li>
							<li>
								<div class="bg"></div>
								<div>
									<a href="#"><img src="../images/AD-2.png" /></a>
								</div>
								<div class="title">
									<a href="">效果图3</a>
								</div>
							</li>
						</ul>
					</div>

					<!-- 下面是前/后按钮代码，如果不需要删除即可 -->
					<a class="prev" href="javascript:void(0)"></a> <a class="next"
						href="javascript:void(0)"></a>

				</div>

				<script type="text/javascript">
					jQuery(".Mews_slideBox").slide({
						mainCell : ".bd ul",
						autoPlay : true
					});
				</script>
				<!--新闻列表-->
				<div class="News_list">
					<ul>
						<li><a href="#">信息安全专业介绍</a><span>2015-10-11</span></li>
						<li><a href="#">大数据分析应用与大数据信息安全讲座</a><span>2015-10-11</span></li>
						<li><a href="#">成都市晶林科技有限公司--三江漂流</a><span>2015-10-11</span></li>
						<li><a href="#">推进教育综合改革，我省决定在部分地区和学校开展试点。</a><span>2015-10-11</span></li>
						<li><a href="#">深耕大数据，神州数码与 IBM 携手共建解决方案演示中心</a><span>2015-10-11</span></li>
						<li><a href="#">协作共赢 IBM 助力北方区合作伙伴创新</a><span>2015-10-11</span></li>
						<li><a href="#">协作共赢 IBM 助力北方区合作伙伴创新</a><span>2015-10-11</span></li>
						<li><a href="#">协作共赢 IBM 助力北方区合作伙伴创新</a><span>2015-10-11</span></li>
					</ul>
				</div>
			</div>
		</div>
		<!--学院风采-->
		<div class="School_Charisma Plate">
			<div class="title_name">
				学院风采<b>COLLEGE CHARISMA</b> <a href="#" class="more">MORE</a>
			</div>
			<div id="Collect_Products" class="Collect_Products">
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
				jQuery("#Collect_Products").slide({
					mainCell : ".bd ul",
					effect : "leftLoop",
					vis : 4,
					autoPlay : false
				});
			</script>
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