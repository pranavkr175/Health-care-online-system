<%@page import="com.dao.DoctorDao"%>
<%@page import="com.entity.Doctor"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.db.DBConnect"%>
<%@page import="com.dao.SpecialistDao"%>
<%@page import="com.entity.Specialist"%>

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


<style type="text/css">
.paint-card {
	box-shadow: 0 0 10px 0 rgba(0, 0, 0, 0.3)
}
</style>

</head>
<body>
	<%@include file="navbar.jsp"%>



	<div class="container-fluid p-3 offset-md-4">
		<div class="row">
		
			<div class="col-md-4">
				<div class="card paint-card">
					<div class="card-body">
						<p class="fs-3 text-center">Edit Doctor Details</p>

						<c:if test="${not empty error }">
							<p class=" text-center text-danger">${error}</p>
							<c:remove var="error" scope="session" />
						</c:if>

						<c:if test="${not empty succ }">
							<p class=" text-center text-danger">${succ}</p>
							<c:remove var="succ" scope="session" />
						</c:if>
						
						<%
						int id= Integer.parseInt(request.getParameter("id"));
						DoctorDao dao2=new DoctorDao(DBConnect.getConn());
						Doctor d=dao2.getDoctorById(id);
						%>

						<form class="" action="../updatedoc" method="post">
							<div class="mb-3"> 
								<label class="form-label">Full Name</label> <input type="text"
									required name="fullname" value="<%=d.getFullname() %>" class="form-control ">
							</div>

							<div class="mb-3">
								<label class="form-label">DOB</label> <input type="date"
									required name="dob" value="<%=d.getDob() %>" class="form-control ">
							</div>

							<div class="mb-3">
								<label class="form-label">Qualification </label> <input
									type="text" required name="quali" value="<%=d.getQualification()%>"
									class="form-control ">
							</div>

							<div class="mb-3">
								<label class="form-label">Specialist</label> <select name="spec"
									value="" class="form-control ">
									<option value=""><%=d.getSpecialist()%></option>

									<%
									SpecialistDao dao = new SpecialistDao(DBConnect.getConn());
									ArrayList<Specialist> list = dao.getAllSpecialist();
									for (Specialist s : list) {
									%>
									<option><%=s.getName()%></option>
									<%
									}
									%>

									<option value="">demo</option>
								</select>
							</div>


							<div class="mb-3">
								<label class="form-label">Email</label> <input type="email"
									required name="email" value="<%=d.getEmail() %>" class="form-control ">
							</div>

							<div class="mb-3">
								<label class="form-label">Mob no</label> <input type="text"
									required name="mob" value="<%=d.getMobno() %>" class="form-control ">
							</div>

							<div class="mb-3">
								<label class="form-label">Password</label> <input
									type="password" type="text" required name="pass" value="<%=d.getPassword() %>"
									class="form-control ">
							</div>
							
							<input type="hidden" name="id" value="<%d.getId(); %>">
							<button type="submit" class="btn btn-primary col-md-12">Update</button>
						</form>
					</div>
				</div>
			</div>



			
		</div>
	</div>





</body>
</html>