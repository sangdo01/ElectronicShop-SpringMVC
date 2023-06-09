<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/views/layouts/admin/taglib.jsp"%>
<div id="layoutSidenav_nav">
	<nav class="sb-sidenav accordion sb-sidenav-dark" id="sidenavAccordion">
		<div class="sb-sidenav-menu">
			<div class="nav">
				<div class="sb-sidenav-menu-heading">Home</div>
				<a class="nav-link" href="<c:url value="/admin/trang-chu"/>">
					<div class="sb-nav-link-icon">
						<i class="fas fa-tachometer-alt"></i>
					</div> Doanh thu
				</a>
				<div class="sb-sidenav-menu-heading">Trang giao diện</div>
				<a class="nav-link collapsed" href="#" data-bs-toggle="collapse"
					data-bs-target="#collapseLayouts" aria-expanded="false"
					aria-controls="collapseLayouts">
					<div class="sb-nav-link-icon">
						<i class="fas fa-columns"></i>
					</div> Quản lý trang
					<div class="sb-sidenav-collapse-arrow">
						<i class="fas fa-angle-down"></i>
					</div>
				</a>
				<div class="collapse" id="collapseLayouts"
					aria-labelledby="headingOne" data-bs-parent="#sidenavAccordion">
					<nav class="sb-sidenav-menu-nested nav">
						<a class="nav-link" href="<c:url value="/admin/list-slide"/>">Slide
						</a>
					</nav>
				</div>
				<div class="sb-sidenav-menu-heading">Sản phẩm</div>
				<a class="nav-link collapsed" href="#" data-bs-toggle="collapse"
					data-bs-target="#collapseLayouts" aria-expanded="false"
					aria-controls="collapseLayouts">
					<div class="sb-nav-link-icon">
						<i class="fas fa-columns"></i>
					</div> Quản lý sản phẩm
					<div class="sb-sidenav-collapse-arrow">
						<i class="fas fa-angle-down"></i>
					</div>
				</a>
				<div class="collapse" id="collapseLayouts"
					aria-labelledby="headingOne" data-bs-parent="#sidenavAccordion">
					<nav class="sb-sidenav-menu-nested nav">
						<a class="nav-link" href="<c:url value="/admin/list-product"/>">Sản phẩm </a> <a
							class="nav-link" href="<c:url value="/admin/list-categories"/>">Loại sản
							phẩm</a> <%-- <a class="nav-link" href="<c:url value="/admin/list-color"/>">Màu
							- Ảnh Sản phẩm</a> --%>

					</nav>
				</div>

				<a class="nav-link" href='<c:url value="/admin/list-user"/>'>
					<div class="sb-nav-link-icon">
						<i class="fas fa-chart-area"></i>
					</div> Nguời dùng
				</a> <a class="nav-link" href="<c:url value="/admin/list-bills"/>">
					<div class="sb-nav-link-icon">
						<i class="fas fa-chart-area"></i>
					</div> Đơn đặt hàng
				</a>
			</div>
		</div>
		<div class="sb-sidenav-footer">
			<div class="small">Trang quản trị:</div>
			Electronic Shop
		</div>
	</nav>
</div>