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
<title>后台管理</title>
<style type="text/css">
span{
	padding-right: 8px;
}
.cen{
	display: flex; 
	justify-content: center; 
	align-items: center;
}
</style>
<script type="text/javascript">
	$().ready(function () {
		$('#sub').click(function(){
			if($('#tname').val() == "" || $('#tsuggest').val() == "" ){
				alert("请输入教师名称或简介");
				return false;
			}else if($('#file').val() == ""){
				alert("请选择教师照片");
				return false;
			}else{
				var fm = document.getElementById("fm");
				fm.action = "${pageContext.request.contextPath }/rest/tone/insertTone";
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
				<h1>信息安全教师团队</h1>
				<span id="news_time"></span>
				<span class="span_right">管理员:<input id="userName" value="${userName }"/></span> 
			</div>
			<div class="clear"></div>
			<form action="" method="post" id="fm"  enctype="multipart/form-data">
				<input type="hidden" name="tpeople" value="${userName }">
				<div class="cen">
					<span>教师名称:</span>
					<input name="tname" id="tname" class="sty_dy_title" placeholder="请输入教师名称"></input>
				</div>
				<span>选择照片:</span>
				<input id="file" type="file" name="file" style="padding-bottom: 5px">
				<div class="cen">
					<span>教师简介:</span>
					<textarea name="tsuggest" id="tsuggest" class="sty_dy_msg" placeholder="请输入教师简介"></textarea>
				</div>
				<div class="clear"></div>
				<input id="sub" class="sty_dy_add" type="submit" value="添加" />
			</form>
		</div>
	</div>
	<%@include file="mfooter.jsp" %>
</body>
</html>