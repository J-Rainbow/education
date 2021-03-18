<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="${pageContext.request.contextPath }/css/css.css" rel="stylesheet" type="text/css" />
<link href="${pageContext.request.contextPath }/css/page.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="${pageContext.request.contextPath }/js/jquery-1.3.2.js"></script>
<script type="text/javascript">
	$().ready(function () {
		$('#reg').click(function(){
			if($('#uname').val() == ""){
				alert("用户名不能为空");
				$('#reg').attr("disabled", true);
			}
		});
		$('#uname').blur(function(){
			var pro = document.getElementById("prompt");
			var pro2 = document.getElementById("prompt2");
			$.ajax({
				 type: "POST",
                 url: "${pageContext.request.contextPath }/rest/user/regUser",
                 data: "uname=" + $('#uname').val(),
                 success: function (msg) {
                 	if(msg>=1){
                 		pro.style.color = "red";
                 		pro.innerText = "用户名已存在";
                 		$('#reg').attr("disabled", true);
                 	}else{
                 		$('#reg').attr("disabled", false);
                 		if($('#uname').val() !== ""){
                 			pro.style.color = "green";
                 			pro.innerText = "正确";
	                 			$('#reg').click(function(){
	                 			if($('#upsw').val() == "" || $('#reupsw').val() == ""){
									alert("登录密码不能为空");
								}else if ($('#upsw').val() === $('#reupsw').val()) {
									var fm = document.getElementById("fm");
									var register_con = document.getElementById("register_con");
									var top2 = document.getElementById("top2");
									var register_bingo = document.getElementById("register_bingo");
	               					register_con.style.display = 'none';
									top2.style.backgroundColor = '#F0F8FF';
									register_bingo.style.display = 'block';
									/* var time = document.getElementById("time");
									var i=3;
									var timer = setInterval(function(){
									    i--;
									    time.innerHTML = i;   
									    if(i==1){
									        window.location.href="${pageContext.request.contextPath }/rest/user/regInsertUser";
									    }
									  },2000) */
									  fm.action = "${pageContext.request.contextPath }/rest/user/regInsertUser";
	               					//return false;
		                		}else{
		                			pro2.style.color = "red";
		                			pro2.innerText = "两次密码不一致";
		                			return false;
		                		}
							});
                 		}
                 	}
				 },
				 error: function (XMLHttpRequest, textStatus, thrownError) {
                 }
			});
		});
    });
</script>
<title>注册</title>
</head>
<body>
<%@include file="header.jsp" %>
	<div margin-bottom: 236px;">
		<div id="register">
			<div id="register_header">
				<h1>欢迎注册晶林科技</h1>
			</div>
			<div id="register_top">
				<ul id="ul">
					<li id="top1">填写注册信息</li>
					<li id="top2">注册成功</li>
				</ul>
			</div><br />
			<div id="register_con" style="margin-top: 10px">
				<form action="" id=fm>
					<label>
						用户账号:<input id="uname" type="text" name="uname" />
						<span id="prompt"></span>
					</label><br />
					<label>
						登录密码:<input id="upsw" type="password" name="upsw"  />
					</label><br />
					<label>
						确认密码:<input id="reupsw" type="password" />
						<span id="prompt2"></span>
					</label><br />
					<input style="margin-left: 130.5px;" id="reg" type="submit" value="注册" />
				</form>
			</div>
			<div id="register_bingo">
				<span>恭喜注册成功,跳转到后台页面</span>
			</div>
		</div>
	</div>
	<%@include file="footer.jsp" %>
</body>
</html>