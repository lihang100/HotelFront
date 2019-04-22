<%@ page language="java" contentType="text/html; charset=Utf-8"
    pageEncoding="utf-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
<title>酒店登录注册表单</title>
<meta name="keywords" content="" />
<meta name="description" content="" />
<link rel="stylesheet" href="css/style.css" />

<body>

<div class="login-container">
	<h1>欢迎来到XX酒店</h1>
	
	<div class="connect">
		<p>www.XXXXXX.com</p>
	</div>
	
	<form action="" method="post" id="loginForm">
		<div>
			<input value="233affd5@163.com" type="text" name="username" class="username" placeholder="邮箱" autocomplete="off"/>
		</div>
		<div>
			<input value="123456" type="password" name="password" class="password" placeholder="密码" oncontextmenu="return false" onpaste="return false" />
		</div>
		<button id="submit" type="button">登 录</button>
	</form>

	<a href="register.jsp">
		<button type="button" class="register-tis">还有没有账号？</button>
	</a>

</div>

<script src="js/jquery.min.js"></script>
<script src="js/common.js"></script>
<!--背景图片自动更换-->
<script src="js/supersized.3.2.7.min.js"></script>
<script src="js/supersized-init.js"></script>
<!--表单验证-->
<script src="js/jquery.validate.min.js?var1.14.0"></script>

<script>
	$("#submit").click(function(){
		var uemail = $("input[name=username]").val();
		var upassword = $("input[name=password]").val();
		$.getJSON("../loginServlet",{"uemail":uemail,"password":upassword},function(data){
			
			if(data.result=="正确"){
				var preUrl = document.referrer;
				alert(preUrl);
				if(preUrl!="http://localhost:8080/Webwangye/login/register.jsp"){
					self.location=document.referrer;
				}else{
					//history.go(-2);
					window.location.href="../cpts/home.jsp";
				}
				
				
			}else{
				alert("邮箱账号或密码不正确");
			}
		});
	})
</script>
</body>
</html>