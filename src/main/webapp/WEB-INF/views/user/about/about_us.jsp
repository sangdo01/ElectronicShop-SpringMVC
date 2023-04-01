<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/views/layouts/user/taglib.jsp"%>
<head>
<meta charset="UTF-8">
<title>Về chúng tôi</title>
<style type="text/css">
a, a:hover, a:focus, a:active {
	text-decoration: none;
	outline: none;
}

a, a:active, a:focus {
	color: #6f6f6f;
	text-decoration: none;
	transition-timing-function: ease-in-out;
	-ms-transition-timing-function: ease-in-out;
	-moz-transition-timing-function: ease-in-out;
	-webkit-transition-timing-function: ease-in-out;
	-o-transition-timing-function: ease-in-out;
	transition-duration: .2s;
	-ms-transition-duration: .2s;
	-moz-transition-duration: .2s;
	-webkit-transition-duration: .2s;
	-o-transition-duration: .2s;
}

ul {
	margin: 0;
	padding: 0;
	list-style: none;
}

img {
	max-width: 100%;
	height: auto;
}

section {
	padding: 60px 0;
	/* min-height: 100vh;*/
}

.sec-title {
	position: relative;
	z-index: 1;
	margin-bottom: 60px;
}

.sec-title .title {
	position: relative;
	display: block;
	font-size: 18px;
	line-height: 24px;
	color: #ff2222;
	font-weight: 500;
	margin-bottom: 15px;
}

.sec-title h2 {
	position: relative;
	display: block;
	font-size: 40px;
	line-height: 1.28em;
	color: #222222;
	font-weight: 600;
	padding-bottom: 18px;
}

.sec-title h2:before {
	position: absolute;
	content: '';
	left: 0px;
	bottom: 0px;
	width: 50px;
	height: 3px;
	background-color: #d1d2d6;
}

.sec-title .text {
	position: relative;
	font-size: 16px;
	line-height: 26px;
	color: #848484;
	font-weight: 400;
	margin-top: 35px;
}

.sec-title.light h2 {
	color: #ffffff;
}

.sec-title.text-center h2:before {
	left: 50%;
	margin-left: -25px;
}

.list-style-one {
	position: relative;
}

.list-style-one li {
	position: relative;
	font-size: 16px;
	line-height: 26px;
	color: #222222;
	font-weight: 400;
	padding-left: 35px;
	margin-bottom: 12px;
}

.list-style-one li:before {
	content: "\f058";
	position: absolute;
	left: 0;
	top: 0px;
	display: block;
	font-size: 18px;
	padding: 0px;
	color: #ff2222;
	font-weight: 600;
	-moz-font-smoothing: grayscale;
	-webkit-font-smoothing: antialiased;
	font-style: normal;
	font-variant: normal;
	text-rendering: auto;
	line-height: 1.6;
	font-family: "Font Awesome 5 Free";
}

.list-style-one li a:hover {
	color: #44bce2;
}

.btn-style-one {
	position: relative;
	display: inline-block;
	font-size: 17px;
	line-height: 30px;
	color: #ffffff;
	padding: 10px 30px;
	font-weight: 600;
	overflow: hidden;
	letter-spacing: 0.02em;
	background-color: #ff2222;
}

.btn-style-one:hover {
	background-color: #001e57;
	color: #ffffff;
}

.about-section {
	position: relative;
	padding: 120px 0 70px;
}

.about-section .sec-title {
	margin-bottom: 45px;
}

.about-section .content-column {
	position: relative;
	margin-bottom: 50px;
}

.about-section .content-column .inner-column {
	position: relative;
	padding-left: 30px;
}

.about-section .text {
	margin-bottom: 40px;
	font-size: 16px;
	line-height: 26px;
	color: #848484;
	font-weight: 400;
}

.about-section .list-style-one {
	margin-bottom: 45px;
}

.about-section .btn-box {
	position: relative;
}

.about-section .btn-box a {
	padding: 15px 50px;
}

.about-section .image-column {
	position: relative;
}

.about-section .image-column .text-layer {
	position: absolute;
	right: -110px;
	top: 50%;
	font-size: 325px;
	line-height: 1em;
	color: #ffffff;
	margin-top: -175px;
	font-weight: 500;
}

.about-section .image-column .inner-column {
	position: relative;
	padding-left: 120px;
	padding-bottom: 125px;
}

.about-section .image-column .inner-column:before {
	position: absolute;
	left: -75px;
	top: 65px;
	height: 520px;
	width: 520px;
	background-image: url(https://i.ibb.co/fxJ1jtC/about-circle-1.png);
	content: "";
}

.about-section .image-column .image-1 {
	position: relative;
}

.about-section .image-column .image-2 {
	position: absolute;
	left: 0;
	bottom: 0;
}

.about-section .image-column .image-2 img, .about-section .image-column .image-1 img
	{
	box-shadow: 0 30px 50px rgba(8, 13, 62, .15);
}

.about-section .image-column .video-link {
	position: absolute;
	left: 70px;
	top: 170px;
}

.about-section .image-column .video-link .link {
	position: relative;
	display: block;
	font-size: 22px;
	color: #191e34;
	font-weight: 400;
	text-align: center;
	height: 100px;
	width: 100px;
	line-height: 100px;
	background-color: #ffffff;
	border-radius: 50%;
	box-shadow: 0 30px 50px rgba(8, 13, 62, .15);
	-webkit-transition: all 300ms ease;
	-moz-transition: all 300ms ease;
	-ms-transition: all 300ms ease;
	-o-transition: all 300ms ease;
	transition: all 300ms ease;
}

.about-section .image-column .video-link .link:hover {
	background-color: #191e34;
	color: #f
}
</style>
</head>
<!-- BREADCRUMB -->
<div id="breadcrumb" class="section">
	<!-- container -->
	<div class="container">
		<!-- row -->
		<div class="row">
			<div class="col-md-12">
				<ul class="breadcrumb-tree">
					<li><a href='<c:url value="/trang-chu"/>'>Trang chủ</a></li>
					<li class="active">Về chúng tôi</li>
				</ul>
			</div>
		</div>
		<!-- /row -->
	</div>
	<!-- /container -->
</div>
<!-- /BREADCRUMB -->

<!-- SECTION -->
<div class="section">
	<!-- container -->
	<div class="container">
		<!-- row -->
		<div class="row">
			<div class="about-section">
				<div class="container">
					<div class="row">
						<div class="content-column col-lg-6 col-md-12 col-sm-12 order-2">
							<div class="inner-column">
								<div class="sec-title">
									<span class="title">Về chúng tôi</span>
									<h2>
										Chúng tôi được thành lập <br>kể từ năm 2023
									</h2>
								</div>
								<div class="text">Khởi nghiệp từ một cửa hàng kinh doanh
									máy tính nhỏ tại TP.HCM năm 2023, đến nay DVS đã được biết đến
									là đơn vị bán lẻ lớn, lâu đời và uy tín tại Việt Nam. DVS
									chuyên kinh doanh các sản phẩm công nghệ thông tin, thiết bị
									giải trí game, thiết bị văn phòng và thiết bị hi-tech của nhiều
									nhãn hàng lớn như Dell, Asus, HP, MSI, Lenovo… Phong Vũ hướng
									đến mục tiêu không chỉ là nơi kinh doanh máy tính mà còn là nơi
									khách hàng có thể tìm thấy mọi tiện ích công nghệ hiện đại nhất
									và trải nghiệm dịch vụ tốt nhất. Từ năm 2023, DVS được mở rộng
									và phát triển chuỗi hơn 30 cửa hàng trên toàn quốc.</div>
								<ul class="list-style-one">
									<li>Các sản phẩm máy tính, thiết bị công nghệ thông tin &
										hi-end cho người dùng gia đình.</li>
									<li>Ngành hàng như các thiết bị điện tử tiêu dùng, thiết
										bị gia dụng và thiết bị thông minh</li>
									<li>Đối tác chiến lược: Asus, Dell, Acer, Hp, Lenovo, AMD,
										MSI, LG, Intel, Apple, Samsung, Microsoft, GigaByte, Logitech,
										NVIDIA, Kingston, KB Vision, Xiaomi, JBL, Bose, Sony,
										Microlab, Razer,…</li>
								</ul>
								<div class="btn-box">
									<a href='<c:url value="/lien-he"/>' class="theme-btn btn-style-one">Liên hệ với chúng tôi</a>
								</div>
							</div>
						</div>

						<!-- Image Column -->
						<div class="image-column col-lg-6 col-md-12 col-sm-12">
							<div class="inner-column wow fadeInLeft">
								<figure class="image-1">
									<a href="#" class="lightbox-image" data-fancybox="images"><img
										src="<c:url value="/assets/user/img/about/image-1-about.jpg" />" alt=""></a>
								</figure>
								<figure class="image-2">
									<a href="#" class="lightbox-image" data-fancybox="images"><img
										src="<c:url value="/assets/user/img/about/image-2-about.jpg" />" alt=""></a>
								</figure>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- /row -->
	</div>
	<!-- /container -->
</div>
<!-- /SECTION -->
