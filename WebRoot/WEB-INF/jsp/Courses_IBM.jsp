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
<title>信息安全学院</title>
</head>
<body>
	<!-- 代码 开始 -->
	<!-- <div id="online_qq_layer">
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
	</script> -->
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
	<!--信息安全学院样式-->
	<div class="page">
		<!--课程介绍图层-->
		<div class="Section_About clearfix">
			<div class="title_name">
				<div class="name">课程体系</div>
				<span class="English">COURSE SYSTEM</span>
			</div>
			<div class="info">
				<p>信息安全主要包括以下五方面的内容，即需保证信息的保密性、真实性、完整性、未授权拷贝和所寄生系统的安全性。信息安全本身包括的范围很大，其中包括如何防范商业企业机密泄露、防范青少年对不良信息的浏览、个人信息的泄露等。网络环境下的信息安全体系是保证信息安全的关键，包括计算机安全操作系统、各种安全协议、安全机制(数字签名、消息认证、数据加密等)，直至安全系统，如UniNAC、DLP等，只要存在安全漏洞便可以威胁全局安全。信息安全是指信息系统(包括硬件、软件、数据、人、物理环境及其基础设施)受到保护，不受偶然的或者恶意的原因而遭到破坏、更改、泄露，系统连续可靠正常地运行，信息服务不中断，最终实现业务连续性。</p>
				<p>信息安全学科可分为狭义安全与广义安全两个层次，狭义的安全是建立在以密码论为基础的计算机安全领域，早期中国信息安全专业通常以此为基准，辅以计算机技术、通信网络技术与编程等方面的内容;广义的信息安全是一门综合性学科，从传统的计算机安全到信息安全，不但是名称的变更也是对安全发展的延伸，安全不在是单纯的技术问题，而是将管理、技术、法律等问题相结合的产物。本专业培养能够从事计算机、通信、电子商务、电子政务、电子金融等领域的信息安全高级专门人才。</p>
				<a href="#" class="Detailed">详细</a>
			</div>
		</div>
	</div>
	<!--实训基地-->
	<Div class="Section_Contents clearfix">
		<div class="page Section_About">
			<div class="heading center heading-border heading_relative ">
				<h4 class="heading-primary Gray">就业提升</h4>
			</div>
			<div class="info"></div>
		</div>
	</Div>

	<div class="page">
		<!--师资介绍-->
		<div class="Section_About clearfix">
			<div class="Curriculum_title">
				<span>课程安排</span> <a href="#">MORE+</a>
			</div>
			<div class="info">
				<!--课程安排内容-->
			</div>
		</div>
	</div>
	<div class="page">
		<div class="Section_About clearfix margin_bottom">
			<div class="title_name">
				<div class="name">师资力量</div>
				<span class="English">FACULTY</span>
			</div>
			<div class="info clearfix">
				<ul>
					<li class="Profile_Photos">
						<div class="Teacher">
							<p class="img">
								<a href="#"><img src="../images/tx_img.jpg" /></a>
							</p>
							<p class="Teacher_name">教师名称</p>
							<p class="Teacher_Profile">教师名称将在</p>
						</div>
					</li>
					<li class="Profile_Photos">
						<div class="Teacher">
							<p class="img">
								<a href="#"><img src="../images/tx_img.jpg" /></a>
							</p>
							<p class="Teacher_name">教师名称</p>
							<p class="Teacher_Profile">教师名称将在</p>
						</div>
					</li>
					<li class="Profile_Photos">
						<div class="Teacher">
							<p class="img">
								<a href="#"><img src="../images/tx_img.jpg" /></a>
							</p>
							<p class="Teacher_name">教师名称</p>
							<p class="Teacher_Profile">教师名称将在</p>
						</div>
					</li>
					<li class="Profile_Photos">
						<div class="Teacher">
							<p class="img">
								<a href="#"><img src="../images/tx_img.jpg" /></a>
							</p>
							<p class="Teacher_name">教师名称</p>
							<p class="Teacher_Profile">教师名称将在</p>
						</div>
					</li>
				</ul>
			</div>
			<a href="#" class="more">更多>></a>
		</div>
	</div>
	<!--报名样式-->
	<div class="page">
		<div class="Sign_up clearfix margin_bottom">
			<div class="left_Sign_up left">
				<p class="Introduction">如果你对我们的课程感兴趣，喜欢我的课程，欢迎广大的求学之子前来报名，我们将在收到你的报名表后联系你。</p>
				<p class="Curriculum_name">《信息安全学院》、《信息安全学院》</p>
			</div>
			<div class="right_Sign_up right">
				<a href="#" class="Sign_up_btn">我要报名</a>
			</div>
		</div>
	</div>
	<!-- 引入底部 -->
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>

