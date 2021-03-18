<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="css/css.css" rel="stylesheet" type="text/css" />
<link href="css/page.css" rel="stylesheet" type="text/css" />
<script src="js/jquery.min.1.8.2.js" type="text/javascript"></script>
<script src="js/jquery.SuperSlide.2.1.1.js" type="text/javascript"></script>
<script src="js/fk.js" type="text/javascript"></script>
<title>联系我们</title>
</head>
<body>
	<!-- 代码 开始 -->
	<div id="online_qq_layer">
		<div id="online_qq_tab">
			<div class="online_icon">
				<a title="" id="floatShow" style="display: none"
					href="javascript:void(0);">&nbsp;</a> <a title="" id="floatHide"
					style="display: block" href="javascript:void(0);">&nbsp;</a>
			</div>
		</div>
		<div id="onlineService" style="display: block;">
			<div class="online_windows overz">
				<div class="online_w_top"></div>
				<div class="online_w_c overz">
					<div id="online_qq">
						<ul class="qq_ul fn-clear">
							<li class="kfli" onclick="openQQ('799129700')"><img
								src="images/Line_qq.png" border="0" /> 业务咨询</li>
							<li class="kfli" onclick="openQQ('363576965')"><img
								src="images/Line_qq.png" border="0" /> 业务咨询</li>
							<li class="kfli" onclick="openQQ('2193744200')"><img
								src="images/Line_qq.png" border="0" /> 客服服务</li>
							<li class="kfli" onclick="openQQ('1315797152')"><img
								src="images/Line_qq.png" border="0" /> 投诉建议</li>
						</ul>
					</div>
					<div class="phone_Advisory">
						<p class="phone_img"></p>
						<p class="Number">4000-028-020</p>
						<p>
							<img src="images/QQ_weixin.png" />
						</p>
					</div>
				</div>
				<div class="online_w_bottom"></div>
			</div>
		</div>
	</div>

	<script>
		var online = new Array();
	</script>
	<script type="text/javascript"
		src="http://webpresence.qq.com/getonline?Type=1&799129700:363576965:2193744200:1315797152"></script>
	<script type="text/javascript">
		for (var i = 0; i < online.length; i++) {
			if (online[i] == 0) {
				$(".kfli img").eq(i).attr("src", "images/not_qq.png");
			} else {
				$(".kfli img").eq(i).attr("src", 'images/Line_qq.png');
			}
		}

		window.onscroll = function() {
			if (document.documentElement.scrollTop + document.body.scrollTop > 100) {
				document.getElementById("scrollto").style.display = "block";
			} else {
				document.getElementById("scrollto").style.display = "none";
			}
		}
		function OpenSmallWindows(strURL, scrollbar, width, height, left, top) {
			window.open(strURL, "_blank",
					"status=no,resizable=0,toolbar=no,menubar=no,scrollbars="
							+ scrollbar + ",width=" + width + ",height="
							+ height + ",left=" + left + ",top=" + top + "");
		}
		function openQQ(qq) {
			window.location.href = "tencent://message/?uin=" + qq
					+ "&Site=gbgjs.com&Menu=yes";
		}
	</script>
	<!-- 引入头部 -->
	<jsp:include page="header.jsp"></jsp:include>
	<!--广告样式-->
	<div class="AD_img"
		style="background: url(images/page_AD_02.png) no-repeat; height: 300px; background-position: center;"></div>
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
					<div class="name">联系我们</div>
					<span class="English">CONTACT US</span>
				</div>
				<!--内容-->
				<div class="info">
					<div class="contact">
						<ul>
							<li class="Company_name">成都市晶林科技有限公司</li>
							<li>地址：成都市高新区益州大道北段15号（成职软件园10层）</li>
							<li>TEL ：028-85246429</li>
							<li>邮编：610041</li>
							<li>网址：www.ibmec.cn</li>
						</ul>
					</div>
					<iframe marginheight="0" src="map.jsp" tppabs="" marginwidth="0"
						scrolling="no" frameborder="0" height="552" width="1000"></iframe>
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
								<a href=""><img src="images/xy-1.jpg" /></a>
							</div></li>
						<li><div class="pic">
								<a href=""><img src="images/xu-2.jpg" /></a>
							</div></li>
						<li><div class="pic">
								<a href=""><img src="images/xu-3.jpg" /></a>
							</div></li>
						<li><div class="pic">
								<a href=""><img src="images/xu-4.jpg" /></a>
							</div></li>
						<li><div class="pic">
								<a href=""><img src="images/xu-2.jpg" /></a>
							</div></li>
						<li><div class="pic">
								<a href=""><img src="images/xu-4.jpg" /></a>
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

