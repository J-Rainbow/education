<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="../../css/css.css" rel="stylesheet" type="text/css" />
<script src="../../js/jquery.min.1.8.2.js" type="text/javascript"></script>
<script src="../../js/jquery.SuperSlide.2.1.1.js" type="text/javascript"></script>
<script src="../../js/fk.js" type="text/javascript"></script>
<style type="text/css">
	.my_box{
		height:605px ;
		width:1000px ;
		margin: 50px auto;
	}
	h1{
		font-size: 24px !important;
		text-align: center;
	}
	.my_p{
		margin-top: 10px ;
	}
	.my_p p{
		text-indent: 2em;
		font-size: 13px;
	}
</style>
<script type="text/javascript">
	$().ready(function () {
		if($('#p1').val()===undefined){
			var div = document.getElementById("div1");
			div.style.display = "none";
		}
	});
</script>
<title></title>
</head>
<body>
	<%@include file="header.jsp" %>
	<div class="my_box" id="div1">
		<c:forEach var="sdy" items="${sdy }">
			<h1>${sdy.stitle }</h1>
			<div class="my_p" >
				<p id="p1">${sdy.scontext }</p>
			</div>
		</c:forEach>
	</div>
	<div class="my_box">
		<c:forEach var="tnews" items="${tnews }">
			<h1>${tnews.ttitle }</h1>
			<div class="my_p">
				<p>${tnews.tcontext }</p>
			</div>
		</c:forEach>
	</div>
	<%@include file="footer.jsp" %>
</body>
</html>