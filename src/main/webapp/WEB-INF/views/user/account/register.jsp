<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/views/layouts/user/taglib.jsp"%>
<head>
<title>Đăng ký</title>
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
					<li class="active">Đăng ký</li>
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
			<form:form action="dang-ky" method="POST" modelAttribute="user">
				<div class="form-group">
					<label for="exampleInputEmail1">Email</label>
					<form:input type="email" class="form-control"
						placeholder="Nhập email" path="user"/>
					<!-- <small
						id="emailHelp" class="form-text text-muted">We'll never
						share your email with anyone else.</small> -->
					<div class="valid-feedback">Looks good!</div>
				</div>
				<div class="form-group">
					<label for="exampleInputPassword1">Mật khẩu</label>
					<form:input type="password" class="form-control"
						placeholder="Nhập mật khẩu" path="password"/>
					<div class="invalid-feedback">Please provide a valid city.</div>
				</div>
				<div class="form-group">
					<label for="exampleInputEmail1">Họ và tên</label>
					<form:input type="text" class="form-control"
						placeholder="Nhập họ và tên" path="display_name"/>
				</div>
				<div class="form-group">
					<label for="exampleInputEmail1">Địa chỉ</label>
					<form:input type="text" class="form-control"
						placeholder="Nhập địa chỉ" path="address" />
				</div>
				<div class="form-group form-check">
					<a href="<c:url value="/dang-nhap" />" style="cursor: pointer;"><label
						class="form-check-label" for="exampleCheck1">Bạn đã có tài
							khoản?</label></a>

				</div>
				<button type="submit" class="btn btn-primary">Đăng ký</button>
			</form:form>
		</div>
		<!-- /row -->
	</div>
	<!-- /container -->
</div>
<!-- /SECTION -->