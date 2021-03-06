<%@ page language="java" contentType="text/html; charset=Utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
<title>注册</title>
<link rel="stylesheet" href="css/style.css" />
<body>

<div class="register-container">
	<h1>注册</h1>
	
	<div class="connect">
		<p>请填写基本信息</p>
	</div>
	
	<form action="" method="post" id="registerForm">
		<div>
			<input type="text" name="username" class="username" placeholder="您的用户名" autocomplete="off"/>
		</div>
		<div>
			<input type="password" name="password" class="password" placeholder="输入密码" oncontextmenu="return false" onpaste="return false" />
		</div>
		<div>
			<input type="password" name="confirm_password" class="confirm_password" placeholder="再次输入密码" oncontextmenu="return false" onpaste="return false" />
		</div>
		<div>
			<input type="text" name="phone_number" class="phone_number" placeholder="输入手机号码" autocomplete="off" id="number"/>
		</div>
		<div>
			<input type="email" name="email" class="email" placeholder="输入邮箱地址" oncontextmenu="return false" onpaste="return false" />
		</div>
		<div>
			<input type="text" name="sex" class="sex" placeholder="您的性别" autocomplete="off"·/>
		</div>
		<div>
			<input type="text" name="ID_number" class="ID_number" placeholder="身份证号码" autocomplete="off" oncontextmenu="return false" onpaste="return false" id="idnumber" />
		</div>


		<button id="submit" type="submit">注 册</button>
	</form>
	<a href="login.jsp">
		<button type="button" class="register-tis">已经有账号？</button>
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
		var formArr = $("#registerForm").serializeArray();
		//console.log(formArr);
		$.getJSON("../registerServlet",formArr,function(data){
			
			if(data.result=="正确"){
				alert("注册成功")
				window.location.href="login.jsp";
			}else{
				alert("注册失败");
			}
		});
	})
</script>
</body>
</html>
