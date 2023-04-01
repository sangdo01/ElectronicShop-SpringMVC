<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.opensymphony.com/sitemesh/decorator"
	prefix="decorator"%>
<%@include file="/WEB-INF/views/layouts/user/taglib.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<title><decorator:title default="Master-Layout"></decorator:title></title>
<link
	href="https://cdn.jsdelivr.net/npm/simple-datatables@latest/dist/style.css"
	rel="stylesheet" />
<link href="<c:url value="/assets/admin/css/styles.css" />"
	rel="stylesheet" />
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/js/all.min.js"
	crossorigin="anonymous"></script>

<decorator:head />
</head>

<body class="sb-nav-fixed">
	<!-- Start Header -->
	<%@include file="/WEB-INF/views/layouts/admin/header.jsp"%>
	<!-- End Header -->
	<div id="layoutSidenav">
		<!-- Start sidenav -->
		<%@include file="/WEB-INF/views/layouts/admin/sidenav.jsp"%>
		<!-- End sidenav -->
		<div id="layoutSidenav_content">
			<main>
				<!-- Start Body -->
				<decorator:body />
				<!-- End Body -->
			</main>
			<!-- Start footer -->
			<%@include file="/WEB-INF/views/layouts/admin/footer.jsp"%>
			<!-- End footer -->

		</div>
	</div>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
		crossorigin="anonymous"></script>
	<script src="<c:url value="/assets/admin/js/scripts.js" />"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js"
		crossorigin="anonymous"></script>
	<script
		src="<c:url value="/assets/admin/assets/demo/chart-area-demo.js" />"></script>
	<script
		src="<c:url value="/assets/admin/assets/demo/chart-bar-demo.js" />"></script>
	<script src="https://cdn.jsdelivr.net/npm/simple-datatables@latest"
		crossorigin="anonymous"></script>
	<script
		src="<c:url value="/assets/admin/js/datatables-simple-demo.js" />"></script>

	<decorator:getProperty property="page.script"></decorator:getProperty>
</body>

</html>