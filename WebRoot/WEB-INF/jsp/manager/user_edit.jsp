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
<style type="text/css">
.tab {
	margin: 30px 150px 0px 100px;
}
.tab td input{
	margin: 10px;
	width: 200px;
}
</style>
<script type="text/javascript">
	$().ready(function () {
		$('#stu_sub').click(function(){
			if($('#uname').val() == "" || $('#upsw').val() == "" || $('#reupsw').val() == ""){
				alert("用户名或登录密码不能为空");
				return false;
			}else{
				var fm = document.getElementById("fm");
				fm.action = "${pageContext.request.contextPath }/rest/user/updateUser";
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
		<div class="sty_dy_content" style="width: 699px;">
			<div class="back_header">
					<h1>用户信息</h1>
					<span id="news_time"></span>
					<span class="span_right">管理员:<input id="userName" value="${userName }"/></span> 
				</div>
				<div class="clear"></div>
			<div class="table_center">
				<form action="" id="fm" method="post">
					<table class="tab">
						<c:forEach var="user" items="${user }">
							<input type="hidden" name="uid" value="${user.uid }"/>
							<input type="hidden" name="upeople" value="${userName }"/>
							<tr>
								<td><h1>修改用户信息</h1></td>
							</tr>
							<tr>
								<td>
									姓名:<input type="text" id="uname" name="uname" value="${user.uname }"/>
								</td>
							</tr>
							<tr>
								<td>密码:<input type="text" id="upsw" name="upsw" value="${user.upsw }"/></td>
							</tr>
							<tr>
								<td>
									<input id="stu_sub" class="sty_dy_add" type="submit" value="修改" />
								</td>
							</tr>
						</c:forEach>
					</table>
				</form>
			</div>
		</div>
	</div>
	<%@include file="mfooter.jsp" %>
</body>
</html>