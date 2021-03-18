<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="../css/css.css" rel="stylesheet" type="text/css" />
<link href="../css/page.css" rel="stylesheet" type="text/css" />
<script src="../js/jquery.min.1.8.2.js" type="text/javascript"></script>
<script src="../js/jquery.SuperSlide.2.1.1.js" type="text/javascript"></script>
<script src="../js/fk.js" type="text/javascript"></script>
<script type="text/javascript">
	$().ready(function(){
		$('#submit').click(function(){
			if($('#ename').val() == ""){
				alert("请输入姓名！");
			}else if($('#ephone').val() == ""){
				alert("请输入电话！");
			}else if(!(/^1[34578]\d{9}$/.test($('#ephone').val()))){
			    alert("请填写正确的手机号！");  
			}else if($('#eqq').val() == ""){
			 	alert("请输入qq！");
			}else if(!(/^[1-9][0-9]{4,9}$/.test($('#eqq').val()))){
				alert("请填写正确的QQ号！");  
			}else{
				var ecourse= $("#ecourse").find("option:selected").text();
				var span = document.getElementById("ok");
				$.ajax({
                    type: "POST",
                    url: "${pageContext.request.contextPath }/rest/enroll/insertEnroll",
                    data: "ename=" + $('#ename').val() + "&ephone=" + $('#ephone').val() + "&eqq=" + $('#eqq').val() + "&ecourse=" + ecourse,
                    success: function (i) {
                    	if(i>0){
                    		$('#ok').html("提交成功");
                    		return false;
                    	}else{
                    		$('#ok').html("提交失败");
                    		return false;
                    	}
                    },
                    error: function (XMLHttpRequest, textStatus, thrownError) {
                    }
                });
			}
		});
	});
</script>
<title>我要报名</title>
</head>
<body>
	<!-- 引入头部 -->
	<jsp:include page="header.jsp"></jsp:include>
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
					在线报名 <span class="English">ONLINE REGISTRATION</span>
				</div>
				<!--内容-->
				<div class="info">
					<div class="sign_Note"><span id="ok">请正确的填写报名基本信息，提交之后，请等待客服与你联系。</span></div>
					<ul class="sign_up">
						<li><label>姓 &nbsp;&nbsp;&nbsp;&nbsp;名</label><input
							id = "ename" name="ename" type="text" class="text"></li>
						<li><label>电 &nbsp;&nbsp;&nbsp;&nbsp;话</label><input
							id = "ephone" name="ephone" type="text" class="text"></li>
						<li><label>QQ</label><input name="eqq" type="text"
							id = "eqq" class="text"></li>
						<li style="display: flex;align-items: center;">
							<label>课程名称</label>
							<select id="ecourse">
								<option>信息安全培训</option>
								<option>RATIONAL培训</option>
							</select>
						</li>
						<li class="btn_Click"><input name="提交报名" type="submit"
							id="submit" class="submit" id="1" value="提交报名"></li>
					</ul>
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
						<li><div class="pic">
								<a href=""><img src="../images/xy-1.jpg" /></a>
							</div></li>
						<li><div class="pic">
								<a href=""><img src="../images/xu-2.jpg" /></a>
							</div></li>
						<li><div class="pic">
								<a href=""><img src="../images/xu-3.jpg" /></a>
							</div></li>
						<li><div class="pic">
								<a href=""><img src="../images/xu-4.jpg" /></a>
							</div></li>
						<li><div class="pic">
								<a href=""><img src="../images/xu-2.jpg" /></a>
							</div></li>
						<li><div class="pic">
								<a href=""><img src="../images/xu-4.jpg" /></a>
							</div></li>
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
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>
