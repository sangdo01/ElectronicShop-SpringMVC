<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/views/layouts/user/taglib.jsp"%>
<head>
<meta charset="UTF-8">
<title>Liên hệ</title>
<style type="text/css">
input[type=text], input[type=email], select, textarea {
	width: 100%;
	padding: 12px;
	border: 1px solid #ccc;
	border-radius: 4px;
	box-sizing: border-box;
	margin-top: 6px;
	margin-bottom: 16px;
	resize: vertical;
}

input[type=submit] {
	background-color: #04AA6D;
	color: white;
	padding: 12px 20px;
	border: none;
	border-radius: 4px;
	cursor: pointer;
}

input[type=submit]:hover {
	background-color: #45a049;
}

.container-contact {
	border-radius: 5px;
	background-color: #f2f2f2;
	padding: 20px;
}
</style>
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
					<li class="active">Liên hệ với chúng tôi</li>
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
			<h3>Thông tin liên hệ</h3>

			<div class="container-contact">
				<form:form action="lien-he" method="POST"
					modelAttribute="ContactModel">
					<label for="fname">Email</label>
					<form:input type="email" placeholder="Email.." path="email" />

					<label for="lname">Tên</label>
					<form:input type="text" placeholder="Tên của bạn.." path="name" />

					<label for="subject">Nội dung</label>
					<form:textarea path="content"
						placeholder="Viết điều gì đó cho chúng tôi.."
						style="height: 200px" />

					<input type="submit" value="Gửi">
				</form:form>
			</div>
		</div>
	</div>
</div>