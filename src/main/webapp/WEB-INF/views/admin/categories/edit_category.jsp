<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/views/layouts/admin/taglib.jsp"%>
<head>
<meta charset="UTF-8">
<title>Chỉnh sửa loại sản phẩm</title>
</head>
<main>
	<div class="container-fluid px-4">
		<h1 class="mt-4">Chỉnh sửa loại sản phẩm</h1>
		<ol class="breadcrumb mb-4">
			<li class="breadcrumb-item"><a
				href='<c:url value="/admin/list-categories"/>'>Danh sách loại
					sản phẩm</a></li>
			<li class="breadcrumb-item active">Chỉnh sửa loại sản phẩm</li>
		</ol>
		<div>
			<form:form action="edit-category" method="POST"
				modelAttribute="category">
				<form:hidden path="id" />
				<div class="form-group">
					<label>Loại sản phẩm</label>
					<form:input type="text" class="form-control"
						placeholder="Nhập Chủ đề" path="name" />
				</div>
				<div class="form-group">
					<label>Mô tả loại sản phẩm</label>
					<form:input type="text" class="form-control"
						placeholder="Nhập nội dung" path="desciption" />
				</div>


				<button type="submit" class="btn btn-primary"
					style="margin-top: 20px">Cập nhật</button>
			</form:form>

		</div>
	</div>
</main>