<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/views/layouts/user/taglib.jsp"%>
<head>
<title>Sản - phẩm</title>
</head>


<!-- SECTION -->
<div class="section">
	<!-- container -->
	<div class="container">
		<!-- row -->
		<div class="row">
			<!-- ASIDE -->
			<div id="aside" class="col-md-3">
				<!-- aside Widget -->
				<div class="aside">
					<h3 class="aside-title">Loại sản phẩm</h3>
					<div class="checkbox-filter">
						<c:forEach var="item" items="${ cateShare }">
							<div class="input-checkbox">
								<!-- <input type="checkbox" id="category-1">
									<label for="category-1">
										<span></span>
										Laptops
										<small>(120)</small>
									</label> -->
								<div>
									<%-- <a href='<c:url value="/san-pham/${item.id }" />'><span></span> ${ item.name } <small>(120)</small></a> --%>
									<a href='<c:url value="/san-pham/${item.id }" />'><span></span>
										${ item.name } <small>(120)</small></a>
								</div>
							</div>
						</c:forEach>

						<!-- <div class="input-checkbox">
							<input type="checkbox" id="category-2"> <label
								for="category-2"> <span></span> Smartphones <small>(740)</small>
							</label>
						</div> -->

					</div>
				</div>
				<!-- /aside Widget -->

				<!-- aside Widget -->
				<div class="aside">
					<h3 class="aside-title">Price</h3>
					<div class="price-filter">
						<div id="price-slider"></div>
						<div class="input-number price-min">
							<input id="price-min" type="number"> <span class="qty-up">+</span>
							<span class="qty-down">-</span>
						</div>
						<span>-</span>
						<div class="input-number price-max">
							<input id="price-max" type="number"> <span class="qty-up">+</span>
							<span class="qty-down">-</span>
						</div>
					</div>
				</div>
				<!-- /aside Widget -->

				<!-- aside Widget -->
				<div class="aside">
					<h3 class="aside-title">Brand</h3>
					<div class="checkbox-filter">
						<div class="input-checkbox">
							<input type="checkbox" id="brand-1"> <label for="brand-1">
								<span></span> SAMSUNG <small>(578)</small>
							</label>
						</div>
						<div class="input-checkbox">
							<input type="checkbox" id="brand-2"> <label for="brand-2">
								<span></span> LG <small>(125)</small>
							</label>
						</div>
						<div class="input-checkbox">
							<input type="checkbox" id="brand-3"> <label for="brand-3">
								<span></span> SONY <small>(755)</small>
							</label>
						</div>
						<div class="input-checkbox">
							<input type="checkbox" id="brand-4"> <label for="brand-4">
								<span></span> SAMSUNG <small>(578)</small>
							</label>
						</div>
						<div class="input-checkbox">
							<input type="checkbox" id="brand-5"> <label for="brand-5">
								<span></span> LG <small>(125)</small>
							</label>
						</div>
						<div class="input-checkbox">
							<input type="checkbox" id="brand-6"> <label for="brand-6">
								<span></span> SONY <small>(755)</small>
							</label>
						</div>
					</div>
				</div>
				<!-- /aside Widget -->

				<!-- aside Widget -->
				<div class="aside">
					<h3 class="aside-title">Top selling</h3>
					<div class="product-widget">
						<div class="product-img">
							<img src="./img/product01.png" alt="">
						</div>
						<div class="product-body">
							<p class="product-category">Category</p>
							<h3 class="product-name">
								<a href="#">product name goes here</a>
							</h3>
							<h4 class="product-price">
								$980.00
								<del class="product-old-price">$990.00</del>
							</h4>
						</div>
					</div>

					<div class="product-widget">
						<div class="product-img">
							<img src="./img/product02.png" alt="">
						</div>
						<div class="product-body">
							<p class="product-category">Category</p>
							<h3 class="product-name">
								<a href="#">product name goes here</a>
							</h3>
							<h4 class="product-price">
								$980.00
								<del class="product-old-price">$990.00</del>
							</h4>
						</div>
					</div>

					<div class="product-widget">
						<div class="product-img">
							<img src="./img/product03.png" alt="">
						</div>
						<div class="product-body">
							<p class="product-category">Category</p>
							<h3 class="product-name">
								<a href="#">product name goes here</a>
							</h3>
							<h4 class="product-price">
								$980.00
								<del class="product-old-price">$990.00</del>
							</h4>
						</div>
					</div>
				</div>
				<!-- /aside Widget -->
			</div>
			<!-- /ASIDE -->

			<!-- STORE -->
			<div id="store" class="col-md-9">
				<!-- store top filter -->
				<div class="store-filter clearfix">
					<div class="store-sort">
						<label> Sort By: <select class="input-select">
								<option value="0">Popular</option>
								<option value="1">Position</option>
						</select>
						</label> <label> Show: <select class="input-select">
								<option value="0">20</option>
								<option value="1">50</option>
						</select>
						</label>
					</div>
					<ul class="store-grid">
						<li class="active"><i class="fa fa-th"></i></li>
						<li><a href="#"><i class="fa fa-th-list"></i></a></li>
					</ul>
				</div>
				<!-- /store top filter -->

				<!-- store products -->
				<div class="row">
					<!-- product -->
					<c:if test="${ productsPaginate.size() > 0 }">
						<c:forEach var="item" items="${ productsPaginate }">
							<div class="col-md-4 col-xs-6">
								<div class="product">
									<div class="product-img">
										<img
											src="<c:url value="/assets/user/img/product/${ item.img }" />"
											alt="">
										<div class="product-label">
											<span class="sale">-30%</span> <span class="new">NEW</span>
										</div>
									</div>
									<div class="product-body">
										<p class="product-category">Category</p>
										<h3 class="product-name">
											<a href="#">${ item.name }</a>
										</h3>
										<h4 class="product-price">
											<fmt:formatNumber type="number" groupingUsed="true"
												value="${ item.price }" />
											₫
											<del class="product-old-price">$990.00</del>
										</h4>
										<div class="product-rating">
											<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
												class="fa fa-star"></i> <i class="fa fa-star"></i> <i
												class="fa fa-star"></i>
										</div>
										<div class="product-btns">
											<button class="add-to-wishlist">
												<i class="fa fa-heart-o"></i><span class="tooltipp">add
													to wishlist</span>
											</button>
											<button class="add-to-compare">
												<i class="fa fa-exchange"></i><span class="tooltipp">add
													to compare</span>
											</button>
											<a href="<c:url value="/chi-tiet-san-pham/${item.id_product }" />" class="quick-view">
												<i class="fa fa-eye"></i><span class="tooltipp">Xem sản phẩm</span>
											</a>
										</div>
									</div>
									<div class="add-to-cart">
										<button class="add-to-cart-btn">
											<i class="fa fa-shopping-cart"></i> add to cart
										</button>
									</div>
								</div>
							</div>
							<!-- <div class="clearfix visible-sm visible-xs"></div> -->

						</c:forEach>

					</c:if>


					<!-- /product -->
				</div>
				<!-- /store products -->

				<!-- store bottom filter -->
				<div class="store-filter clearfix" style="margin-top: 60px">
					<span class="store-qty">Showing 20-100 products</span>
					<ul class="store-pagination">
						<c:forEach var="item" begin="1"
							end="${ paginateInfo.totalPage }" varStatus="loop">
							<c:if test="${ (loop.index) ==  paginateInfo.currentPage }">

								<li class="active"><a
									href="<c:url value="/san-pham/${ idCategory }/${ loop.index }" />">${ loop.index }</a></li>
							</c:if>
							<c:if test="${ (loop.index) !=  paginateInfo.currentPage }">
								<li><a href="<c:url value="/san-pham/${ idCategory }/${ loop.index }" />">${ loop.index }</a></li>
							</c:if>

						</c:forEach>
						<!-- <li><a href="#"><i class="fa fa-angle-left"></i></a></li>
						<li class="active">1</li>
						<li><a href="#">2</a></li>
						<li><a href="#">3</a></li>
						<li><a href="#">4</a></li>
						<li><a href="#"><i class="fa fa-angle-right"></i></a></li> -->
					</ul>
				</div>
				<!-- /store bottom filter -->
			</div>
			<!-- /STORE -->
		</div>
		<!-- /row -->
	</div>
	<!-- /container -->
</div>
<!-- /SECTION -->

