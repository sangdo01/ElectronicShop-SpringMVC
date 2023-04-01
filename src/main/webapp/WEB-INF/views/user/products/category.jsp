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
										${ item.name } <!-- <small>(120)</small> --></a>
								</div>
							</div>
						</c:forEach>

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
						<label> Sắp xếp: <select class="input-select">
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
												value="${ item.price }" />
											₫
										</h4>
										<div class="product-rating">
											<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
												class="fa fa-star"></i> <i class="fa fa-star"></i> <i
												class="fa fa-star"></i>
										</div>
										<div class="product-btns">
											<a
												href="<c:url value="/chi-tiet-san-pham/${item.id_product }" />"
												class="quick-view"> <i class="fa fa-eye"></i><span
												class="tooltipp">Xem sản phẩm</span>
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
							</div>
							<!-- <div class="clearfix visible-sm visible-xs"></div> -->

						</c:forEach>

					</c:if>


					<!-- /product -->
				</div>
				<!-- /store products -->

				<!-- store bottom filter -->
				<div class="store-filter clearfix" style="margin-top: 60px">
					<span class="store-qty">Hiển thị ${ paginateInfo.currentPage }
						/ ${ paginateInfo.totalPage } trang</span>
					<ul class="store-pagination">
						<c:forEach var="item" begin="1" end="${ paginateInfo.totalPage }"
							varStatus="loop">
							<c:if test="${ (loop.index) ==  paginateInfo.currentPage }">

								<li class="active"><a
									href="<c:url value="/san-pham/${ idCategory }/${ loop.index }" />">${ loop.index }</a></li>
							</c:if>
							<c:if test="${ (loop.index) !=  paginateInfo.currentPage }">
								<li><a
									href="<c:url value="/san-pham/${ idCategory }/${ loop.index }" />">${ loop.index }</a></li>
							</c:if>

						</c:forEach>
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

