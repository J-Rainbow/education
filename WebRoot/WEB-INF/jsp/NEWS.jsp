<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
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
<style>
	.login{
		float: right;
	}
	.login li{
		float: left;
		padding-left: 10px;
	}
</style>
<title>新闻动态</title>
</head>

<body>
	<!-- 代码 开始 -->
	<%@include file="header.jsp" %>
	<!--广告样式-->
	<div class="AD_img" style="background:url(../images/page_AD_02.png) no-repeat; height:300px; background-position:center;"></div>
	<!--内页样式-->
	<div class="page clearfix">
		<div class="clearfix">
			
		</div>
		<div class="Content_styles clearfix margin_bottom">
			<div class="Section_About">
				<div class="title_name">
					<div class="name">新闻动态</div>
					<span class="English">NEWS</span>
				</div>
				<!--内容-->
				<div class="page_Section ">
					<ul>
						<!-- <li class="on" id="my_on"><a href='javascript:void(0)'>学院动态</a></li> -->
						<!-- <li class="on_two" id="my_on_two"><a href='javascript:void(0)'>行业新闻</a></li> -->
					</ul>
				</div>
				<div class="info" id="my_info">
					<c:forEach var="sdy" items="${sdy }">
						<ul class="news_list">
							<li>
								<em>◆</em>
								<a href="${pageContext.request.contextPath }/rest/sdynamics/goNewsMsg/${sdy.sid }">${sdy.stitle }</a>
								<span class="time">
									<fmt:formatDate value="${sdy.stime }" pattern="yyyy-MM-dd"/>
								</span>
							</li>
						</ul>
					</c:forEach>
					<div id="pagenation" class="pagenation_case" style="float: right;">
						<div class="pagePrev_case">
							<a class="prevHide_case" href="${pageContext.request.contextPath }/rest/sdynamics/goNews?pageNum=${info.pageNum-1}"></a>
						</div>
						<div class="pageNext_case">
							<a class="nextShow_case" href="${pageContext.request.contextPath }/rest/sdynamics/goNews?pageNum=${info.pageNum+1}"></a>
						</div>
						<%-- <div class="pageCaseBottom"><span class="grayTitle">共${info.pageNum }页</span></div> --%>
					</div>
				</div>
				<%-- <div class="info_two" id="my_info_two" style="display: none;">
					<c:forEach var="tnews" items="${tnews }">
						<ul class="news_list_two">
							<li>
								<em>◆</em>
								<a href="${pageContext.request.contextPath }/rest/tnews/goNewsMsg/${tnews.tid }">${tnews.ttitle }</a>
								<span class="time">
									<fmt:formatDate value="${tnews.ttime }" pattern="yyyy-MM-dd"/>
								</span>
							</li>
						</ul>
					</c:forEach>
					<div id="pagenation" class="pagenation_case" style="float: right;">
						<div class="pagePrev_case">
							<a class="prevHide_case" href="${pageContext.request.contextPath }/rest/tnews/goNews?pageNum=${info.pageNum-1}"></a>
						</div>
						<div class="pageNext_case">
							<a class="nextShow_case" href="${pageContext.request.contextPath }/rest/tnews/goNews?pageNum=${info.pageNum+1}"></a>
						</div>
						<div class="pageCaseBottom"><span class="grayTitle">共${info.pageNum }页</span></div>
					</div>
				</div> --%>
			</div>
		</div>
	</div>
	<!--合作企业样式-->
	<div class="Cooperate">
		<div class="main">
			<div id="Cooperate_logo" class="Cooperate_logo">
				<div class="hd">
					<a class="next">&lt;</a>
					<a class="prev">&gt;</a>
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
					mainCell: ".bd ul",
					effect: "leftLoop",
					vis: 5,
					autoPlay: false
				});
			</script>
		</div>
	</div>
	<!--底部样式-->
	<%@include file="footer.jsp" %>
</body>
</html>