<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="${pageContext.request.contextPath }/css/css.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath }/css/manager.css" />
<script type="text/javascript" src="${pageContext.request.contextPath }/js/time.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/js/jquery-1.3.2.js"></script>
<style type="text/css">
	.cen{
		display: flex; 
		justify-content: center; 
		align-items: center;
	}
</style>
<script type="text/javascript">
	$().ready(function () {
		$('#sub').click(function(){
			if($('#stitle').val() == "" || $('#scontext').val() == "" ){
				alert("请输入新闻标题或内容");
				return false;
			}else{
				var fm = document.getElementById("fm");
				fm.action = "${pageContext.request.contextPath }/rest/sdynamics/insertSdy";
			}
		});
    });
</script>
<title>后台管理</title>
</head>
<body>
	<%@include file="mheader.jsp" %>
	<div class="news_box">
		<%@include file="left.jsp" %>
		<div class="sty_dy_content">
			<div class="back_header">
				<h1>新闻动态</h1>
				<span id="news_time"></span>
				<span class="span_right">管理员:<input id="userName" value="${userName }"/></span> 
			</div>
			<div class="clear"></div>
			<form action="" id="fm" method="post">
				<input type="hidden" name="speople" value="${userName }">
				<div class="cen">
					<span>新闻标题:</span>
					<textarea id="stitle" name="stitle" class="sty_dy_title" placeholder="请输入新闻标题"></textarea>
				</div>
				<div class="cen">
					<span>新闻内容:</span>
					<textarea id="scontext" name="scontext" class="sty_dy_msg" placeholder="请输入新闻内容"></textarea>
				</div>
				<div class="clear"></div>
				<input id="sub" class="sty_dy_add" type="submit" value="添加" />
			</form>
		</div>
	</div>
	<%@include file="mfooter.jsp" %>
</body>
</html>