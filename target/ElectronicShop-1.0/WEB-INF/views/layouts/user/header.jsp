<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/views/layouts/user/taglib.jsp"%>
<!-- HEADER -->
<header>
	<!-- TOP HEADER -->
	<div id="top-header">
		<div class="container">
			<ul class="header-links pull-left">
				<li><a href="#"><i class="fa fa-phone"></i> +0333-???-???</a></li>
				<li><a href="#"><i class="fa fa-envelope-o"></i>
						email@email.com</a></li>
				<li><a href="#"><i class="fa fa-map-marker"></i> TP. Ho Chi
						Minh</a></li>
			</ul>
			<ul class="header-links pull-right">
				<li><a href="#"> <!-- <i class="fa fa-dollar"></i> -->₫ VNĐ
				</a></li>
				<li><a href="<c:url value="/dang-ky/" />"><i class="fa fa-user-o"></i> Đăng Nhập</a></li>
			</ul>
		</div>
	</div>
	<!-- /TOP HEADER -->

	<!-- MAIN HEADER -->
	<div id="header">
		<!-- container -->
		<div class="container">
			<!-- row -->
			<div class="row">
				<!-- LOGO -->
				<div class="col-md-3">
					<div class="header-logo">
						<a href="#" class="logo"> <img
							src="<c:url value="/assets/user/img/logo.png" />" alt="">
						</a>
					</div>
				</div>
				<!-- /LOGO -->

				<!-- SEARCH BAR -->
				<div class="col-md-6">
					<div class="header-search">
						<form>

							<select class="input-select">
								<option value="0">Tất cả thể loại</option>
								<c:forEach var="item" items="${ cateShare }">
									<option value="1">${ item.name }</option>
								</c:forEach>
								<!-- <option value="0">All Categories</option>

								<option value="1">Category 02</option> -->
							</select> <input class="input" placeholder="Tìm kiếm tại đây">
							<button class="search-btn">Tìm kiếm</button>
						</form>
					</div>
				</div>
				<!-- /SEARCH BAR -->

				<!-- ACCOUNT -->
				<div class="col-md-3 clearfix">
					<div class="header-ctn">
						<!-- Wishlist -->
						<div>
							<a href="#"> <i class="fa fa-heart-o"></i> <span> Danh
									sách yêu thích</span>
								<div class="qty">2</div>
							</a>
						</div>
						<!-- /Wishlist -->

						<!-- Cart -->
						<div class="dropdown">
							<a class="dropdown-toggle" data-toggle="dropdown"
								aria-expanded="true"> <i class="fa fa-shopping-cart"></i> <span>Giỏ
									hàng</span>
								<div class="qty">${ TotalQuantyCart }</div>
							</a>
							<div class="cart-dropdown">
								<div class="cart-list">
									<c:forEach var="item" items="${ Cart }">
										<div class="product-widget">
											<div class="product-img">
												<img
													src="<c:url value="/assets/user/img/product/${ item.value.product.img }" />"
													alt="">
											</div>
											<div class="product-body">
												<h3 class="product-name">
													<a href="#">${ item.value.product.name }</a>
												</h3>
												<h4 class="product-price">
													<span class="qty">${ item.value.quanty }x</span>
													<fmt:formatNumber type="number" groupingUsed="true"
														value="${ item.value.product.price }" />
													₫
												</h4>
											</div>
											<button class="delete">
												<i class="fa fa-close"></i>
											</button>
										</div>
									</c:forEach>



								</div>
								<div class="cart-summary">
									<small>${ TotalQuantyCart } - Sản phẩm đã chọn</small>
									<h5>
										Tổng tiền:
										<fmt:formatNumber type="number" groupingUsed="true"
											value="${ TotalPriceCart }" />
										₫
									</h5>
								</div>
								<div class="cart-btns">
									<a href="<c:url value="/gio-hang" />">Xem giỏ hàng</a> <a
										href="#">Checkout <i class="fa fa-arrow-circle-right"></i></a>
								</div>
							</div>
						</div>
						<!-- /Cart -->

						<!-- Menu Toogle -->
						<div class="menu-toggle">
							<a href="#"> <i class="fa fa-bars"></i> <span>Menu</span>
							</a>
						</div>
						<!-- /Menu Toogle -->
					</div>
				</div>
				<!-- /ACCOUNT -->
			</div>
			<!-- row -->
		</div>
		<!-- container -->
	</div>
	<!-- /MAIN HEADER -->
</header>
<!-- /HEADER -->

<!-- NAVIGATION -->
<nav id="navigation">
	<!-- container -->
	<div class="container">
		<!-- responsive-nav -->
		<div id="responsive-nav">
			<!-- NAV -->
			<ul class="main-nav nav navbar-nav">
				<c:forEach var="item" items="${ menu }" varStatus="index">
					<c:if test="${index.first}">
						<li class="active">
					</c:if>
					<c:if test="${ not index.first}">
						<li>
					</c:if>
					<a href="#">${ item.name }</a>
					</li>

				</c:forEach>
				<!-- <li class="active"><a href="#">Home</a></li>
				<li><a href="#">Hot Deals</a></li>
				<li><a href="#">Categories</a></li>
				<li><a href="#">Laptops</a></li>
				<li><a href="#">Smartphones</a></li>
				<li><a href="#">Cameras</a></li>
				<li><a href="#">Accessories</a></li> -->
			</ul>
			<!-- /NAV -->
		</div>
		<!-- /responsive-nav -->
	</div>
	<!-- /container -->
</nav>
<!-- /NAVIGATION -->