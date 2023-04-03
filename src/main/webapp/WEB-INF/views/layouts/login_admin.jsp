<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/views/layouts/admin/taglib.jsp"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />
<title>Đăng nhập | Admin</title>
<link href="<c:url value="/assets/admin/css/styles.css" />"
	rel="stylesheet" />
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/js/all.min.js"
	crossorigin="anonymous"></script>
</head>
<body class="bg-primary">
	<div id="layoutAuthentication">
		<div id="layoutAuthentication_content">
			<main>
				<div class="container">
					<div class="row justify-content-center">
						<div class="col-lg-5">
							<div class="card shadow-lg border-0 rounded-lg mt-5">
								<div class="card-header">
									<h3 class="text-center font-weight-light my-4">Đăng nhập</h3>
								</div>
								<div class="card-body">
									<h1>${ statusLogin }</h1>
									<form:form action="admin-login" method="POST"
										modelAttribute="UserModel">
										<div class="form-floating mb-3">
											<form:input type="email" class="form-control" id="inputEmail"
												placeholder="Nhập tài khoản" path="user" />
											<label for="inputEmail">Tài khoản</label>
										</div>
										<div class="form-floating mb-3">
											<form:input type="password" class="form-control"
												id="inputPassword" placeholder="Mật khẩu" path="password" />
											<label for="inputPassword">Mật khẩu</label>
										</div>

										<div
											class="d-flex align-items-center justify-content-between mt-4 mb-0">
											<button type="submit" class="btn btn-primary">Đăng
												nhập</button>
										</div>
									</form:form>
								</div>
								<div class="card-footer text-center py-3">
									<div class="small">
										<!-- <a href="register.html">Need an account? Sign up!</a> -->
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</main>
		</div>

	</div>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
		crossorigin="anonymous"></script>
	<script src="<c:url value="/assets/admin/js/scripts.js" />"></script>
</body>
</html>
