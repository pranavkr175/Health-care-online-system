<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<%@ include file="../component/allcss.jsp"%>
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
				<ul class="navbar-nav me-auto mb-2 mb-lg-0">
					<li class="nav-item"><a class="nav-link active"
						aria-current="page" href="home.jsp"> Home</a></li>
					<li class="nav-item"><a class="nav-link active"
						aria-current="page" href="doctor.jsp"> Doctor</a></li>
					<li class="nav-item"><a class="nav-link active"
						aria-current="page" href="patient.jsp"> Patient</a></li>
				</ul>


				<form class="d-flex">
					<div class="dropdown">
						<button class="btn btn-light dropdown-toggle" type="button"
							id="dropdownMenu2" data-bs-toggle="dropdown"
							aria-expanded="false">Admin</button>
						<ul class="dropdown-menu" aria-labelledby="dropdownMenu2">
							<li><a class="dropdown-item" href="../adminlogout"> logout</a></li>
							
						</ul>
					</div>
				</form>
				





			</div>
		</div>
	</nav>
</body>
</html>