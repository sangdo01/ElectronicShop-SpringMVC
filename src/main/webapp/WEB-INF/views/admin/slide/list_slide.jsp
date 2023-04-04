<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/views/layouts/admin/taglib.jsp"%>
<head>
<meta charset="UTF-8">
<title>Danh sách slide</title>
</head>
<main>
	<div class="container-fluid px-4">
		<h1 class="mt-4">Danh sách slide</h1>
		<div>
			<c:if test="${ not empty statusDeleteUser }">
				<div class="alert alert-success" role="alert">${ statusDeleteUser }</div>
			</c:if>


			<a href="<c:url value="/admin/add-slide"/>"
				class="btn btn-primary btn-lg" href="#" role="button"
				style="margin-bottom: 20px">Thêm Slide</a>
			<div class="card mb-4">
				<div class="card-header">
					<i class="fas fa-table me-1"></i> Danh sách
				</div>
				<div class="card-body">
					<table id="datatablesSimple">
						<thead>
							<tr>
								<th>Chủ đề</th>
								<th>Hình ảnh</th>
								<th>Nội dung</th>
								<th>Công cụ</th>

							</tr>
						</thead>
						<tfoot>
							<tr>
								<th>Chủ đề</th>
								<th>Hình ảnh</th>
								<th>Nội dung</th>
							</tr>
						</tfoot>
						<tbody>
							<c:forEach var="item" items="${ listSlides }">
								<tr>
									<td>${ item.caption }</td>
									<td><img class="mySlides"
										style="width: 150px; height: 70px;" src='<c:url value="/assets/user/img/slide/${ item.img }" />'></td>
									<td>${ item.content }</td>
									<td><a href="<c:url value="/admin/edit-slide/${ item.id }" />"
										class="align-middle btn btn-outline-primary"><i
											class="align-middle fas fa-edit"></i> </a> <a
										href="<c:url value="/admin/delete-slide/${ item.id }" />"
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
