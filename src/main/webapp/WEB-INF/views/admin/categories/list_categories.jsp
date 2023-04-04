<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/views/layouts/admin/taglib.jsp"%>
<head>
<meta charset="UTF-8">
<title>Danh sách danh mục</title>
</head>
<main>
	<div class="container-fluid px-4">
		<h1 class="mt-4">Danh sách danh mục</h1>
		<div>
			<%-- <c:if test="${ not empty statusDelete }">
				<div class="alert alert-success" role="alert">${ statusDelete }</div>
			</c:if> --%>


			<a href="<c:url value="/admin/add-category"/>"
				class="btn btn-primary btn-lg" href="#" role="button"
				style="margin-bottom: 20px">Thêm danh mục</a>
			<div class="card mb-4">
				<div class="card-header">
					<i class="fas fa-table me-1"></i> Danh sách
				</div>
				<div class="card-body">
					<table id="datatablesSimple">
						<thead>
							<tr>
								<th>Loại sản phẩm</th>
								<th>Mô tả</th>
								<th>Công cụ</th>
							</tr>
						</thead>
						<tfoot>
							<tr>
								<th>Loại sản phẩm</th>
								<th>Mô tả</th>
							</tr>
						</tfoot>
						<tbody>
							<c:forEach var="item" items="${ listCategories }">
								<tr>
									<td>${ item.name }</td>									
									<td>${ item.desciption }</td>
									<td><a
										href="<c:url value="/admin/edit-category/${ item.id }" />"
										class="align-middle btn btn-outline-primary"><i
											class="align-middle fas fa-edit"></i> </a> <a
										href="<c:url value="/admin/delete-category/${ item.id }" />"
										class="align-middle handle_delete btn btn-outline-danger">
											<i class="align-middle fas fa-user-times"></i>
									</a></td>
							</c:forEach>
						</tbody>
					</table>
				</div>
			</div>
		</div>
	</div>
</main>
