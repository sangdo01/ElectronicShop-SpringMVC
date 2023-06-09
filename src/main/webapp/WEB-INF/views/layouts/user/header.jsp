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
				<li>
					<div>
						<div class="dropdown-login">
							<c:if test="${ not empty LoginInfo }">
								<button class="dropbtn-login">
									${ LoginInfo.display_name } <i class="fa fa-caret-down"></i>
								</button>
								<div class="dropdown-content">
									<a href="<c:url value="/dang-xuat" />">Đăng xuất</a>
								</div>

							</c:if>
							<c:if test="${ empty LoginInfo }">
								<button class="dropbtn-login">
									Tài khoản <i class="fa fa-caret-down"></i>
								</button>
								<div class="dropdown-content">
									<a href="<c:url value="/dang-nhap" />">Đăng nhập</a> <a
										href="<c:url value="/dang-ky" />">Đăng ký</a>
								</div>

							</c:if>

						</div>
					</div>
				</li>


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
						<a href="<c:url value="/trang-chu" />" class="logo"> <img
							src="<c:url value="/assets/user/img/logo.png" />" alt="">
						</a>
					</div>
				</div>
				<!-- /LOGO -->

				<!-- SEARCH BAR -->
				<div class="col-md-6">
					<div class="header-search">
						<form>

							<%-- <select class="input-select">
								<option value="0">Tất cả thể loại</option>
								<c:forEach var="item" items="${ cateShare }">
									<option value="1">${ item.name }</option>
								</c:forEach>
								<!-- <option value="0">All Categories</option>

								<option value="1">Category 02</option> -->
							</select> --%>
							<input class="input" placeholder="Tìm kiếm tại đây">
							<button class="search-btn">Tìm kiếm</button>
						</form>
					</div>
				</div>
				<!-- /SEARCH BAR -->

				<!-- ACCOUNT -->
				<div class="col-md-3 clearfix">
					<div class="header-ctn">
						<!-- Cart -->
						<div class="dropdown">
							<a href="" class="dropdown-toggle" data-toggle="dropdown"
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
										href="<c:url value="/checkout" />">Thanh toán <i
										class="fa fa-arrow-circle-right"></i></a>
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
					<a href='<c:url value="/${ item.url }"/>'>${ item.name }</a>
					</li>

				</c:forEach>
			</ul>
			<!-- /NAV -->
		</div>
		<!-- /responsive-nav -->
	</div>
	<!-- /container -->
</nav>
<!-- /NAVIGATION -->