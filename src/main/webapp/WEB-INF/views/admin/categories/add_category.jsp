<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/views/layouts/admin/taglib.jsp"%>
<head>
<meta charset="UTF-8">
<title>Thêm loại sản phẩm</title>
</head>
<main>
	<div class="container-fluid px-4">
		<h1 class="mt-4">Thêm loại sản phẩm</h1>
		<ol class="breadcrumb mb-4">
			<li class="breadcrumb-item"><a
				href='<c:url value="/admin/list-categories"/>'>Danh sách loại sản phẩm</a></li>
			<li class="breadcrumb-item active">Thêm loại sản phẩm</li>
		</ol>
		<div>
			<form:form action="add-category" method="POST" modelAttribute="category">
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


				<button type="submit" class="btn btn-primary" style="margin-top: 20px">Thêm</button>
			</form:form>

		</div>
	</div>
</main>
