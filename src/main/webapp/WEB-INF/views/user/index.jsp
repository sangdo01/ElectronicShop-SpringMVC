<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/views/layouts/user/taglib.jsp"%>
<title>Trang chủ</title>
<style>
</style>
<!-- SECTION -->
<div class="section">
	<!-- container -->
	<div class="container">
		<!-- row -->
		<div class="row">
			<div class="slider">
				<div class="slide_viewer">
					<div class="slide_group">
						<c:forEach var="item" items="${ slides }">
							<div class="slide">
								<img class="mySlides"
									src="<c:url value="/assets/user/img/slide/${ item.img }" /> "
									style="width: 100%; object-fit: contain;">
								<div class="text-block">
									<h4>${ item.caption }</h4>
									<p>${ item.content }</p>
								</div>

							</div>
						</c:forEach>
					</div>
				</div>
			</div>
			<!-- End // .slider -->

			<div class="slide_buttons"></div>

			<div class="directional_nav">
				<div class="previous_btn" title="Previous">
					<svg version="1.1" xmlns="http://www.w3.org/2000/svg"
						xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px"
						width="65px" height="65px" viewBox="-11 -11.5 65 66">
      <g>
        <g>
          <path fill="#474544"
							d="M-10.5,22.118C-10.5,4.132,4.133-10.5,22.118-10.5S54.736,4.132,54.736,22.118
			c0,17.985-14.633,32.618-32.618,32.618S-10.5,40.103-10.5,22.118z M-8.288,22.118c0,16.766,13.639,30.406,30.406,30.406 c16.765,0,30.405-13.641,30.405-30.406c0-16.766-13.641-30.406-30.405-30.406C5.35-8.288-8.288,5.352-8.288,22.118z" />
          <path fill="#474544"
							d="M25.43,33.243L14.628,22.429c-0.433-0.432-0.433-1.132,0-1.564L25.43,10.051c0.432-0.432,1.132-0.432,1.563,0	c0.431,0.431,0.431,1.132,0,1.564L16.972,21.647l10.021,10.035c0.432,0.433,0.432,1.134,0,1.564	c-0.215,0.218-0.498,0.323-0.78,0.323C25.929,33.569,25.646,33.464,25.43,33.243z" />
        </g>
      </g>
    </svg>
				</div>
				<div class="next_btn" title="Next">
					<svg version="1.1" xmlns="http://www.w3.org/2000/svg"
						xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px"
						width="65px" height="65px" viewBox="-11 -11.5 65 66">
      <g>
        <g>
          <path fill="#474544"
							d="M22.118,54.736C4.132,54.736-10.5,40.103-10.5,22.118C-10.5,4.132,4.132-10.5,22.118-10.5	c17.985,0,32.618,14.632,32.618,32.618C54.736,40.103,40.103,54.736,22.118,54.736z M22.118-8.288	c-16.765,0-30.406,13.64-30.406,30.406c0,16.766,13.641,30.406,30.406,30.406c16.768,0,30.406-13.641,30.406-30.406 C52.524,5.352,38.885-8.288,22.118-8.288z" />
          <path fill="#474544"
							d="M18.022,33.569c 0.282,0-0.566-0.105-0.781-0.323c-0.432-0.431-0.432-1.132,0-1.564l10.022-10.035 			L17.241,11.615c 0.431-0.432-0.431-1.133,0-1.564c0.432-0.432,1.132-0.432,1.564,0l10.803,10.814c0.433,0.432,0.433,1.132,0,1.564 L18.805,33.243C18.59,33.464,18.306,33.569,18.022,33.569z" />
        </g>
      </g>
    </svg>
				</div>
			</div>
			<!-- End // .directional_nav -->

		</div>
	</div>
</div>
<!-- SECTION -->
<div class="section">
	<!-- container -->
	<div class="container">
		<!-- row -->
		<div class="row">
			<!-- section title -->
			<div class="col-md-12">
				<div class="section-title">
					<h3 class="title">Sản Phẩm Mới</h3>
					<div class="section-nav">
						<ul class="section-tab-nav tab-nav">
							<c:forEach var="item" items="${ categories }" varStatus="index">
								<c:if test="${index.first}">
									<li class="active">
								</c:if>
								<c:if test="${ not index.first}">
									<li>
								</c:if>
								<%-- <a data-toggle="tab" href="<c:url value="/san-pham" />">${ item.name }</a> --%>
								<a href="<c:url value="/san-pham" />">${ item.name }</a>
								</li>

							</c:forEach>
							<!-- <li class="active"><a data-toggle="tab" href="#tab1">Laptops</a></li>
							<li><a data-toggle="tab" href="#tab1">Smartphones</a></li>
							<li><a data-toggle="tab" href="#tab1">Cameras</a></li>
							<li><a data-toggle="tab" href="#tab1">Accessories</a></li> -->
						</ul>
					</div>
				</div>
			</div>
			<!-- /section title -->
			<!-- Products tab & slick -->
			<div class="col-md-12">
				<div class="row">
					<div class="products-tabs">
						<!-- tab -->
						<div id="tab1" class="tab-pane active">
							<div class="products-slick" data-nav="#slick-nav-1">

								<c:if test="${products.size() > 0 }">
									<c:forEach var="item" items="${ products }">
										<!-- product -->
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

													<del class="product-old-price">$980.00</del>
												</h4>
												<div class="product-rating">
													<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
														class="fa fa-star"></i> <i class="fa fa-star"></i> <i
														class="fa fa-star"></i>
												</div>
												<div class="product-btns">
													<!-- <button class="add-to-wishlist">
														<i class="fa fa-heart-o"></i><span class="tooltipp">add
															to wishlist</span>
													</button>
													<button class="add-to-compare">
														<i class="fa fa-exchange"></i><span class="tooltipp">add
															to compare</span>
													</button> -->
													<a class="quick-view"
														href="<c:url value="/chi-tiet-san-pham/${item.id_product }" />">
														<i class="fa fa-eye"></i><span class="tooltipp">
															Xem sản phẩm</span>
													</a>
												</div>
											</div>
											<div class="add-to-cart">
												<a href="<c:url value="/add-cart/${ item.id_product }" />"
													class="add-to-cart-btn"> <i class="fa fa-shopping-cart"></i>
													Thêm giỏ hàng
												</a>
											</div>
										</div>
										<!-- /product -->
									</c:forEach>


								</c:if>


							</div>
							<div id="slick-nav-1" class="products-slick-nav"></div>
						</div>
						<!-- /tab -->
					</div>
				</div>
			</div>
			<!-- Products tab & slick -->
		</div>
		<!-- /row -->
	</div>
	<!-- /container -->
</div>
<!-- /SECTION -->



<!-- HOT DEAL SECTION -->
<div id="hot-deal" class="section">
	<!-- container -->
	<div class="container">
		<!-- row -->
		<div class="row">
			<div class="col-md-12">
				<div class="hot-deal">
					<ul class="hot-deal-countdown">
						<li>
							<div>
								<h3>02</h3>
								<span>Days</span>
							</div>
						</li>
						<li>
							<div>
								<h3>10</h3>
								<span>Hours</span>
							</div>
						</li>
						<li>
							<div>
								<h3>34</h3>
								<span>Mins</span>
							</div>
						</li>
						<li>
							<div>
								<h3>60</h3>
								<span>Secs</span>
							</div>
						</li>
					</ul>
					<h2 class="text-uppercase">hot deal this week</h2>
					<p>New Collection Up to 50% OFF</p>
					<a class="primary-btn cta-btn" href="#">Shop now</a>
				</div>
			</div>
		</div>
		<!-- /row -->
	</div>
	<!-- /container -->
</div>
<!-- /HOT DEAL SECTION -->
<!-- SECTION Sản Phẩm Nổi Bật-->
<div class="section" style="margin-bottom: 40px">
	<!-- container -->
	<div class="container">
		<!-- row -->
		<div class="row">
			<!-- section title -->
			<div class="col-md-12">
				<div class="section-title">
					<h3 class="title">Sản Phẩm Nổi Bật</h3>
					<div class="section-nav">
						<ul class="section-tab-nav tab-nav">
							<c:forEach var="item" items="${ categories }" varStatus="index">
								<c:if test="${index.first}">
									<li class="active">
								</c:if>
								<c:if test="${ not index.first}">
									<li>
								</c:if>
								<a data-toggle="tab" href="/sanpham/${ item.id }">${ item.name }</a>
								</li>

							</c:forEach>
							<!-- <li class="active"><a data-toggle="tab" href="#tab1">Laptops</a></li>
							<li><a data-toggle="tab" href="#tab1">Smartphones</a></li>
							<li><a data-toggle="tab" href="#tab1">Cameras</a></li>
							<li><a data-toggle="tab" href="#tab1">Accessories</a></li> -->
						</ul>
					</div>
				</div>
			</div>
			<!-- /section title -->

			<!-- Products tab & slick -->
			<div class="col-md-12">
				<div class="row">
					<div class="products-tabs">
						<!-- tab -->
						<div id="tab1" class="tab-pane active">
							<div class="products-slick" data-nav="#slick-nav-1">
								<c:if test="${products.size() > 0 }">
									<c:forEach var="item" items="${ products }">
										<!-- product -->
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

													<del class="product-old-price">$980.00</del>
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
													<a class="quick-view"
														href="chi-tiet-san-pham/${ item.id_product }"> <i
														class="fa fa-eye"></i><span class="tooltipp">Xem
															chi tiết</span>
													</a>
												</div>
											</div>
											<div class="add-to-cart">
												<a href="<c:url value="/add-cart/${ item.id_product }" />"
													class="add-to-cart-btn"> <i class="fa fa-shopping-cart"></i>
													Add to cart
												</a>
											</div>
										</div>
										<!-- /product -->
									</c:forEach>


								</c:if>





							</div>
							<div id="slick-nav-1" class="products-slick-nav"></div>
						</div>
						<!-- /tab -->
					</div>
				</div>
			</div>
			<!-- Products tab & slick -->
		</div>
		<!-- /row -->
	</div>
	<!-- /container -->
</div>
<!-- /SECTION -->


<content tag="script"> <script
	src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
<script>
	$(".slider").each(function() {
		var $this = $(this);
		var $group = $this.find(".slide_group");
		var $slides = $this.find(".slide");
		var bulletArray = [];
		var currentIndex = 0;
		var timeout;

		function move(newIndex) {
			var animateLeft, slideLeft;

			advance();

			if ($group.is(":animated") || currentIndex === newIndex) {
				return;
			}

			bulletArray[currentIndex].removeClass("active");
			bulletArray[newIndex].addClass("active");

			if (newIndex > currentIndex) {
				slideLeft = "100%";
				animateLeft = "-100%";
			} else {
				slideLeft = "-100%";
				animateLeft = "100%";
			}

			$slides.eq(newIndex).css({
				display : "block",
				left : slideLeft
			});
			$group.animate({
				left : animateLeft
			}, function() {
				$slides.eq(currentIndex).css({
					display : "none"
				});
				$slides.eq(newIndex).css({
					left : 0
				});
				$group.css({
					left : 0
				});
				currentIndex = newIndex;
			});
		}

		function advance() {
			clearTimeout(timeout);
			timeout = setTimeout(function() {
				if (currentIndex < $slides.length - 1) {
					move(currentIndex + 1);
				} else {
					move(0);
				}
			}, 4000);
		}

		$(".next_btn").on("click", function() {
			if (currentIndex < $slides.length - 1) {
				move(currentIndex + 1);
			} else {
				move(0);
			}
		});

		$(".previous_btn").on("click", function() {
			if (currentIndex !== 0) {
				move(currentIndex - 1);
			} else {
				move(3);
			}
		});

		$.each($slides, function(index) {
			var $button = $('<a class="slide_btn">&bull;</a>');

			if (index === currentIndex) {
				$button.addClass("active");
			}
			$button.on("click", function() {
				move(index);
			}).appendTo(".slide_buttons");
			bulletArray.push($button);
		});

		advance();
	});
</script> </content>
