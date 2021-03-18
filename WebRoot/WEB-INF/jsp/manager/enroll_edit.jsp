<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="${pageContext.request.contextPath }/css/css.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath }/css/manager.css" />
<script type="text/javascript" src="${pageContext.request.contextPath }/js/time.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/js/jquery-1.3.2.js"></script>
<script type="text/javascript">
	$().ready(function(){
		$('#stu_sub').click(function(){
			if($('#ename').val() == ""){
				alert("请输入姓名！");
				return false;
			}else if($('#ephone').val() == ""){
				alert("请输入电话！");
				return false;
			}else if(!(/^1[34578]\d{9}$/.test($('#ephone').val()))){
			    alert("请填写正确的手机号！");  
			    return false;
			}else if($('#eqq').val() == ""){
			 	alert("请输入qq！");
			 	return false;
			}else if(!(/^[1-9][0-9]{4,9}$/.test($('#eqq').val()))){
				alert("请填写正确的QQ号！");  
				return false;
			}else if(!("RATIONAL培训" === $('#ecourse').val() || "信息安全培训" === $('#ecourse').val())){
				alert("请填写RATIONAL培训或信息安全培训！");  
				return false;
			}else{
				var fm = document.getElementById("fm");
				fm.action = "${pageContext.request.contextPath }/rest/enroll/updateEnoll";
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
					<h1>报名信息</h1>
					<span id="news_time"></span>
					<span class="span_right">管理员:<input id="userName" value="${userName }"/></span> 
				</div>
				<div class="clear"></div>
			<div class="table_center">
				<form action="" id="fm" method="post">
					<table class="tab">
						<c:forEach var="enroll" items="${enroll }">
							<input type="hidden" name="eid" value="${enroll.eid }"/>
							<input type="hidden" name="epeople" value="${userName }"/>
							<tr>
								<td>姓名:</td><td><input type="text" id="ename" name="ename" value="${enroll.ename }"/></td>
							</tr>
							<tr>
								<td>电话:</td><td><input type="text" id="ephone" name="ephone" value="${enroll.ephone }"/></td>
							</tr>
							<tr>
								<td>QQ:</td><td><input type="text" id="eqq" name="eqq" value="${enroll.eqq }"/></td>
							</tr>
							<tr>
								<td>课程名称:</td><td><input type="text" id="ecourse" name="ecourse" value="${enroll.ecourse }"/></td>
							</tr>
							<tr>
								<td></td><td><input id="stu_sub" class="sty_dy_add" type="submit" value="修改" /></td>
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