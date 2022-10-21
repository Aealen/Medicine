<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta http-equiv="X-UA-Compatible" content="IE=edge" />

	<title>Medicine|主页</title>
	<!-- bootstrap core css -->
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/bootstrap.css" />

	<!-- fonts style -->
	<link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;500;700;900&display=swap" rel="stylesheet">

	<!--owl slider stylesheet -->
	<link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.carousel.min.css" />

	<!-- font awesome style -->
	<link href="${pageContext.request.contextPath}/css/font-awesome.min.css" rel="stylesheet" />

	<!-- Custom styles for this template -->
	<link href="${pageContext.request.contextPath}/css/style.css" rel="stylesheet" />
	<!-- responsive style -->
	<link href="${pageContext.request.contextPath}/css/responsive.css" rel="stylesheet" />

	<style>
		.main-header-pg{
			position: relative;
			width: 100%;

		}
		.main-header-pg img{
			width: 100%;
		}
		.main-header-txt{
			position: absolute;
			top: 10%;
			margin-left: 12%;
			color: whitesmoke;
			/*border: 10px solid;*/
			width: 900px;
			height: 500px;
		}
		.main-header-txt h1{
			font-size: 65px;
		}
		.main-header-txt p{
			margin-top: 3%;
			font-size: 20px;
		}
		.btn-box{
			margin-top: 30px;
			width: 200px; /* 宽度 */
			height: 50px; /* ⾼度 */
			border-width: 0px; /* 边框宽度 */
			border-radius: 3px; /* 边框半径 */
			background: #6adcca; /* 背景颜⾊ */
			cursor: pointer; /* ⿏标移⼊按钮范围时出现⼿势 */
			outline: none; /* 不显⽰轮廓线 */
			font-family: Microsoft YaHei; /* 设置字体 */
			color: white; /* 字体颜⾊ */
			font-size: 25px; /* 字体⼤⼩ */
		}
	</style>

</head>
<%--<body background="/img/hero-bg.png" style="background-repeat: no-repeat;background-size: cover">--%>

<body>
<%--<%--%>
<%--	response.sendRedirect(request.getContextPath()+"/pages/main.jsp");--%>
<%--%>--%>

<!-- header section strats -->
<header class="header_section" style="background-color: #6adcca; color: white">
	<div class="container-fluid">
		<nav class="navbar navbar-expand-lg custom_nav-container ">
			<a class="navbar-brand" href="index.jsp" style="color: white">
				<h3>
					Medicine
				</h3>
			</a>
			<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>

			<div class="collapse navbar-collapse ml-auto" id="navbarSupportedContent">
				<ul class="navbar-nav  ml-auto">
					<li class="nav-item active">
						<a class="nav-link" href="index.jsp" style="color: white">Home <span class="sr-only">(current)</span></a>
					</li>
					<li class="nav-item">
						<a class="nav-link" href="/pages/comment-page.jsp" style="color: white"> 留言板 </a>
					</li>
					<li class="nav-item">
						<a class="nav-link" href="pages/about.jsp" style="color: white"> 关于我们 </a>
					</li>
					<li class="nav-item">
						<a class="nav-link" href="/user/list" style="color: white"> 用户中心 </a>
					</li>
				</ul>

			</div>
		</nav>
	</div>
</header>
<!-- end header section -->



<div style="min-height: 800px">
	<div class="main-header-pg">
		<img src="img/hero-bg.png">
		<div class="main-header-txt">
			<h1>医者仁心</h1>
			<p>医者，施以仁术以救人，施以仁心以救魂<br>
				大医精于业，诚于心，厚于德。玉碎光华在，前人已留下无数的典范。在大灾面前，冲在第一线的除了我们最可爱的人，还有医务人员，他们在自己的岗位上默默的为灾民减轻痛苦。当非典，禽流感，到处蔓延的时候，医务人员，为人们健康保驾护航。这种仁爱之心在这个职业上体现得淋漓尽致。</p>
			<button class="btn-box" type="button" onclick="location.href='/pages/about.jsp'"> 关于我们</button>
		</div>
	</div>
</div>





<!-- footer section -->
<footer class="footer_section" style="background-color: #6adcca; color: white">
	<div class="container">
		<div class="row">
			<div class="col-md-6 col-lg-3 footer_col">
				<div class="footer_contact">
					<h4>
						联系我们
					</h4>
					<div class="contact_link_box">
						<a href="">
							<span>
							  Location: xxxx市xxxx区xxx路xxx号
							</span>
						</a><br>
						<a href="">
							<span>
								  Call: +86 12345678900
							</span>
						</a><br>
						<a href="">
							<span>
							  Mail: xxx@xxx.com
							</span>
						</a>
					</div>
				</div>

			</div>
			<div class="col-md-6 col-lg-3 footer_col">
				<div class="footer_detail">
					<h4>
						关于我们
					</h4>
					<p>
						在大灾面前，冲在第一线的除了我们最可爱的人，还有医务人员，他们在自己的岗位上默默的为灾民减轻痛苦。
					</p>
				</div>
			</div>
			<div class="col-md-6 col-lg-2 mx-auto footer_col">
				<div class="footer_link_box">
					<h4>
						链接
					</h4>
					<div class="footer_links">
						<a class="active" href="index.html">
							Home
						</a>
						<a class="" href="pages/about.html">
							About
						</a>
						<a class="" href="/pages/comment-page.jsp">
							留言板
						</a>
					</div>
				</div>
			</div>
			<div class="col-md-6 col-lg-3 footer_col ">
				<h4>
					订阅我们
				</h4>
				<form action="#">
					<input type="email" placeholder="Enter email" />
					<button type="submit">
						订阅
					</button>
				</form>
			</div>
		</div>
		<div class="footer-info">
			<p>
				&copy; <span id="displayYear"></span> All Rights Reserved By
				<a href="https://aowu.tech/">Aowu.tech</a>
			</p>
		</div>
	</div>
</footer>
<!-- footer section -->

<!-- jQery -->
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-3.4.1.min.js"></script>
<!-- popper js -->
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous">
</script>
<!-- bootstrap js -->
<script type="text/javascript" src="${pageContext.request.contextPath}/js/bootstrap.js"></script>
<!-- owl slider -->
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/owl.carousel.min.js">
</script>
<!-- custom js -->
<script type="text/javascript" src="${pageContext.request.contextPath}/js/custom.js"></script>
<!-- Google Map -->
<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCh39n5U-4IoWpsVGUHWdqB6puEkhRLdmI&callback=myMap">
</script>
<!-- End Google Map -->



</body>
</html>