<%@ page language="java" contentType="text/html; charset=Utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Home</title>
<!-- for-mobile-apps -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="" />
<script type="application/x-javascript">
	 addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
		function hideURLbar(){ window.scrollTo(0,1); } 
</script>
<!-- //for-mobile-apps -->
<link href="css/bootstrap.css" rel="stylesheet" type="text/css"
	media="all" />
<link href="css/font-awesome.css" rel="stylesheet">
<link rel="stylesheet" href="css/chocolat.css" type="text/css"
	media="screen">
<link href="css/easy-responsive-tabs.css" rel='stylesheet'
	type='text/css' />
<link rel="stylesheet" href="css/flexslider.css" type="text/css"
	media="screen" property="" />
<link rel="stylesheet" href="css/jquery-ui.css" />
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<script type="text/javascript" src="js/modernizr-2.6.2.min.js"></script>
<!--fonts-->
<link href="http://fonts.googleapis.com/css?family=Oswald:300,400,700"
	rel="stylesheet">
<link href="http://fonts.googleapis.com/css?family=Federo"
	rel="stylesheet">
<link href="http://fonts.googleapis.com/css?family=Lato:300,400,700,900"
	rel="stylesheet">
<!--//fonts-->
</head>
<body>
	


	<!-- header -->
	<div class="banner-top">
		<div class="social-bnr-agileits">
			<ul class="social-icons3">
				<li><a href="#" class="fa fa-facebook icon-border facebook">
				</a></li>
				<li><a href="#" class="fa fa-twitter icon-border twitter">
				</a></li>
				<li><a href="#"
					class="fa fa-google-plus icon-border googleplus"> </a></li>
				<li><a href="#" class="fa fa-rss icon-border rss"> </a></li>
			</ul>
		</div>
		<div class="contact-bnr-w3-agile">
			<ul>
				<li><i class="fa fa-envelope" aria-hidden="true"></i><a
					href="mailto:info@example.com">405656434@qq.COM</a></li>
				<li><i aria-hidden="true"></i>
				<c:if test="${user eq null }">
					<div style="cursor: pointer;">
						<a href="../login/login.jsp">登录</a>&nbsp;&nbsp;
						<a href="../login/register.jsp">注册</a>
					</div>
				</c:if>
					 <c:if test="${user ne null }">
						<div style="cursor: pointer;">
							<a href="UserInfo.jsp">${user.uname }</a>&nbsp;|&nbsp;<a
								href="home.jsp">注销</a>
						</div>
					</c:if>
					</li>
				<li class="s-bar">
					<div class="search">
						<input class="search_box" type="checkbox" id="search_box">
						<label class="icon-search" for="search_box"><span
							class="glyphicon glyphicon-search" aria-hidden="true"></span></label>
						<div class="search_form">
							<form action="#" method="post">
								<input type="search" name="Search" placeholder=" " required=" " />
								<input type="submit" value="Search">
							</form>
						</div>
					</div>
				</li>
			</ul>
		</div>
		<div class="clearfix"></div>
	</div>
	<div class="w3_navigation">
		<div class="container">
			<nav class="navbar navbar-default">
				<div class="navbar-header navbar-left">
					<button type="button" class="navbar-toggle collapsed"
						data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
						<span class="sr-only">Toggle navigation</span> <span
							class="icon-bar"></span> <span class="icon-bar"></span> <span
							class="icon-bar"></span>
					</button>
					<h1>
						<a class="navbar-brand" href="index.html">小城 <span>客栈</span>
						<p class="logo_w3l_agile_caption">你的梦幻度假村</p></a>
					</h1>
				</div>
				<!-- Collect the nav links, forms, and other content for toggling -->
				<div class="collapse navbar-collapse navbar-right"
					id="bs-example-navbar-collapse-1">
					<nav class="menu menu--iris">
						<ul class="nav navbar-nav menu__list">
							<li class="menu__item menu__item--current"><a
								href="index.html" class="menu__link">主页</a></li>
							<li class="menu__item"><a href="#about"
								class="menu__link scroll">关于</a></li>
							<li class="menu__item"><a href="#gallery"
								class="menu__link scroll">画廊</a></li>
							<li class="menu__item"><a href="#rooms"
								class="menu__link scroll">房间</a></li>
							<li class="menu__item"><a href="#contact"
								class="menu__link scroll">关于我们</a></li>
						</ul>
					</nav>
				</div>
			</nav>

		</div>
	</div>
	<!-- //header -->
	<!-- banner -->
	<div id="home" class="w3ls-banner">
		<!-- banner-text -->
		<div class="slider">
			<div class="callbacks_container">
				<ul class="rslides callbacks callbacks1" id="slider4">
					<li>
						<div class="w3layouts-banner-top">

							<div class="container">
								<div class="agileits-banner-info">
									<h4>星级酒店</h4>
									<h3>我们知道你喜欢什么</h3>
									<p>欢迎光临我们的酒店</p>
									<div class="agileits_w3layouts_more menu__item"></div>
								</div>
							</div>
						</div>
					</li>
					<li>
						<div class="w3layouts-banner-top w3layouts-banner-top1">
							<div class="container">
								<div class="agileits-banner-info">
									<h4>星级酒店</h4>
									<h3>与朋友和家人呆在一起</h3>
									<p>来和我们一起享受宝贵的时光吧</p>
									<div class="agileits_w3layouts_more menu__item"></div>
								</div>
							</div>
						</div>
					</li>
					<li>
						<div class="w3layouts-banner-top w3layouts-banner-top2">
							<div class="container">
								<div class="agileits-banner-info">
									<h4>星级酒店</h4>
									<h3>想要豪华的假期吗？</h3>
									<p>今天得到住宿</p>
									<div class="agileits_w3layouts_more menu__item"></div>
								</div>
							</div>
						</div>
					</li>
				</ul>
			</div>
			<div class="clearfix"></div>
			<!--banner Slider starts Here-->
		</div>
		<div class="thim-click-to-bottom">
			<a href="#about" class="scroll"> <i class="fa fa-long-arrow-down"
				aria-hidden="true"></i>
			</a>
		</div>
	</div>
	<!-- //banner -->
	<!--//Header-->
	<!-- //Modal1 -->

	<div id="availability-agileits">
		<div class="col-md-3 book-form-left-w3layouts">
			<h2>预定</h2>
		</div>
		<div class="col-md-9 book-form">
			<form id="orderForm" action="Ordering.jsp" method="post">
				<div class="fields-w3ls form-left-agileits-w3layouts ">
					<p>房间类型</p>
					<select id="type" class="form-control">
						<option>标准间</option>
						<option>豪华间</option>
						<option>双人标间</option>
						<option>情侣间</option>
						<option>商务房</option>
						<option>行政房</option>
						<option>大床房</option>
						<option>双人豪华间</option>
						<option>三人标间</option>

					</select>
				</div>
				<div class="fields-w3ls form-date-w3-agileits">
					<p>到达日期</p>
					<input id="datepicker1" name="Text" type="text" value="选择日期"
						onfocus="this.value = '';"
						onblur="if (this.value == '') {this.value = 'mm/dd/yyyy';}"
						required="">
				</div>
				<div class="fields-w3ls form-date-w3-agileits">
					<p>退房日期</p>
					<input id="datepicker2" name="Text" type="text" value="选择日期"
						onfocus="this.value = '';"
						onblur="if (this.value == '') {this.value = 'mm/dd/yyyy';}"
						required="">
				</div>

				<div class=" form-left-agileits-submit">
					<input id="ordering" style="width: 300px; font-size: 22px"
						type="submit" value="搜索">
				</div>
			</form>
		</div>
		<div class="clearfix"></div>
	</div>
	<!-- banner-bottom -->
	<div class="banner-bottom">
		<div class="container">
			<div class="agileits_banner_bottom">
				<h3>
					<span>享受美好的住宿，享受美妙的优惠</span> 我们友好的欢迎仪式
				</h3>
			</div>
			<div class="w3ls_banner_bottom_grids">
				<ul class="cbp-ig-grid">
					<li>
						<div class="w3_grid_effect">
							<span class="cbp-ig-icon w3_road"></span>
							<h4 class="cbp-ig-title">主卧室</h4>
							<span class="cbp-ig-category">度假酒店</span>
						</div>
					</li>
					<li>
						<div class="w3_grid_effect">
							<span class="cbp-ig-icon w3_cube"></span>
							<h4 class="cbp-ig-title">海景阳台</h4>
							<span class="cbp-ig-category">度假酒店</span>
						</div>
					</li>
					<li>
						<div class="w3_grid_effect">
							<span class="cbp-ig-icon w3_users"></span>
							<h4 class="cbp-ig-title">大型咖啡馆</h4>
							<span class="cbp-ig-category">度假酒店</span>
						</div>
					</li>
					<li>
						<div class="w3_grid_effect">
							<span class="cbp-ig-icon w3_ticket"></span>
							<h4 class="cbp-ig-title">WIFI覆盖</h4>
							<span class="cbp-ig-category">度假酒店</span>
						</div>
					</li>
				</ul>
			</div>
		</div>
	</div>
	<!-- //banner-bottom -->
	<!-- /about -->
	<div class="about-wthree" id="about">
		<div class="container">
			<div class="ab-w3l-spa">
				<h3 class="title-w3-agileits title-black-wthree">关于我们的度假酒店</h3>
				<p class="about-para-w3ls">小城宾馆以”宾客至上，服务第一”为经营理念，视宾客为上帝，真诚地为宾客提供”热情、周到、文明、礼貌、快捷、安全、规范”的服务。烹饪技术力量雄厚。以徽菜为主，集各大菜系之精华，形成稻香楼餐饮特色，中西餐兼制，可承办各种类型的宴会。宾馆地处市中心，交通十分便捷。</p>
				<img src="images/my10.jpg" class="img-responsive" alt="Hair Salon">
				<div class="w3l-slider-img">
					<img src="images/a1.jpg" class="img-responsive" alt="Hair Salon">
				</div>
				<div class="w3ls-info-about">
					<h4>你会喜欢我们提供的所有便利设施</h4>

				</div>
			</div>
			<div class="clearfix"></div>
		</div>
	</div>
	<!-- //about -->
	<!--sevices-->
	<div class="advantages">
		<div class="container">
			<div class="advantages-main">
				<h3 class="title-w3-agileits">我们的服务</h3>
				<div class="advantage-bottom">
					<div class="col-md-6 advantage-grid left-w3ls wow bounceInLeft"
						data-wow-delay="0.3s">
						<div class="advantage-block ">
							<i class="fa fa-credit-card" aria-hidden="true"></i>
							<h4>先走，然后付钱！</h4>

							<p>
								<i class="fa fa-check" aria-hidden="true"></i>装修房间，匹配适当的空调
							</p>
							<p>
								<i class="fa fa-check" aria-hidden="true"></i>私人阳台
							</p>

						</div>
					</div>
					<div class="col-md-6 advantage-grid right-w3ls wow zoomIn"
						data-wow-delay="0.3s">
						<div class="advantage-block">
							<i class="fa fa-clock-o" aria-hidden="true"></i>
							<h4>24小时餐厅</h4>

							<p>
								<i class="fa fa-check" aria-hidden="true"></i>24小时客房服务
							</p>
							<p>
								<i class="fa fa-check" aria-hidden="true"></i>24小时礼宾服务
							</p>
						</div>
					</div>
					<div class="clearfix"></div>
				</div>
			</div>
		</div>
	</div>
	<!--//sevices-->
	<!-- team -->

	<!-- //team -->
	<div class="tlinks" style="margin-top: 35px;">
		<a href="http://www.cssmoban.com/"></a>
	</div>
	<!-- Gallery -->
	<section class="portfolio-w3ls" id="gallery">
		<h3 class="title-w3-agileits title-black-wthree">我们的画廊</h3>
		<div class="col-md-3 gallery-grid gallery1">
			<a href="images/g1.jpg" class="swipebox"><img src="images/g1.jpg"
				class="img-responsive" alt="/">
				<div class="textbox">
					<h4>度假酒店</h4>
					<p>
						<i class="fa fa-picture-o" aria-hidden="true"></i>
					</p>
				</div> </a>
		</div>
		<div class="col-md-3 gallery-grid gallery1">
			<a href="images/g2.jpg" class="swipebox"><img src="images/g2.jpg"
				class="img-responsive" alt="/">
				<div class="textbox">
					<h4>度假酒店</h4>
					<p>
						<i class="fa fa-picture-o" aria-hidden="true"></i>
					</p>
				</div> </a>
		</div>
		<div class="col-md-3 gallery-grid gallery1">
			<a href="images/g3.jpg" class="swipebox"><img src="images/g3.jpg"
				class="img-responsive" alt="/">
				<div class="textbox">
					<h4>度假酒店</h4>
					<p>
						<i class="fa fa-picture-o" aria-hidden="true"></i>
					</p>
				</div> </a>
		</div>
		<div class="col-md-3 gallery-grid gallery1">
			<a href="images/g4.jpg" class="swipebox"><img src="images/g4.jpg"
				class="img-responsive" alt="/">
				<div class="textbox">
					<h4>度假酒店</h4>
					<p>
						<i class="fa fa-picture-o" aria-hidden="true"></i>
					</p>
				</div> </a>
		</div>
		<div class="col-md-3 gallery-grid gallery1">
			<a href="images/g5.jpg" class="swipebox"><img src="images/g5.jpg"
				class="img-responsive" alt="/">
				<div class="textbox">
					<h4>度假酒店</h4>
					<p>
						<i class="fa fa-picture-o" aria-hidden="true"></i>
					</p>
				</div> </a>
		</div>
		<div class="col-md-3 gallery-grid gallery1">
			<a href="images/g6.jpg" class="swipebox"><img src="images/g6.jpg"
				class="img-responsive" alt="/">
				<div class="textbox">
					<h4>度假酒店</h4>
					<p>
						<i class="fa fa-picture-o" aria-hidden="true"></i>
					</p>
				</div> </a>
		</div>
		<div class="col-md-3 gallery-grid gallery1">
			<a href="images/g6.jpg" class="swipebox"><img src="images/g7.jpg"
				class="img-responsive" alt="/">
				<div class="textbox">
					<h4>度假酒店</h4>
					<p>
						<i class="fa fa-picture-o" aria-hidden="true"></i>
					</p>
				</div> </a>
		</div>
		<div class="col-md-3 gallery-grid gallery1">
			<a href="images/g6.jpg" class="swipebox"><img src="images/g8.jpg"
				class="img-responsive" alt="/">
				<div class="textbox">
					<h4>度假酒店</h4>
					<p>
						<i class="fa fa-picture-o" aria-hidden="true"></i>
					</p>
				</div> </a>
		</div>
		<div class="col-md-3 gallery-grid gallery1">
			<a href="images/g9.jpg" class="swipebox"><img src="images/g9.jpg"
				class="img-responsive" alt="/">
				<div class="textbox">
					<h4>度假酒店</h4>
					<p>
						<i class="fa fa-picture-o" aria-hidden="true"></i>
					</p>
				</div> </a>
		</div>
		<div class="col-md-3 gallery-grid gallery1">
			<a href="images/g10.jpg" class="swipebox"><img
				src="images/g10.jpg" class="img-responsive" alt="/">
				<div class="textbox">
					<h4>度假酒店</h4>
					<p>
						<i class="fa fa-picture-o" aria-hidden="true"></i>
					</p>
				</div> </a>
		</div>
		<div class="col-md-3 gallery-grid gallery1">
			<a href="images/g4.jpg" class="swipebox"><img src="images/g4.jpg"
				class="img-responsive" alt="/">
				<div class="textbox">
					<h4>度假酒店</h4>
					<p>
						<i class="fa fa-picture-o" aria-hidden="true"></i>
					</p>
				</div> </a>
		</div>
		<div class="col-md-3 gallery-grid gallery1">
			<a href="images/g2.jpg" class="swipebox"><img src="images/g2.jpg"
				class="img-responsive" alt="/">
				<div class="textbox">
					<h4>度假酒店</h4>
					<p>
						<i class="fa fa-picture-o" aria-hidden="true"></i>
					</p>
				</div> </a>
		</div>
		<div class="clearfix"></div>
	</section>
	<!-- //gallery -->
	<!-- rooms & rates -->
	<div class="plans-section" id="rooms">
		<div class="container">
			<h3 class="title-w3-agileits title-black-wthree">房间和价格</h3>
			<div class="priceing-table-main">
				<div class="col-md-3 price-grid">
					<div class="price-block agile">
						<div class="price-gd-top">
							<img src="images/my1.jpg" alt=" " class="img-responsive" />
							<h4>标准间</h4>
						</div>
						<div class="price-gd-bottom">
							<div class="price-list">
								<ul>
									<li><i class="fa fa-star" aria-hidden="true"></i></li>
									<li><i class="fa fa-star" aria-hidden="true"></i></li>
									<li><i class="fa fa-star" aria-hidden="true"></i></li>
									<li><i class="fa fa-star" aria-hidden="true"></i></li>
									<li><i class="fa fa-star-o" aria-hidden="true"></i></li>

								</ul>
							</div>
							<div class="price-selet">
								<h3>
									<span>$</span>100
								</h3>
								<a href="#availability-agileits" class="scroll">现在预定</a>
							</div>
						</div>
					</div>
				</div>
				<div class="col-md-3 price-grid ">
					<div class="price-block agile">
						<div class="price-gd-top">
							<img src="images/my2.jpg" alt=" " class="img-responsive" />
							<h4>大床房</h4>
						</div>
						<div class="price-gd-bottom">
							<div class="price-list">
								<ul>
									<li><i class="fa fa-star" aria-hidden="true"></i></li>
									<li><i class="fa fa-star" aria-hidden="true"></i></li>
									<li><i class="fa fa-star" aria-hidden="true"></i></li>
									<li><i class="fa fa-star" aria-hidden="true"></i></li>
									<li><i class="fa fa-star-o" aria-hidden="true"></i></li>
								</ul>
							</div>
							<div class="price-selet">
								<h3>
									<span>$</span>220
								</h3>
								<a href="#availability-agileits" class="scroll">现在预定</a>
							</div>
						</div>
					</div>
				</div>
				<div class="col-md-3 price-grid lost">
					<div class="price-block agile">
						<div class="price-gd-top">
							<img src="images/my3.jpg" alt=" " class="img-responsive" />
							<h4>情侣房</h4>
						</div>
						<div class="price-gd-bottom">
							<div class="price-list">
								<ul>
									<li><i class="fa fa-star" aria-hidden="true"></i></li>
									<li><i class="fa fa-star" aria-hidden="true"></i></li>
									<li><i class="fa fa-star" aria-hidden="true"></i></li>
									<li><i class="fa fa-star-o" aria-hidden="true"></i></li>
									<li><i class="fa fa-star-o" aria-hidden="true"></i></li>
								</ul>
							</div>
							<div class="price-selet">
								<h3>
									<span>$</span>350
								</h3>
								<a href="#availability-agileits" class="scroll">现在预定</a>
							</div>
						</div>
					</div>
				</div>
				<div class="col-md-3 price-grid wthree lost">
					<div class="price-block agile">
						<div class="price-gd-top ">
							<img src="images/my4.jpg" alt=" " class="img-responsive" />
							<h4>行政房</h4>
						</div>
						<div class="price-gd-bottom">
							<div class="price-list">
								<ul>
									<li><i class="fa fa-star" aria-hidden="true"></i></li>
									<li><i class="fa fa-star" aria-hidden="true"></i></li>
									<li><i class="fa fa-star-o" aria-hidden="true"></i></li>
									<li><i class="fa fa-star-o" aria-hidden="true"></i></li>
									<li><i class="fa fa-star-o" aria-hidden="true"></i></li>
								</ul>
							</div>
							<div class="price-selet">
								<h3>
									<span>$</span> 550
								</h3>
								<a href="#availability-agileits" class="scroll">现在预定</a>
							</div>
						</div>
					</div>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
	</div>
	<!--// rooms & rates -->
	<!-- visitors -->
	<div class="w3l-visitors-agile">
		<div class="container">
			<h3 class="title-w3-agileits title-black-wthree">其他游客的经历</h3>
		</div>
		<div class="w3layouts_work_grids">
			<section class="slider">
				<div class="flexslider">
					<ul class="slides">
						<li>
							<div class="w3layouts_work_grid_left">
								<img src="images/5.jpg" alt=" " class="img-responsive" />
								<div class="w3layouts_work_grid_left_pos">
									<img src="images/my8.jpeg" alt=" " class="img-responsive" />
								</div>
							</div>
							<div class="w3layouts_work_grid_right">
								<h4>
									<i class="fa fa-star" aria-hidden="true"></i> <i
										class="fa fa-star" aria-hidden="true"></i> <i
										class="fa fa-star" aria-hidden="true"></i> <i
										class="fa fa-star" aria-hidden="true"></i> <i
										class="fa fa-star" aria-hidden="true"></i> 值得再来
								</h4>
								<p>这个酒店的服务很好，有宾至如归的感觉</p>

								<p>重庆</p>
							</div>
							<div class="clearfix"></div>
						</li>
						<li>
							<div class="w3layouts_work_grid_left">
								<img src="images/5.jpg" alt=" " class="img-responsive" />
								<div class="w3layouts_work_grid_left_pos">
									<img src="images/my5.jpg" alt=" " class="img-responsive" />
								</div>
							</div>
							<div class="w3layouts_work_grid_right">
								<h4>
									<i class="fa fa-star" aria-hidden="true"></i> <i
										class="fa fa-star" aria-hidden="true"></i> <i
										class="fa fa-star" aria-hidden="true"></i> <i
										class="fa fa-star" aria-hidden="true"></i> <i
										class="fa fa-star-o" aria-hidden="true"></i> 值得再来
								</h4>
								<p>豪华酒店的每一层楼上都有可供热饭或准备早餐的小厨房或配餐室，让人很觉得高级</p>

								<p>重庆</p>
							</div>
							<div class="clearfix"></div>
						</li>
						<li>
							<div class="w3layouts_work_grid_left">
								<img src="images/5.jpg" alt=" " class="img-responsive" />
								<div class="w3layouts_work_grid_left_pos">
									<img src="images/my6.jpg" alt=" " class="img-responsive" />
								</div>
							</div>
							<div class="w3layouts_work_grid_right">
								<h4>
									<i class="fa fa-star" aria-hidden="true"></i> <i
										class="fa fa-star" aria-hidden="true"></i> <i
										class="fa fa-star" aria-hidden="true"></i> <i
										class="fa fa-star" aria-hidden="true"></i> <i
										class="fa fa-star-o" aria-hidden="true"></i> 值得再来
								</h4>
								<p>酒店的房间打扫的非常干净，环境也非常优雅</p>

								<p>重庆</p>
							</div>
							<div class="clearfix"></div>
						</li>
						<li>
							<div class="w3layouts_work_grid_left">
								<img src="images/5.jpg" alt=" " class="img-responsive" />
								<div class="w3layouts_work_grid_left_pos">
									<img src="images/my7.jpg" alt=" " class="img-responsive" />
								</div>
							</div>
							<div class="w3layouts_work_grid_right">
								<h4>
									<i class="fa fa-star" aria-hidden="true"></i> <i
										class="fa fa-star" aria-hidden="true"></i> <i
										class="fa fa-star" aria-hidden="true"></i> <i
										class="fa fa-star-o" aria-hidden="true"></i> <i
										class="fa fa-star-o" aria-hidden="true"></i> 值得再来
								</h4>
								<p>酒店的鲜花装饰摆放的非常漂亮，这家酒店装修的很豪华，还有世界名画的摆设。</p>

								<p>重庆</p>
							</div>
							<div class="clearfix"></div>
						</li>
					</ul>
				</div>
			</section>
		</div>
	</div>
	<!-- visitors -->
	<!-- contact -->
	<section class="contact-w3ls" id="contact">
		<div class="container">
			<div class="col-lg-6 col-md-6 col-sm-6 contact-w3-agile2"
				data-aos="flip-left">
				<div class="contact-agileits">
					<h4>联系我们</h4>
					<p class="contact-agile2">报名参加我们的新闻信</p>
					<form action="#" method="post" name="sentMessage" id="contactForm"
						novalidate>
						<div class="control-group form-group">
							<div class="controls">
								<label class="contact-p1">全名:</label> <input type="text"
									class="form-control" name="name" id="name" required
									data-validation-required-message="Please enter your name.">
								<p class="help-block"></p>
							</div>
						</div>
						<div class="control-group form-group">
							<div class="controls">
								<label class="contact-p1">电话号码:</label> <input type="tel"
									class="form-control" name="phone" id="phone" required
									data-validation-required-message="Please enter your phone number.">
								<p class="help-block"></p>
							</div>
						</div>
						<div class="control-group form-group">
							<div class="controls">
								<label class="contact-p1">电子邮箱:</label> <input type="email"
									class="form-control" name="email" id="email" required
									data-validation-required-message="Please enter your email address.">
								<p class="help-block"></p>
							</div>
						</div>
						<div id="success"></div>
						<!-- For success/fail messages -->
						<button type="submit" class="btn btn-primary">送</button>
					</form>
				</div>
			</div>
			<div class="col-lg-6 col-md-6 col-sm-6 contact-w3-agile1"
				data-aos="flip-right">
				<h4>与我们联系</h4>
				<p class="contact-agile1">
					<strong>电话 :</strong> +1 (100)222-23-33
				</p>
				<p class="contact-agile1">
					<strong>电子邮箱 :</strong> <a href="mailto:name@example.com">info@example.com</a>
				</p>


				<div class="social-bnr-agileits footer-icons-agileinfo">
					<ul class="social-icons3">
						<li><a href="#" class="fa fa-facebook icon-border facebook">
						</a></li>
						<li><a href="#" class="fa fa-twitter icon-border twitter">
						</a></li>
						<li><a href="#"
							class="fa fa-google-plus icon-border googleplus"> </a></li>
						<li><a href="#" class="fa fa-rss icon-border rss"> </a></li>
					</ul>
				</div>
				<!---<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3074.7905052320443!2d-77.84987248482734!3d39.586871613613056!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x89c9f6a80ccf0661%3A0x7210426c67abc40!2sVirginia+Welcome+Center%2FSafety+Rest+Area!5e0!3m2!1sen!2sin!4v1485760915662" ></iframe>--->
			</div>
			<div class="clearfix"></div>
		</div>
	</section>
	<!-- /contact -->
	<div class="copy"></div>
	<!--/footer -->
	<!-- js -->
	<script type="text/javascript" src="js/jquery-2.1.4.min.js"></script>
	<!-- contact form -->
	<script src="js/jqBootstrapValidation.js"></script>
	<script src="js/contact_me.js"></script>
	<!-- /contact form -->
	<!-- Calendar -->
	<script src="js/jquery-ui.js"></script>
	<script>
		$(function() {
			$("#datepicker,#datepicker1,#datepicker2,#datepicker3")
					.datepicker();
		});
	</script>
	<!-- //Calendar -->
	<!-- gallery popup -->
	<link rel="stylesheet" href="css/swipebox.css">
	<script src="js/jquery.swipebox.min.js"></script>
	<script type="text/javascript">
		jQuery(function($) {
			$(".swipebox").swipebox();
		});
	</script>
	<!-- //gallery popup -->
	<!-- start-smoth-scrolling -->
	<script type="text/javascript" src="js/move-top.js"></script>
	<script type="text/javascript" src="js/easing.js"></script>
	<script type="text/javascript">
		jQuery(document).ready(function($) {
			$(".scroll").click(function(event) {
				event.preventDefault();
				$('html,body').animate({
					scrollTop : $(this.hash).offset().top
				}, 1000);
			});
		});
	</script>
	<!-- start-smoth-scrolling -->
	<!-- flexSlider -->
	<script defer src="js/jquery.flexslider.js"></script>
	<script type="text/javascript">
		$(window).load(function() {
			$('.flexslider').flexslider({
				animation : "slide",
				start : function(slider) {
					$('body').removeClass('loading');
				}
			});
		});
	</script>
	<!-- //flexSlider -->
	<script src="js/responsiveslides.min.js"></script>
	<script>
		// You can also use "$(window).load(function() {"
		$(function() {
			// Slideshow 4
			$("#slider4").responsiveSlides({
				auto : true,
				pager : true,
				nav : false,
				speed : 500,
				namespace : "callbacks",
				before : function() {
					$('.events').append("<li>before event fired.</li>");
				},
				after : function() {
					$('.events').append("<li>after event fired.</li>");
				}
			});

		});
	</script>
	<!--search-bar-->
	<script src="js/main.js"></script>
	<!--//search-bar-->
	<!--tabs-->
	<script src="js/easy-responsive-tabs.js"></script>
	<script>
		$(document).ready(function() {
			$('#horizontalTab').easyResponsiveTabs({
				type : 'default', //Types: default, vertical, accordion           
				width : 'auto', //auto or any width like 600px
				fit : true, // 100% fit in a container
				closed : 'accordion', // Start closed if in accordion view
				activate : function(event) { // Callback function if tab is switched
					var $tab = $(this);
					var $info = $('#tabInfo');
					var $name = $('span', $info);
					$name.text($tab.text());
					$info.show();
				}
			});
			$('#verticalTab').easyResponsiveTabs({
				type : 'vertical',
				width : 'auto',
				fit : true
			});
		});
	</script>
	<!--//tabs-->
	<!-- smooth scrolling -->
	<script type="text/javascript">
		$(document).ready(function() {
			/*
				var defaults = {
				containerID: 'toTop', // fading element id
				containerHoverID: 'toTopHover', // fading element hover id
				scrollSpeed: 1200,
				easingType: 'linear' 
				};
			 */
			$().UItoTop({
				easingType : 'easeOutQuart'
			});
		});
	</script>

	<div class="arr-w3ls">
		<a href="#home" id="toTop" style="display: block;"> <span
			id="toTopHover" style="opacity: 1;"> </span></a>
	</div>
	<!-- //smooth scrolling -->
	<script type="text/javascript" src="js/bootstrap-3.1.1.min.js"></script>
	
	<script type="text/javascript">
		$("#ordering").click(function(){
			var type = $("#type").val();
			var starttime = $("#datepicker1").val();
			var endtime = $("#datepicker2").val();
			console.log(type);
			console.log(starttime);
			console.log(endtime);
			var s = "type="+data.type+"&starttime="+data.starttime+"&endtime="+data.endtime;
			window.location.href="Ordering.jsp?"+s;
		})
	</script>
</body>
</html>