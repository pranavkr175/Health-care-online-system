<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>navbar</title>

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">

<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css"
	integrity="sha512-MV7K8+y+gLIBoVD59lQIYicR65iaqukzvf/nwasF0nqhPay5w/9lJmVM2hMDcnK1OnMGCdVK+iQrJ7lzPJQd1w=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />


<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
	crossorigin="anonymous"></script>


<%@ include file="/component/allcss.jsp"%>
</head>
<body>
	<nav class="navbar navbar-expand-lg navbar-dark bg-success">
		<div class="container-fluid">
			<a class="navbar-brand" href="index.jsp"><i
				class='fas fa-clinic-medical'></i> Medi Home</a>
			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
				aria-controls="navbarSupportedContent" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarSupportedContent">
				<ul class="navbar-nav ms-auto mb-2 mb-lg-0">
					
					<c:if test="${empty userobj }">
					
					
					<li class="nav-item"><a class="nav-link active"
						aria-current="page" href="admin_login.jsp"><i
							class="fa fa-lock" aria-hidden="true"></i> Admin</a></li>
					<li class="nav-item"><a class="nav-link active"
						aria-current="page" href="doctor_login.jsp"><i
							class="fa fa-user-md" aria-hidden="true"></i> Doctor</a></li>
					<li class="nav-item"><a class="nav-link active"
						aria-current="page" href="#">Appointment</a></li>
					<li class="nav-item"><a class="nav-link active"
						aria-current="page" href="user_login.jsp">User</a></li>
					
					
					</c:if>


					<c:if test="${not empty userobj }">
						<li class="nav-item"><a class="nav-link active"
							aria-current="page" href="#">Appointment</a></li>
						<li class="nav-item"><a class="nav-link active"
							aria-current="page" href="#">View Appointment</a></li>
						<div class="dropdown active">
							<button class="btn btn-success dropdown-toggle" type="button"
								id="dropdownMenuButton1" data-bs-toggle="dropdown"
								aria-expanded="false"> <i class="fa-solid fa-circle-user" > </i>  ${userobj.fullname}</button>
							<ul class="dropdown-menu" aria-labelledby="dropdownMenuButton1">
								<li><a class="dropdown-item" href="#">Change password</a></li>
								<li><a class="dropdown-item" href="userlogout">Logout</a></li>
								
							</ul>
						</div>
					</c:if>


				</ul>



			</div>
		</div>
	</nav>
</body>
</html>