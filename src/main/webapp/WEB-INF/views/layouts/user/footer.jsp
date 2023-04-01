<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/views/layouts/user/taglib.jsp"%>
<!-- FOOTER -->
<footer id="footer">
	<!-- top footer -->
	<div class="section">
		<!-- container -->
		<div class="container">
			<!-- row -->
			<div class="row">
				<div class="col-md-3 col-xs-6">
					<div class="footer">
						<h3 class="footer-title">Thông tin</h3>
						<p>CÔNG TY TNHH THƯƠNG MẠI Electronic: HỆ THỐNG TỔNG ĐÀI MIỄN
							PHÍ: (Làm việc từ 08h00 - 21h00).</p>
						<ul class="footer-links">
							<li><a href="#"><i class="fa fa-map-marker"></i>TP. Ho
									Chi Minh</a></li>
							<li><a href="#"><i class="fa fa-phone"></i>+0333-???-???</a></li>
							<li><a href="#"><i class="fa fa-envelope-o"></i>email@email.com</a></li>
						</ul>
					</div>
				</div>

				<div class="col-md-3 col-xs-6">
					<div class="footer">
						<h3 class="footer-title">Loại sản phẩm</h3>
						<ul class="footer-links">
							<c:forEach var="item" items="${ cateShare }">
								<li><a href='<c:url value="/san-pham/${ item.id }"/>'>${ item.name }</a></li>
							</c:forEach>



						</ul>
					</div>
				</div>

				<div class="clearfix visible-xs"></div>

				<div class="col-md-3 col-xs-6">
					<div class="footer">
						<h3 class="footer-title">Thông tin liên hệ</h3>
						<ul class="footer-links">
							<li><a href='<c:url value="/about"/>'>Về chúng tôi</a></li>
							<li><a href="<c:url value="/lien-he"/>">Liên hệ</a></li>
							<li><a href="#">Chính sách</a></li>
							<li><a href="#">Thanh toán và trả hàng</a></li>
							<li><a href="#">Điều khoản và điều kiện</a></li>
						</ul>
					</div>
				</div>

				<div class="col-md-3 col-xs-6">
					<div class="footer">
						<h3 class="footer-title">Dịch vụ</h3>
						<ul class="footer-links">
							<li><a href='<c:url value="/dang-nhap"/>'>Tài khoản</a></li>
							<li><a href="<c:url value="/gio-hang"/>">Xem giỏ hàng</a></li>
							<li><a href="#">Yêu thích</a></li>
							<li><a href="<c:url value="/gio-hang"/>">Theo dõi đơn hàng của tôi</a></li>
							<li><a href="#">Giúp đỡ</a></li>
						</ul>
					</div>
				</div>
			</div>
			<!-- /row -->
		</div>
		<!-- /container -->
	</div>
	<!-- /top footer -->

	<!-- bottom footer -->
	<div id="bottom-footer" class="section">
		<div class="container">
			<!-- row -->
			<div class="row">
				<div class="col-md-12 text-center">
					<ul class="footer-payments">
						<li><a href="#"><i class="fa fa-cc-visa"></i></a></li>
						<li><a href="#"><i class="fa fa-credit-card"></i></a></li>
						<li><a href="#"><i class="fa fa-cc-paypal"></i></a></li>
						<li><a href="#"><i class="fa fa-cc-mastercard"></i></a></li>
						<li><a href="#"><i class="fa fa-cc-discover"></i></a></li>
						<li><a href="#"><i class="fa fa-cc-amex"></i></a></li>
					</ul>
					<span class="copyright"> <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
						Copyright &copy;<script>
							document.write(new Date().getFullYear());
						</script> All rights reserved | This template is made with <i
						class="fa fa-heart-o" aria-hidden="true"></i> by <a href="#"
						target="_blank">DVS - 19DTHA1</a> <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
					</span>
				</div>
			</div>
			<!-- /row -->
		</div>
		<!-- /container -->
	</div>
	<!-- /bottom footer -->
</footer>
<!-- /FOOTER -->