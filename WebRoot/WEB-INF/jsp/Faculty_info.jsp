<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="../css/css.css" rel="stylesheet" type="text/css" />
<link href="../css/page.css" rel="stylesheet" type="text/css" />
<script src="../js/jquery.min.1.8.2.js" type="text/javascript"></script>
<script src="../js/jquery.SuperSlide.2.1.1.js" type="text/javascript"></script>
<script src="../js/fk.js" type="text/javascript"></script>
<title>师资力量</title>
</head>

<body>
	<%@include file="header.jsp" %>
	<!--广告样式-->
	<div class="AD_img"
		style="background: url(../images/page_AD_02.png) no-repeat; height: 300px; background-position: center;"></div>
	<!--内页样式-->
	<div class="page clearfix">
		<div class="clearfix">
			
		</div>
		<div class="Content_styles clearfix margin_bottom">
			<div class="Section_About">
				<div class="title_name">
					<div class="name">信息安全教师团队</div>
					<h4 class="English">INFORMATION SECURITY TEACHING TEAM</h4>
				</div>
				<!--内容-->
				<div class="info">
					<div id="faculty_list" class="faculty_list">
						<div class="hd">
							<a class="next">&lt;</a> <a class="prev">&gt;</a>
						</div>
						<div class="bd">
							<ul class="Teacher_list">
								<c:forEach var="tone" items="${tone }">
									<li class="faculty_info">
										<div class="img">
											<img src="${pageContext.request.contextPath }/upload/${tone.tphoto }" />
										</div>
										<div class="Teacher_Profile">
											<p class="name">${tone.tname }</p>
											<p class="t_about">${tone.tsuggest }</p>
										</div>
									</li>
								</c:forEach>
							</ul>
						</div>
					</div>
					<script type="text/javascript">
						jQuery("#faculty_list").slide({
							mainCell : ".bd ul",
							effect : "leftLoop",
							vis : 4,
							autoPlay : false
						});
					</script>
				</div>
			</div>
		</div>
		<div class="Content_styles clearfix margin_bottom">
			<div class="Section_About">
				<div class="title_name">
					<div class="name">RATIONAL 教师团队</div>
					<h4 class="English">RATIONAL TEACHING TEAM</h4>
				</div>
				<!--内容-->
				<div class="info">
					<div id="faculty_lists" class="faculty_list">
						<div class="hd">
							<a class="next">&lt;</a> <a class="prev">&gt;</a>
						</div>
						<div class="bd">
							<ul class="Teacher_list">
								<c:forEach var="ttwo" items="${ttwo }">
									<li class="faculty_info">
										<div class="img">
											<img src="${pageContext.request.contextPath }/upload/${ttwo.rphoto }" />
										</div>
										<div class="Teacher_Profile">
											<p class="name">${ttwo.rname }</p>
											<p class="t_about">${ttwo.rsuggest }</p>
										</div>
									</li>
								</c:forEach>
							</ul>
						</div>
					</div>
					<script type="text/javascript">
						jQuery("#faculty_lists").slide({
							mainCell : ".bd ul",
							effect : "leftLoop",
							vis : 4,
							autoPlay : false
						});
					</script>
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
								<a href=""><img src="../images/xy-1.jpg" /></a>
							</div>
						</li>
						<li>
							<div class="pic">
								<a href=""><img src="../images/xu-2.jpg" /></a>
							</div>
						</li>
						<li>
							<div class="pic">
								<a href=""><img src="../images/xu-3.jpg" /></a>
							</div>
						</li>
						<li>
							<div class="pic">
								<a href=""><img src="../images/xu-4.jpg" /></a>
							</div>
						</li>
						<li>
							<div class="pic">
								<a href=""><img src="../images/xu-2.jpg" /></a>
							</div>
						</li>
						<li>
							<div class="pic">
								<a href=""><img src="../images/xu-4.jpg" /></a>
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
	<%@include file="footer.jsp" %>
</body>

</html>