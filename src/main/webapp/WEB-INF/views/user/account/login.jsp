<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/views/layouts/user/taglib.jsp"%>
<head>
<title>Đăng nhập</title>
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
					<li class="active">Đăng nhập</li>
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
			<h1>${ statusLogin }</h1>
			<form:form action="dang-nhap" method="POST" modelAttribute="userLoginModel">
				<div class="form-group">
					<label for="exampleInputEmail1">Email</label>
					<form:input type="email" class="form-control"
						placeholder="Nhập email" path="user" />
					<small id="emailHelp" class="form-text text-muted">We'll
						never share your email with anyone else.</small>
				</div>
				<div class="form-group">
					<label for="exampleInputPassword1">Mật khẩu</label>
					<form:input type="password" class="form-control"
						placeholder="Nhập mật khẩu" path="password" />
				</div>
				<div class="form-group form-check">
					<a href="<c:url value="/dang-ky" />" style="cursor: pointer;"><label
						class="form-check-label" for="exampleCheck1">Bạn chưa có
							tài khoản?</label></a>

				</div>
				<button type="submit" class="btn btn-primary">Đăng nhập</button>
			</form:form>
		</div>
		<!-- /row -->
	</div>
	<!-- /container -->
</div>
<!-- /SECTION -->