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
<script type="text/javascript">
	function isDelete(id){
		if(!confirm("是否删除")){
			return false;
		}
		var userName = document.getElementById("userName").value;
		window.location.href="${pageContext.request.contextPath }/rest/sdynamics/deleteSdy/"+id+"/"+userName;
	}
</script>
<title>后台管理</title>
</head>
<body>
	<%@include file="mheader.jsp" %>
	<div class="news_box">
		<%@include file="left.jsp" %>
		<div class="sty_dy_content">
			<div class="sty_dy_content" style="width: 699px;">
				<div class="back_header">
					<h1>新闻动态</h1>
					<span id="news_time"></span>
					<span class="span_right">管理员:<input id="userName" value="${userName }"/></span> 
				</div>
				<div class="clear"></div>
				<table class="table">
					<tbody>
						<tr>
							<th>ID</th>
							<th>新闻标题</th>
							<th>新闻内容</th>
							<th>操作时间</th>
							<th>操作人</th>
							<th>操作</th>
						</tr>
						<c:forEach var="sdy" items="${sdy }">
							<tr>
								<td>${sdy.sid }</td>
								<td>${sdy.stitle }</td>
								<td>${sdy.scontext }</td>
								<td>
									<fmt:formatDate value="${sdy.stime }" pattern="yyyy-MM-dd"/>
								</td>
								<td>${sdy.speople }</td>
								<td>
									<a href="${pageContext.request.contextPath }/rest/sdynamics/findById/${sdy.sid }">修改</a> 
									<a href="#" onclick="isDelete(${sdy.sid });">删除</a>
								</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
				<div style="float: right;">
					第${info.pageNum}页    总共${info.total }条数据 
					<a href="${pageContext.request.contextPath }/rest/sdynamics/goSdy_list?pageNum=1">首页</a>
					<a href="${pageContext.request.contextPath }/rest/sdynamics/goSdy_list?pageNum=${info.pageNum-1}">上一页</a>
					<a href="${pageContext.request.contextPath }/rest/sdynamics/goSdy_list?pageNum=${info.pageNum+1}">下一页</a>
					<a href="${pageContext.request.contextPath }/rest/sdynamics/goSdy_list?pageNum=${info.pageSize }">末页</a>
				</div>
			</div>
		</div>
	</div>
	<%@include file="mfooter.jsp" %>
</body>
</html>