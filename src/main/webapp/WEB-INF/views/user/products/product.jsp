<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/views/layouts/user/taglib.jsp"%>
<head>
<meta charset="UTF-8">
<title>Chi tiết sản phẩm</title>
</head>
<!-- BREADCRUMB -->
<div id="breadcrumb" class="section">
	<!-- container -->
	<div class="container">
		<!-- row -->
		<div class="row">
			<div class="col-md-12">
				<ul class="breadcrumb-tree">
					<li><a href="<c:url value="/trang-chu" />">Trang chủ</a></li>
					<li><a href="<c:url value="/san-pham" />">Sản phẩm</a></li>
					<!-- <li><a href="#">Accessories</a></li>
					<li><a href="#">Headphones</a></li> -->
					<li class="active">Chi tiết sản phẩm</li>
				</ul>
			</div>
		</div>
		<!-- /row -->
	</div>
	<!-- /container -->
</div>
<!-- /BREADCRUMB -->
<!-- SECTION Chi tiết sản phẩm -->
<div class="section">
	<!-- container -->
	<div class="container">
		<!-- row -->
		<div class="row">
			<!-- Product main img -->
			<div class="col-md-5 col-md-push-2">
				<div id="product-main-img">
					<div class="product-preview">
						<img
							src="<c:url value="/assets/user/img/product/${ product.img }" />"
							alt="">
					</div>

					<!-- <div class="product-preview">
						<img src="./img/product03.png" alt="">
					</div>

					<div class="product-preview">
						<img src="./img/product06.png" alt="">
					</div>

					<div class="product-preview">
						<img src="./img/product08.png" alt="">
					</div> -->
				</div>
			</div>
			<!-- /Product main img -->

			<!-- Product thumb imgs -->
			<div class="col-md-2  col-md-pull-5">
				<div id="product-imgs">
					<div class="product-preview">
						<img
							src="<c:url value="/assets/user/img/product/${ product.img }" />"
							alt="">
					</div>

					<!-- <div class="product-preview">
						<img src="./img/product03.png" alt="">
					</div>

					<div class="product-preview">
						<img src="./img/product06.png" alt="">
					</div>

					<div class="product-preview">
						<img src="./img/product08.png" alt="">
					</div> -->
				</div>
			</div>
			<!-- /Product thumb imgs -->

			<!-- Product details -->
			<div class="col-md-5">
				<div class="product-details">
					<h2 class="product-name">${ product.name }</h2>

					<form action="<c:url value="/add-cart/${ product.id_product }" />"
						method="get">
						<!-- <div>
							<div class="product-rating">
								<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
									class="fa fa-star"></i> <i class="fa fa-star"></i> <i
									class="fa fa-star-o"></i>
							</div>
							<a class="review-link" href="#">10 Review(s) | Add your
								review</a>
						</div> -->
						<div>
							<h3 class="product-price">
								<fmt:formatNumber type="number" groupingUsed="true"
									value="${ product.price }" />
								₫
								<!-- <del class="product-old-price">$990.00</del> -->
							</h3>
							<!-- <span class="product-available">In Stock</span> -->
						</div>
						<p>${ product.title }</p>

						<div class="product-options">
							<!-- <label> Size <select class="input-select">
									<option value="0">X</option>
							</select> -->
							</label> <label> Màu <select class="input-select">
									<option value="0">Red</option>
							</select>
							</label>
						</div>

						<div class="add-to-cart">
							<div class="qty-label">
								Số lượng
								<div class="input-number">
									<input type="number" min="0" value="0"> <span
										class="qty-up">+</span> <span class="qty-down">-</span>
								</div>
							</div>
							<button type="submit" class="add-to-cart-btn">
								<i class="fa fa-shopping-cart"></i> Thêm vào giỏ hàng
							</button>
						</div>

						<!-- <ul class="product-btns">
							<li><a href="#"><i class="fa fa-heart-o"></i> add to
									wishlist</a></li>
							<li><a href="#"><i class="fa fa-exchange"></i> add to
									compare</a></li>
						</ul> -->

						<!-- <ul class="product-links">
							<li>Loại sản phẩm:</li>
							<li><a href="#">Headphones</a></li>
							<li><a href="#">Accessories</a></li>
						</ul> -->
					</form>


				</div>
			</div>
			<!-- /Product details -->

			<!-- Product tab -->
			<div class="col-md-12">
				<div id="product-tab">
					<!-- product tab nav -->
					<ul class="tab-nav">
						<li class="active"><a data-toggle="tab" href="#tab1">Thông
								tin sản phẩm</a></li>
						<li><a data-toggle="tab" href="#tab2">Mô tả</a></li>
						<!-- <li><a data-toggle="tab" href="#tab3">Reviews (3)</a></li> -->
					</ul>
					<!-- /product tab nav -->

					<!-- product tab content -->
					<div class="tab-content">
						<!-- tab1  -->
						<div id="tab1" class="tab-pane fade in active">
							<div class="row">
								<div class="col-md-12">
									<!-- <p></p> -->
									${ product.details }
								</div>
							</div>
						</div>
						<!-- /tab1  -->

						<!-- tab2  -->
						<div id="tab2" class="tab-pane fade in">
							<div class="row">
								<div class="col-md-12">
									<p>Lorem ipsum dolor sit amet, consectetur adipisicing
										elit, sed do eiusmod tempor incididunt ut labore et dolore
										magna aliqua. Ut enim ad minim veniam, quis nostrud
										exercitation ullamco laboris nisi ut aliquip ex ea commodo
										consequat. Duis aute irure dolor in reprehenderit in voluptate
										velit esse cillum dolore eu fugiat nulla pariatur. Excepteur
										sint occaecat cupidatat non proident, sunt in culpa qui
										officia deserunt mollit anim id est laborum.</p>
								</div>
							</div>
						</div>
						<!-- /tab2  -->

						<!-- tab3  -->
						<!-- nếu đủ thời gian thì làm thêm chức năng Rating này :)) -->
						<!-- /Rating -->

						<!-- Reviews -->
						<!-- nếu đủ thời gian thì làm thêm chức năng Reviews này :)) -->
						<!-- /Reviews -->

						<!-- Review Form -->

						<!-- /Review Form -->
					</div>
				</div>
				<!-- /tab3  -->
			</div>
			<!-- /product tab content  -->
		</div>
	</div>
	<!-- /product tab -->
</div>
<!-- /row -->
</div>
<!-- /container -->
</div>
<!-- /SECTION -->

<!-- Section Sản phẩm tương tự -->
<div class="section">
	<!-- container -->
	<div class="container">
		<!-- row -->
		<div class="row">

			<div class="col-md-12">
				<div class="section-title text-center">
					<h3 class="title">Sản phẩm tương tự</h3>
				</div>
			</div>
			<!-- product -->
			<c:set var="countList" value="${productByIDCategory.size() }"></c:set>
			<c:if test="${productByIDCategory.size() > 8}">
				<c:set var="countList" value="8"></c:set>
			</c:if>
			<c:forEach var="item" items="${ productByIDCategory }" begin="1"
				end="${ countList }" varStatus="loop">
				<div class="col-md-3 col-xs-6">
					<div class="product">
						<div class="product-img">
							<img
								src="<c:url value="/assets/user/img/product/${ item.img }" />"
								alt="">
							<div class="product-label">
								<span class="new">Mới</span>
							</div>
						</div>
						<div class="product-body">
							<p class="product-category">Category</p>
							<h3 class="product-name">
								<a href="#">${ item.name }</a>
							</h3>
							<h4 class="product-price">
								<fmt:formatNumber type="number" groupingUsed="true"
									value="${ product.price }" />
								₫
							</h4>
							<div class="product-rating"></div>
							<div class="product-btns">
								<a
									href="<c:url value="/chi-tiet-san-pham/${item.id_product }" />"
									class="quick-view"> <i class="fa fa-eye"></i><span
									class="tooltipp">Chi tiết</span>
								</a>
							</div>
						</div>
						<div class="add-to-cart">
							<a href="<c:url value="/add-cart/${ item.id_product }" />"
								class="add-to-cart-btn"> <i class="fa fa-shopping-cart"></i>Thêm
								giỏ hàng
							</a>
						</div>
					</div>
				</div>

			</c:forEach>

			<!-- /product -->




		</div>
		<!-- /row -->
	</div>
	<!-- /container -->
</div>
<!-- /Section -->