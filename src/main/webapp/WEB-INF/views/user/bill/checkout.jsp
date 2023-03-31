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
					<li><a href="#">Trang chủ</a></li>
					<li class="active">Checkout</li>
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
						<!-- /Order notes -->
						<!-- <a href="#" class="primary-btn order-submit"
							style="margin-top: 40px; margin-bottom: 20px">Đặt hàng</a> -->
						<button type="submit" class="primary-btn order-submit"
							style="margin-top: 40px; margin-bottom: 20px">Đặt hàng</button>

					</form:form>

					<div class="form-group">
						<div class="input-checkbox">
							<input type="checkbox" id="create-account"> <label
								for="create-account"> <span></span> Create Account?
							</label>
							<div class="caption">
								<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit,
									sed do eiusmod tempor incididunt.</p>
								<input class="input" type="password" name="password"
									placeholder="Enter Your Password">
							</div>
						</div>
					</div>
				</div>
				<!-- /Billing Details -->


			</div>

			<!-- Order Details -->
			<div class="col-md-5 order-details">
				<div class="section-title text-center">
					<h3 class="title">Your Order</h3>
				</div>
				<div class="order-summary">
					<div class="order-col">
						<div>
							<strong>PRODUCT</strong>
						</div>
						<div>
							<strong>TOTAL</strong>
						</div>
					</div>
					<div class="order-products">
						<div class="order-col">
							<div>1x Product Name Goes Here</div>
							<div>$980.00</div>
						</div>
						<div class="order-col">
							<div>2x Product Name Goes Here</div>
							<div>$980.00</div>
						</div>
					</div>
					<div class="order-col">
						<div>Shiping</div>
						<div>
							<strong>FREE</strong>
						</div>
					</div>
					<div class="order-col">
						<div>
							<strong>TOTAL</strong>
						</div>
						<div>
							<strong class="order-total">$2940.00</strong>
						</div>
					</div>
				</div>
				<div class="payment-method">
					<div class="input-radio">
						<input type="radio" name="payment" id="payment-1"> <label
							for="payment-1"> <span></span> Direct Bank Transfer
						</label>
						<div class="caption">
							<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit,
								sed do eiusmod tempor incididunt ut labore et dolore magna
								aliqua.</p>
						</div>
					</div>
					<div class="input-radio">
						<input type="radio" name="payment" id="payment-2"> <label
							for="payment-2"> <span></span> Cheque Payment
						</label>
						<div class="caption">
							<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit,
								sed do eiusmod tempor incididunt ut labore et dolore magna
								aliqua.</p>
						</div>
					</div>
					<div class="input-radio">
						<input type="radio" name="payment" id="payment-3"> <label
							for="payment-3"> <span></span> Paypal System
						</label>
						<div class="caption">
							<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit,
								sed do eiusmod tempor incididunt ut labore et dolore magna
								aliqua.</p>
						</div>
					</div>
				</div>
				<div class="input-checkbox">
					<input type="checkbox" id="terms"> <label for="terms">
						<span></span> I've read and accept the <a href="#">terms &
							conditions</a>
					</label>
				</div>
				<a href="#" class="primary-btn order-submit">Place order</a>
			</div>
			<!-- /Order Details -->
		</div>
		<!-- /row -->
	</div>
	<!-- /container -->
</div>
<!-- /SECTION -->