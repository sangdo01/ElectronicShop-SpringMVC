<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/views/layouts/user/taglib.jsp"%>
<head>
<title>Thanh toán</title>
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
					<li class="active">Trang thanh toán</li>
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

			<div class="col-md-7">
				<!-- Billing Details -->
				<div class="billing-details">
					<div class="section-title">
						<h3 class="title">Thông tin thanh toán</h3>
					</div>
					<form:form action="checkout" method="post" modelAttribute="bills">

						<div class="form-group">
							<form:input path="display_name" class="input" type="text"
								placeholder="Họ tên" />
						</div>
						<div class="form-group">
							<form:input path="user" class="input" type="text"
								placeholder="Email" />
						</div>
						<div class="form-group">
							<form:input path="phone" class="input" type="tel"
								placeholder="Số điện thoại" />
						</div>
						<div class="form-group">
							<form:textarea path="address" class="input" rows="5" cols="30"
								placeholder="Đại chỉ" />
						</div>
						<!-- Order notes -->
						<div class="order-notes">
							<form:textarea path="note" rows="5" cols="30" class="input"
								placeholder="Ghi chú" />
						</div>
						<div class="form-group">
							<div class="input-checkbox">
								<!-- <input type="checkbox" id="create-account"> <label
								for="create-account"> <span></span> Đăng ký tài khoản?
							</label> -->
								<a href="<c:url value="dang-ky" />"><span>Đăng ký tài
										khoản?</span> </a>
							</div>
						</div>
						<button type="submit" class="primary-btn order-submit"
							style="margin-top: 40px; margin-bottom: 20px">Đặt hàng</button>

					</form:form>


				</div>
				<!-- /Billing Details -->


			</div>

			<!-- Order Details -->
			<div class="col-md-5 order-details">
				<div class="section-title text-center">
					<h3 class="title">Hóa đơn của bạn</h3>
				</div>

				<div class="order-summary">
					<div class="order-col">
						<div>
							<strong>Sản phẩm</strong>
						</div>
						<div>
							<strong>Thành tiền</strong>
						</div>
					</div>
					<c:forEach var="item" items="${ Cart }">
						<div class="order-products">
							<div class="order-col">
								<div>${ item.value.quanty }x${ item.value.product.name }</div>
								<div>
									<fmt:formatNumber type="number" groupingUsed="true"
										value="${ item.value.totalPrice } " />
									₫
								</div>
							</div>
						</div>
					</c:forEach>


					<div class="order-col">
						<div>Giao hàng</div>
						<div>
							<strong>Miễn phí</strong>
						</div>
					</div>
					<div class="order-col">
						<div>
							<strong>Tổng tiền</strong>
						</div>
						<div>
							<strong class="order-total"><fmt:formatNumber
									type="number" groupingUsed="true" value="${ TotalPriceCart }" />
								₫</strong>
						</div>
					</div>
				</div>
				<div class="payment-method">
					<div class="input-radio">
						<input type="radio" name="payment" id="payment-3"> <label
							for="payment-3"> <span></span> Thanh toán khi nhận hàng
						</label>
						<div class="caption">
							<p>Sẽ thanh toán đơn hàng của bạn khi đơn hàng được giao.</p>
						</div>
					</div>
				</div>
				<a href="<c:url value="gio-hang" />"
					class="primary-btn order-submit">Xem giỏ hàng</a>
			</div>
			<!-- /Order Details -->
		</div>
		<!-- /row -->
	</div>
	<!-- /container -->
</div>
<!-- /SECTION -->