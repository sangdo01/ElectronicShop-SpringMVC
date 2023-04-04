<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/views/layouts/admin/taglib.jsp"%>
<head>
<meta charset="UTF-8">
<title>Chỉnh sửa Slide</title>
</head>
<main>
	<div class="container-fluid px-4">
		<h1 class="mt-4">Chỉnh sửa Slide</h1>
		<ol class="breadcrumb mb-4">
			<li class="breadcrumb-item"><a
				href='<c:url value="/admin/list-slide"/>'>Danh sách Slide</a></li>
			<li class="breadcrumb-item active">Chỉnh sửa Slide</li>
		</ol>
		<div>
			<form:form action="edit-slide" method="POST" modelAttribute="slides"
				enctype="multipart/form-data">
				<div class="form-group">
					<form:hidden path="id" />
					<label>Chủ đề</label>
					<form:input type="text" class="form-control"
						placeholder="Nhập Chủ đề" path="caption" />
				</div>
				<div class="form-group">
					<label>Nội dung</label>
					<form:input type="text" class="form-control"
						placeholder="Nhập nội dung" path="content" />
				</div>
				<div class="form-group">
					<label>Hình ảnh</label> <input type="file" name="image"
						class="form-control" placeholder="Nhập họ và tên" path="img" />
				</div>


				<button type="submit" class="btn btn-primary"
					style="margin-top: 20px">Cập nhật</button>
			</form:form>

		</div>
	</div>
</main>