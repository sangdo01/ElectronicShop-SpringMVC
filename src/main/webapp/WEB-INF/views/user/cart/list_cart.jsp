<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/views/layouts/user/taglib.jsp"%>
<head>
<meta charset="UTF-8">
<title>Giỏ hàng</title>
<style type="text/css">
.btn-color {
	background-color: #4CAF50;
	border: none;
	color: white;
	padding: 15px 32px;
	text-align: center;
	text-decoration: none;
	display: inline-block;
	font-size: 16px;
	margin: 4px 2px;
}

#cart {
	border-collapse: collapse;
}

#cart td, #cart th {
	border: 1px solid #ddd;
	padding: 8px;
}

#cart th {
	padding-top: 12px;
	padding-bottom: 12px;
	text-align: left;
	background-color: #D10024;;
	color: white;
}

hr.boder-cart {
	border: 1px solid #D10024;;
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
					<li><a href="#">Trang chủ</a></li>
					<li class="active">Giỏ hàng</li>
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
			<div style="margin-bottom: 50px;">
				<h1>
					Giỏ hàng <small class="pull-right"> ${ TotalQuantyCart }
						sản phẩm trong giỏ hàng</small>
				</h1>
				<hr class="boder-cart">
			</div>
			<div class="container">
				<table id="cart" class="table table-hover table-condensed">
					<thead>
						<tr>
							<th style="width: 40%">Sản phẩm</th>
							<th style="width: 10%">Màu sắc</th>
							<th style="width: 10%">Giá bán</th>
							<th style="width: 8%">Số lượng</th>
							<th style="width: 22%" class="text-center">Thành tiền</th>
							<th style="width: 10%"></th>
						</tr>
					</thead>
					<tbody>

						<c:forEach var="item" items="${ Cart }">
							<tr>
								<td data-th="Product">
									<div class="row">
										<div class="col-sm-2 hidden-xs">
											<img
												src="<c:url value="/assets/user/img/product/${ item.value.product.img }" />"
												alt="" class="img-responsive" />
										</div>
										<div class="col-sm-10">
											<h4 class="nomargin">${ item.value.product.name }</h4>
											<p>Lorem ipsum dolor sit amet, consectetur adipisicing
												elit, sed do eiusmod tempor incididunt ut labore et dolore
												magna aliqua.</p>
										</div>
									</div>
								</td>
								<td data-th="Price"><span class="btn-color"
									style="background-color: ${ item.value.product.code_color };"></span></td>
								<td data-th="Price"><fmt:formatNumber type="number"
										groupingUsed="true" value="${ item.value.product.price }" />
									₫</td>
								<td data-th="Quantity"><input
									id="quanty-cart-${ item.key }" type="number" min="0" max="1000"
									class="form-control text-center" value="${ item.value.quanty }"></td>
								<td data-th="Subtotal" class="text-center"><fmt:formatNumber
										type="number" groupingUsed="true"
										value="${ item.value.totalPrice } " /> ₫</td>
								<td class="actions" data-th=""><button
										data-id="${ item.key }" class="btn btn-info btn-sm edit-cart">
										<i class="fa fa-refresh"></i>
									</button> <a href="<c:url value="/delete-cart/${ item.key }" />"
									class="btn btn-danger btn-sm"> <i class="fa fa-trash-o"></i>
								</a></td>
							</tr>
						</c:forEach>

					</tbody>
					<tfoot>
						<tr class="visible-xs">
							<td class="text-center"><strong>Total $ 5.11</strong></td>
						</tr>
						<tr>
							<td><a href="#" class="btn btn-warning"><i
									class="fa fa-angle-left"></i> Tiếp tục mua sắm</a></td>
							<td colspan="2" class="hidden-xs"></td>
							<td class="hidden-xs text-center"><strong>Tổng tiền
									<fmt:formatNumber type="number" groupingUsed="true"
										value="${ TotalPriceCart } " /> ₫
							</strong></td>
							<td><a href="#" class="btn btn-success btn-block">Thanh
									toán <i class="fa fa-angle-right"></i>
							</a></td>
						</tr>
					</tfoot>
				</table>
			</div>
		</div>




		<!-- /row -->
	</div>
	<!-- /container -->
</div>
<!-- /SECTION -->
<content tag="script"> <script>
	$(".edit-cart").on("click", function() {
		var id = $(this).data("id");
		var quanty = $("#quanty-cart-" + id).val();
		window.location = "edit-cart/" + id + "/" + quanty;
	});
</script> </content>

