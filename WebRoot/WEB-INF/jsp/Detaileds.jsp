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
<title>详细信息页</title>
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
					<div class="name">新闻动态</div>
					<span class="English">ONLINE REGISTRATION</span>
				</div>
				<!--内容-->
				<div class="info">
					<div class="Detailed_title">
						<div class="title1">信息产业就业形势</div>
						<div class="title2">作者：admin 来源：IBM教育 日期：2015-10-16 15:28:05</div>
					</div>
					<div class="details">
						10.12日成都市晶林教育咨询有限公司，陈驰老师给成都职业技术学院网络专业学生授讲信息产业就业形势课程，对当下信息安全行业的就业情况进行分析。
						成都市晶林教育咨询有限公司：晶林教育（成都市晶林教育咨询有限公司）致力于信息安全人才培养及输送。晶林教育专注于IT职业教育，与IBM、成都职业技术学院合作成立了西南地区首家IBM教育学院，旨在通过企业、大学的合作将学生培养成更具有竞争力的信息技术工作者。
						在信息安全上升到国家战略的今天，晶林教育联合国内信息安全领域一流的软硬件产品厂家建立联合实验室，助力于软硬件国产化推进，通过搭建国产自主可控服务平台，以联合实验室为依托建立实训基地培养信息安全人才。
						1、成都市晶林教育咨询有限公司专业从事信息安全 方向的教育服务平台。 2、合作厂商众多： IBM、阿里巴巴、 知道创宇、人大金仓、
						中国信息安全认证中心 。。。 3、为成都职业技术学院计算机网络专业设置了专业出口。
						成都市晶林教育咨询有限公司陈驰老师简介：成都市晶林教育咨询有限公司资深讲师，长期从事软件行业和信息安全行业的培训、研发和管理工作，熟悉IT职业教育的课程体系，擅长将IT职业技术课程与高校课程相结合，形成理论加实践的教学体系。
						陈驰老师就针对信息安全产业的就业形势和方向给同学们做了以下分析： 计算机网络专业的就业方向： 网络管理员 综合布线工程师
						计算机维修工程师、 网络维护工程师 系统管理员</div>
					<div class="news_link">
						<span class="left">上一篇<a href="#">信息安全专业介绍</a></span> <span
							class="right">下一篇<a href="#" class="Next">大数据分析应用与大数据信息安全讲座</a></span>
					</div>
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
						<li>
							<div class="pic">
								<a href=""><img src="images/xy-1.jpg" /></a>
							</div>
						</li>
						<li>
							<div class="pic">
								<a href=""><img src="images/xu-2.jpg" /></a>
							</div>
						</li>
						<li>
							<div class="pic">
								<a href=""><img src="images/xu-3.jpg" /></a>
							</div>
						</li>
						<li>
							<div class="pic">
								<a href=""><img src="images/xu-4.jpg" /></a>
							</div>
						</li>
						<li>
							<div class="pic">
								<a href=""><img src="images/xu-2.jpg" /></a>
							</div>
						</li>
						<li>
							<div class="pic">
								<a href=""><img src="images/xu-4.jpg" /></a>
							</div>
						</li>
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