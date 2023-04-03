<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/views/layouts/admin/taglib.jsp"%>
<head>
<meta charset="UTF-8">
<title>Thêm người dùng</title>
</head>
<main>
	<div class="container-fluid px-4">
		<h1 class="mt-4">Thêm người dùng</h1>
		<ol class="breadcrumb mb-4">
			<li class="breadcrumb-item"><a href='<c:url value="/admin/list-user"/>'>Danh sách
					người dùng</a></li>
			<li class="breadcrumb-item active">Thêm người dùng</li>
		</ol>
		<div>
			<form:form action="add-user" method="POST" modelAttribute="user">
				<div class="form-group">
					<label for="exampleInputEmail1">Email</label>
					<form:input type="email" class="form-control"
						placeholder="Nhập email" path="user" />
					<!-- <small
						id="emailHelp" class="form-text text-muted">We'll never
						share your email with anyone else.</small> -->
					<div class="valid-feedback">Looks good!</div>
				</div>
				<div class="form-group">
					<label for="exampleInputPassword1">Mật khẩu</label>
					<form:input type="password" class="form-control"
						placeholder="Nhập mật khẩu" path="password" />
					<div class="invalid-feedback">Please provide a valid city.</div>
				</div>
				<div class="form-group">
					<label for="exampleInputEmail1">Họ và tên</label>
					<form:input type="text" class="form-control"
						placeholder="Nhập họ và tên" path="display_name" />
				</div>
				<div class="form-group">
					<label for="exampleInputEmail1">Địa chỉ</label>
					<form:input type="text" class="form-control"
						placeholder="Nhập địa chỉ" path="address" />
				</div>

				<button type="submit" class="btn btn-primary" style="margin-top: 20px">Thêm</button>
			</form:form>

		</div>
	</div>
</main>
