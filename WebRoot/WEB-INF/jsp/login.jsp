<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="${pageContext.request.contextPath }/css/css.css" rel="stylesheet" type="text/css" />
<link href="${pageContext.request.contextPath }/css/page.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="${pageContext.request.contextPath }/js/jquery-1.3.2.js"></script>

<title>登陆</title>
<style>
	.login{
		float: right;
	}
	.login li{
		float: left;
		padding-left: 10px;
	}
</style>
<script type="text/javascript">
    $().ready(function () {
        $('#log').click(function () {
            if ($('#uname').val() == "" || $('#upsw').val() == "") {
                alert("用户名或密码不能为空！");
            }
            else {
                $.ajax({
                    type: "POST",
                    url: "${pageContext.request.contextPath }/rest/user/logUser",
                    data: "uname=" + $('#uname').val() + "&upsw=" + $('#upsw').val() + "&image=" + $('#image').val(),
                    success: function (object) {
                    	var dataObj = object;
                    	var v = eval("("+dataObj+")");
                    	/* alert(v.i);
                    	alert(v.text); */
                    	var msg = v.i;
                    	var myName = v.text;
                        if (msg == "1") {
                            if($('#image').val() == "" || $('#image').val() == ""){
					        	alert("请输入验证码！");
					        	return false;
					        }
   						 	if(myName == $('#image').val()){
   								window.location.href="${pageContext.request.contextPath }/rest/user/goUser_list";
   							}else {
								alert("验证码输入错误!");
							}
   							
                        }
                        if (msg == "0") {
                            alert("用户名或密码错误！");
                        }
                    },
                    error: function (XMLHttpRequest, textStatus, thrownError) {
                    }
                });
            }
        });
        document.getElementById("btn").onclick = function () {
        document.getElementById("yzm").src =
            "${pageContext.request.contextPath }/rest/user/VerifyCodeServlet?time=" + new Date().getTime();
    };
    });
</script>
<title>Insert title here</title>
</head>
<body>
	<%@include file="header.jsp" %>
	<div margin-bottom: 236px;">
		<div id="logina">
			<div id="login_header">
				<h1>欢迎回到晶林科技</h1>
			</div>
			<div id="login_con">
				<label> 
					用户账号:<input id="uname" type="text" name="uname" />
				</label><br /> 
				<label> 
					登录密码:<input id="upsw" type="text" name="upsw"/> 
				</label>
				<label> 
					验证码:&nbsp;&nbsp;&nbsp;<input type="text" name="image" id="image"> <img src="${pageContext.request.contextPath }/rest/user/VerifyCodeServlet" id="yzm"> 
	     	 			  <input type="button" value="看不清?" id="btn" style="width: 100px;"><br> 
				</label><br>
				<label> 
					<input id="log" type="submit" value="登录" />
				</label>
			</div>
		</div>
	</div>
	<%@include file="footer.jsp" %>
</body>
</html>