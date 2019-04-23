<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@page import="service.UserService"%>
<%@page import="java.io.IOException"%>
<%@page import="dao.UserMapper"%>
<%@page import="org.apache.ibatis.session.SqlSessionFactory"%>
<%@page import="org.apache.ibatis.session.SqlSessionFactoryBuilder"%>
<%@page import="org.apache.ibatis.io.Resources"%>
<%@page import="java.io.InputStream"%>
<%@page import="org.apache.ibatis.session.SqlSession"%>
<%@page import="java.util.ArrayList"%>
<%@page import="pojo.User"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=Utf-8"
	pageEncoding="utf-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head lang="en">
<meta charset="UTF-8">
    <link href="css/bootstrap.css" rel="stylesheet">

    <link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="jquery-3.3.1.js"></script>
    <script src="bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
    <link href="css/bootstrap.css" rel="stylesheet">
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport"
          content="width=device-width, initial-scale=1, maximum-scale=1">
    <link rel="stylesheet" href="layui-v2.4.5/layui/css/layui.css"
          media="all">

<title></title>
<style>
* {
	padding: 0px;
	margin: 0px
}

a {
	text-decoration: none
}

.d1 {
	height: 80px;
	border-bottom: 1px gray solid;
	position: relative
}

.d1 span:hover {
	cursor: pointer;
}

.i {
	position: absolute;
	right: 255px;
	top: -2px;
	padding: 3px;
	border-radius: 5px;
	background-color: #ad0000
}

.con li {
	float: left;
	list-style: none;
	padding-left: 35px;
	text-align: center;
	height: 80px;
	line-height: 100px;
}

.con li {
	cursor: pointer;
}

.con div {
	height: 5px;
	margin-top: 0px;
}

a:hover {
	cursor: pointer;
}

.d2 {;
	height: 40px;
	float: right;
	margin-top: 5px;
	margin-right: 250px
}

.a {
	margin-top: 15px;
	margin-left: 160px;
}

.a a {
	color: #646464;
}

.taskbar {
	width: 110px;
	height: 500px;
	margin-left: 160px;
	margin-top: 30px;
}

.taskbar p {
	font-size: 18px;
	color: #3c3c3c
}

.dian {
	height: 38px;
	float: left;
	margin-top: 40px
}

.pp {
	float: left
}

.pp a {
	text-decoration: none;
	color: #646464
}

.pp a:visited {
	color: red
}

.my {
	position: absolute;
	width: 1200px;
	height: 600px;
	right: 0px;
	top: 150px;
	margin-left: 50px;
}

.elent {
	width: 80px;
	height: 80px;
	border-radius: 50%;
	background-color: yellow;
	padding-top: 10px;
	margin-left: 20px;
	float: left
}

.yan {
	width: 600px;
	border-left: 1px gray solid;
	position: absolute;
	left: 300px;
	top: 20px;
	padding-left: 30px;
	padding-top: 5px
}

.pass {
	width: 100px;
	height: 30px;
	margin-right: 10px;
	float: right;
	margin-top: -45px;
	line-height: 30px;
	text-align: center;
	border-radius: 25px;
	border: 1px #b01e21 solid
}

.xinxi {
	height: 400px;
	width: 1200px;
}

.xinxi ul div {
	float: left;
}

.xinxi ul {
	margin-top: 20px;
	margin-left: 80px
}

.tag {
	height: 20px;
	width: 20px;
	margin-right: 10px
}

.xinxi a {
	display: block;
	width: 170px;
	height: 45px;
	background-color: #b01e21;
	border-radius: 10px;
	text-align: center;
	line-height: 45px;
	font-size: 20px;
	font-weight: 800;
	color: whitesmoke;
	cursor: pointer;
	margin-top: 40px;
	margin-left: 90px;
}

.xinxi a:hover {
	background-color: rgba(176, 30, 33, 0.84);
	text-decoration: none
}

.xinxi span {
	margin-left: 20px;
	opacity: 0;
	color: red
}

.read {
	border: none;
	outline: none
}

.read1 {
	display: none
}

.read2 {
	display: none
}

.nv {
	
}

.nan {
	
}

.wei {
	height: 100px;
	margin-top: 95px;
	padding-top: 20px;
	background-color: rgba(227, 227, 227, 0.54);
	border-top: 1px rgba(184, 184, 184, 0.66) solid;
}

.wei a {
	margin-left: 40px;
	text-decoration: none;
	color: #430752
}

.wei p {
	text-align: center;
	margin-top: 20px;
	color: #430752
}
.btn-primary{background-color: white !important;}
.btn-primary:hover{background-color: white !important;}
.modal-content{ width: 300px!important;}
</style>

</head>
<body>
	<div class="d1">

		<ul class="con">
			<li style="font-size: 22px; margin-left: 130px">成 城 的 爱 巢</li>
			<li>
				<div></div>
				<span>酒店预订</span>
			</li>
			<li>
				<div></div>
				<span>企业客户预定</span>
			</li>
			<li>
				<div></div>
				<span>优惠促销</span>
			</li>
			<li>
				<div></div>
				<span>家宾会</span>
			</li>
			<li>
				<div></div>
				<span>积分商城</span>
			</li>
			<li>
				<div></div>
				<span>关于度假村</span>
			</li>
		</ul>
		<span class="glyphicon glyphicon-heart" title="收藏"
			style="color: red; font-size: 20px; margin-left: 265px;"></span> <span
			class="glyphicon glyphicon-qrcode"
			style="font-size: 20px; margin-left: 10px"></span>
		<div class="i">
			<a style="text-decoration: none; color: white">English</a>
		</div>

		<div class="d2">
			<span style="font-size: 20px; top: 5px"
				class="glyphicon glyphicon-user"></span> <a
				style="text-decoration: none; line-height: 40px; color: rgba(93, 46, 20, 0.92)">&nbsp;${user.uname }&nbsp;</a>
			<span>&nbsp;|</span> <a href="../login/login.jsp"
				style="text-decoration: none; color: rgba(93, 46, 20, 0.92)">
				&nbsp;注销</a>


		</div>
	</div>

	<div class="a">
		<a style="float: left">当前位置 :&nbsp;</a> <a>&nbsp;首页</a> <span
			class="glyphicon glyphicon-menu-right"></span> <a>个人中心</a> <span
			class="glyphicon glyphicon-menu-right"></span> <a>我的信息</a>
	</div>

	<div class="taskbar">
		<span style="font-size: 22px">我的酒店</span>
		<div class="dian" style="margin-top: 30px;">
			<p>
				订单中心<span class="glyphicon glyphicon-menu-down"
					style="padding-left: 10px; color: #985f0d; font-size: 15px"></span>
			</p>
		</div>
		<div class="pp">
			<a class="bb">我的订单</a><br />
		</div>
		<div class="dian">
			<p>
				我的账户<span class="glyphicon glyphicon-menu-down"
					style="padding-left: 10px; color: #985f0d; font-size: 15px"></span>
			</p>
		</div>
		<div class="pp">
			<a> 我的积分</a>
		</div>
		<div class="dian">
			<p>
				个人中心<span class="glyphicon glyphicon-menu-down"
					style="padding-left: 10px; color: #985f0d; font-size: 15px"></span>
			</p>
		</div>
		<div class="pp">
			<a style="color: #b01e21">我的信息</a><br /> <a> 我的点评</a>
		</div>
		<div class="dian">
			<p>
				常用信息<span class="glyphicon glyphicon-menu-down"
					style="padding-left: 10px; color: #985f0d; font-size: 15px"></span>
			</p>
		</div>
		<div class="pp">
			<a>收藏酒店</a>
		</div>
	</div>
	<%
		User user=(User)session.getAttribute("user");	
		Date date = user.getUborn();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		String newdate = sdf.format(date);
		String uname = user.getUname();
		//session.setAttribute("user", user);
	%>

	<div class="my">
		<div style="height: 100px; border-bottom: 1px gray solid;">
		
			    <div type="button" class="elent btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal">

        </div>

        <!-- Modal -->
        <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                        <h4 class="modal-title" id="myModalLabel">Modal title</h4>
                    </div>
                    <div class="modal-body">
                        ...
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                        <button type="button" class="btn btn-primary">Save changes</button>
                    </div>
                </div>
            </div>
        </div>
			<div style="float: left; margin-left: 20px; margin-top: 20px;">
				<span style="font-size: 20px">${user.uname }</span>
			</div>

			<div class="yan">
				<p>请完善您的个人信息，以便获得更好的服务。</p>
				<p>妥善保管您的登录密码，以保障您的帐户安全。</p>
				<div class="pass">
					<a style="text-decoration: none; color: #b01e21">修改密码</a>
				</div>
			</div>
		</div>
		<form id="userform" action="">
			<input type="hidden" name="uid" value="${user.uid}">
			<div class="xinxi">
				<ul style="margin-top: 40px">
					<div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;姓名:</div>
					<div class="tag"></div>
					<div>
						<input class="read ca" type="text" name="utruename" readonly
							value=${user.utruename }><span>姓名不能为空</span>
					</div>
				</ul>
				<br />

				<ul>
					<div>身份证号:</div>
					<div class="tag"></div>
					<div>
						<input class="read ca" type="text" name="uidentity" readonly
							value=${user.uidentity }><span>身份证不能为空</span>
					</div>
				</ul>
				<br />
				<ul>
					<div style="margin-left: 10px">生日:</div>
					<div class="tag"></div>
					<div class="born" style="margin-left: 10px" id="ri">
						<%=newdate%>
					</div>
					<div>
						<input style="margin-left: 19px" class=" read ca noe1"
							name="uborn" type="text" id="test1" name="uborn" readonly
							value="${user.uborn }" placeholder="yyyy-MM-dd"><span>身份证不能为空</span>
					</div>
				</ul>
				<br />
				<ul>
					<div>手机号码:</div>
					<div class="tag"></div>
					<div>
						<input class="read ca" type="text" name="uphone" readonly
							value=${user.uphone }><span>手机号不能为空</span>
					</div>
				</ul>
				<br />
				<ul>
					<div>电子邮箱:</div>
					<div class="tag"></div>
					<div>
						<input class="read ca" type="text" name="uemail" readonly
							value=${user.uemail }><span>电子邮件不能为空</span>
					</div>
				</ul>
				<br />
				<ul>
					<div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;性别:</div>
					<div class="tag"></div>
					<div class="ddd">

						<c:if test="${ user.ugender eq '男' }">
							<input class="read read1 nan" name="ugender" type="radio"
								checked="checked" readonly value="男" />
							<b class="reaa">男</b>
							<input class="read1 nv" name="ugender" type="radio" readonly
								value="女" style="margin-left: 20px" />
							<b class=" reaa1 read1">女</b>
						</c:if>

						<c:if test="${user.ugender eq '女' }">
							<input class="read read1 nan" name="ugender" type="radio" readonly
								value="男" />
							<b class="reaa read1">男</b>
							<input class="read1 nv" name="ugender" type="radio" checked="checked"
								readonly value="女" style="margin-left: 20px" />
							<b class=" reaa1 ">女</b>
						</c:if>
					</div>
				</ul>
				<br /> <a id="b">编辑</a>
			</div>
	</div>
	</form>

	<div class="wei">
		<div>
			<a style="margin-left: 530px;">酒店介绍</a> <a>酒店加盟</a> <a>职位招聘</a> <a>意见反馈</a>
			<a>联系我们</a>
		</div>
		<p>沪ICP备12041475|@ChengCheng All Rights reservrd.城成酒店管理有限公司</p>
	</div>

	<script src="js/jquery-3.3.1.js"></script>
	<script src="layui-v2.4.5/layui/layui.js" charset="utf-8"></script>
	<script>
		$("#test1").hide();

		layui.use('laydate', function() {
			var laydate = layui.laydate;
			laydate.render({
				elem : '#test1'
			});
			laydate.render({
				elem : '#test3',
				type : 'month'
			});
		})
		$(".con span").mouseover(function() {
			$(this).siblings("div").css("background-color", "#b01e21")
		});
		$(".con span").mouseout(function() {
			$(this).siblings("div").css("background-color", "")
		});
		$(".pass").mouseover(function() {
			$(this).css("background-color", "#b01e21");
			$(this).children().css("color", "white")
		});
		$(".pass").mouseout(function() {
			$(this).css("background-color", "");
			$(this).children().css("color", "#b01e21")
		});
		$("#b").click(
				function() {

					var text = $("#b").text();
					if (text == "编辑") {
						$("#ri").hide();
						$("#test1").show();
						$(".read").removeAttr("readOnly").css("border",
								"1px solid gray").css("outline",
								"gray none thick");
						var a = $("#b").text("保存");
						$(".read1").removeClass("read1");
						$("reaa").removeClass("read1");
						$("reaa1").removeClass("read1")

					} else if (text == "保存") {

						var b = true;
						var userlist = $("#userform").serializeArray();

						var phone = /^1[3458]\d{9} $/;
						var text;
						for (var i = 0; i < 5; i++) {
							text = $(".ca:eq(" + i + ")").val();
							if (text == "") {
								$(".ca:eq(" + i + ")").siblings("span").css(
										"opacity", "1");
								b = false;
							} else {
								$(".ca:eq(" + i + ")").siblings("span").css(
										"opacity", "0");
							}
						}

						if (b) {
							var ss = $("#userform").serializeArray();
							console.log(ss);
							$.getJSON("../UpdateUserServlet", ss,
									function(data) {
								console.log(data.result);
										if (data.result=="正确") {
											console.log("ojbk");
											$("#test1").hide();
											var test1 = $("#test1").val()
											$("#ri").show();
											$("#ri").text(test1)

											$(".read").css("border", "none")
													.css("outline", "none")
													.attr("readOnly", " ");
											var a = $("#b").text("编辑");
											var nv = $(".nv").is(":checked");
											var nan = $(".nan").is(":checked");
											if (nv) {
												$("nv").attr("checked",
														"checked");
												$("nan").removeAttr("checked");
												$(".nan").addClass("read1");
												$(".nv").addClass("read1");
												$(".reaa").addClass("read1");
												$(".reaa1")
														.removeClass("read1")

											} else if (nan) {
												$("nan").attr("checked",
														"checked");
												$("nv").removeAttr("checked");
												$(".nan").addClass("read1");
												$(".nv").addClass("read1");
												$(".reaa1").addClass("read1");
												$(".reaa").removeClass("read1")

											}
										}
									})

						}

					}

				});

		//removeClass("read").addClass("read1")
		//css("border","1px solid black"
	</script>

</body>
</html>