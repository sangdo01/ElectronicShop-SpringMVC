<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/views/layouts/admin/taglib.jsp"%>
<head>
<meta charset="UTF-8">
<title>Danh sách người dùng</title>
</head>
<main>
	<div class="container-fluid px-4">
		<h1 class="mt-4">Danh sách người dùng</h1>
		<div>
			<c:if test="${ not empty statusDeleteUser }">
				<div class="alert alert-success" role="alert">${ statusDeleteUser }</div>
			</c:if>


			<a href="<c:url value="/admin/add-user"/>"
				class="btn btn-primary btn-lg" href="#" role="button" style="margin-bottom: 20px">Thêm người
				dùng</a>
			<div class="card mb-4">
				<div class="card-header">
					<i class="fas fa-table me-1"></i> Danh sách
				</div>
				<div class="card-body">
					<table id="datatablesSimple">
						<thead>
							<tr>
								<th>Tên người dùng</th>
								<th>Email</th>
								<th>Địa chỉ</th>
								<th>Công cụ</th>

							</tr>
						</thead>
						<tfoot>
							<tr>
								<th>Tên người dùng</th>
								<th>Email</th>
								<th>Địa chỉ</th>
							</tr>
						</tfoot>
						<tbody>
							<c:forEach var="item" items="${ listUser }">
								<tr>
									<td>${ item.display_name }</td>
									<td>${ item.user }</td>
									<td>${ item.address }</td>
									<td><a href="#"
										class="align-middle btn btn-outline-primary"><i
											class="align-middle fas fa-edit"></i> </a> <a
										href="<c:url value="/admin/delete-user/${ item.id }" />"
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