<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="${pageContext.request.contextPath }/css/css.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath }/css/manager.css" />
<script type="text/javascript" src="${pageContext.request.contextPath }/js/time.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/js/jquery-1.3.2.js"></script>
<title>后台管理</title>
<style type="text/css">
span{
	padding-right: 8px;
}
.cen{
	display: flex; 
	align-items: center;
	padding-bottom: 10px;
}
</style>
<script type="text/javascript">
	$().ready(function () {
		$('#sub').click(function(){
			if($('#rname').val() == "" || $('#rsuggest').val() == "" ){
				alert("请输入教师名称或简介");
				return false;
			}else{
				var fm = document.getElementById("fm");
				fm.action = "${pageContext.request.contextPath }/rest/ttwo/updateTtwo";
			}
		});
    });
</script>
</head>
<body>
	<%@include file="mheader.jsp" %>
	<div class="news_box">
		<%@include file="left.jsp" %>
		<div class="sty_dy_content">
			<div class="back_header">
				<h1>RATIONAL 教师团队</h1>
				<span id="news_time"></span>
				<span class="span_right">管理员:<input id="userName" value="${userName }"/></span> 
			</div>
			<div class="clear"></div>
			<form action="" method="post" id="fm"  enctype="multipart/form-data">
				<c:forEach var="ttwo" items="${ttwo }">
					<input type="hidden" name="rid" value="${ttwo.rid }">
					<input type="hidden" name="rpeople" value="${userName }">
					<input type="hidden" name="rphoto" value="${ttwo.rphoto }">
					<div class="cen">
						<span>教师名称:</span>
						<input name="rname" id="rname" class="sty_dy_title" placeholder="请输入教师名称" value="${ttwo.rname }"></input>
					</div>
					<div class="cen">
						<span>选择照片:</span>
						<img id="images" alt="" src="${pageContext.request.contextPath }/upload/${ttwo.rphoto }" width="40px" height="40px">
						<input type="file" name="file" style="padding-left: 10px">
					</div>
					<div class="cen">
						<span>教师简介:</span>
						<textarea name="rsuggest" id="rsuggest" class="sty_dy_msg" placeholder="请输入教师简介">${ttwo.rsuggest }</textarea>
					</div>
				</c:forEach>
				<div class="clear"></div>
				<input id="sub" class="sty_dy_add" type="submit" value="修改" />
			</form>
		</div>
	</div>
	<%@include file="mfooter.jsp" %>
</body>
</html>