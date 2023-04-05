<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/views/layouts/admin/taglib.jsp"%>
<head>
<meta charset="UTF-8">
<title>Danh sách Đơn đặt hàng</title>
</head>
<main>
	<div class="container-fluid px-4">
		<h1 class="mt-4">Danh sách Đơn đặt hàng</h1>
		<div>
			<%-- <c:if test="${ not empty statusDelete }">
				<div class="alert alert-success" role="alert">${ statusDelete }</div>
			</c:if> --%>

			<div class="card mb-4">
				<div class="card-header">
					<i class="fas fa-table me-1"></i> Danh sách
				</div>
				<div class="card-body">
					<table id="datatablesSimple">
						<thead>
							<tr>
								<th>Tài khoản</th>
								<th>Số điện thoại</th>
								<th>Tên</th>
								<th>Địa chỉ</th>
								<th>Gía tiền</th>
								<th>Số lượng</th>
								<th>Ghi chú</th>
								<th>Công cụ</th>
							</tr>
						</thead>
						<tfoot>
							<tr>
								<th>Tài khoản</th>
								<th>Số điện thoại</th>
								<th>Tên</th>
								<th>Địa chỉ</th>
								<th>Gía tiền</th>
								<th>Số lượng</th>
								<th>Ghi chú</th>
							</tr>
						</tfoot>
						<tbody>
							<c:forEach var="item" items="${ listBills }">
								<tr>
									<td>${ item.user }</td>
									<td>${ item.phone }</td>
									<td>${ item.display_name }</td>
									<td>${ item.address }</td>
									<td>${ item.total }</td>
									<td>${ item.quanty }</td>
									<td>${ item.note }</td>
									<td><a
										href="<c:url value="/admin/delete-bill/${ item.id }" />"
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
