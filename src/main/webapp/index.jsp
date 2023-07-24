
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
     <%@page isELIgnored="false" %>	
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Index Page</title>

<%@ include file="component/allcss.jsp"%>
<style type="text/css">
.paint-card {
	box-shadow: 0 0 10px 0 rgba(0, 0, 0, 0.3)
}
</style>

</head>
<body>
	<%@ include file="component/navbar.jsp"%>
	
	
	<div id="carouselExampleIndicators" class="carousel slide"
		data-bs-ride="carousel">
		<div class="carousel-indicators">
			<button type="button" data-bs-target="#carouselExampleIndicators"
				data-bs-slide-to="0" class="active" aria-current="true"
				aria-label="Slide 1"></button>
			<button type="button" data-bs-target="#carouselExampleIndicators"
				data-bs-slide-to="1" aria-label="Slide 2"></button>
			<button type="button" data-bs-target="#carouselExampleIndicators"
				data-bs-slide-to="2" aria-label="Slide 3"></button>
		</div>
		<div class="carousel-inner">
			<div class="carousel-item active">
				<img src="img/corre2.jpg" class="d-block w-100" alt="..."
					height="400px">
			</div>
			<div class="carousel-item">
				<img src="img/corre1.jpg" class="d-block w-100" alt="..."
					height="400px">
			</div>
			<div class="carousel-item">
				<img src="img/corre3.jpg" class="d-block w-100" alt="..."
					height="400px">
			</div>
		</div>
		<button class="carousel-control-prev" type="button"
			data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
			<span class="carousel-control-prev-icon" aria-hidden="true"></span> <span
				class="visually-hidden">Previous</span>
		</button>
		<button class="carousel-control-next" type="button"
			data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
			<span class="carousel-control-next-icon" aria-hidden="true"></span> <span
				class="visually-hidden">Next</span>
		</button>
	</div>

	<div class="container p-3">
		<p class="text-center fs-2">key features of our hospital</p>
		<div class="row">
			<div class="col-md-8 ">
				<div class="row">
					<div class="col-md-5 m-2">
						<div class="card">
							<div class="card-body paint-card">
								<p class="fs-5">100% safety</p>
								<p>This is some text within a card body.</p>
							</div>

						</div>
					</div>
					<div class="col-md-5 m-2">
						<div class="card">
							<div class="card-body paint-card">
								<p class="fs-5">100% safety</p>
								<p>This is some text within a card body.</p>
							</div>

						</div>
					</div>
					<div class="col-md-5 m-2 ">
						<div class="card ">
							<div class="card-body paint-card">
								<p class="fs-5">100% safety</p>
								<p>This is some text within a card body.</p>
							</div>

						</div>
					</div>
					<div class="col-md-5 m-2 ">
						<div class="card">
							<div class="card-body paint-card">
								<p class="fs-5">100% safety</p>
								<p>This is some text within a card body.</p>
							</div>

						</div>
					</div>
				</div>

			</div>
			<div class="col-md-4 text-center">
				<img alt="" src="img/doc1.jpg" width="200px" height="250px">
			</div>
		</div>

	</div>
	<hr>
	<div class="container p-2">
		<p class="text-center fs-2">Our team</p>
		<div class="row">
			<div class="col-md-3 ">
				<div class="card">
					<img src="img/doc1.jpg" class="card-img-top" alt="..."
						width="200px" height="250px">
					<div class="card-body text-center">
						<h5 class="card-title">C.E.O</h5>
						<p class="card-text">Some quick example text to build on the
							card title and make up the bulk of the card's content.</p>

					</div>
				</div>
			</div>
			<div class="col-md-3 ">
				<div class="card">
					<img src="img/doc1.jpg" class="card-img-top" alt="..."
						width="200px" height="250px">
					<div class="card-body text-center">
						<h5 class="card-title">C.E.O</h5>
						<p class="card-text">Some quick example text to build on the
							card title and make up the bulk of the card's content.</p>

					</div>
				</div>
			</div>
			<div class="col-md-3 ">
				<div class="card">
					<img src="img/doc1.jpg" class="card-img-top" alt="..."
						width="200px" height="250px">
					<div class="card-body text-center">
						<h5 class="card-title">C.E.O</h5>
						<p class="card-text">Some quick example text to build on the
							card title and make up the bulk of the card's content.</p>

					</div>
				</div>
			</div>
			<div class="col-md-3 ">
				<div class="card">
					<img src="img/doc1.jpg" class="card-img-top" alt="..."
						width="200px" height="250px">
					<div class="card-body text-center">
						<h5 class="card-title">C.E.O</h5>
						<p class="card-text">Some quick example text to build on the
							card title and make up the bulk of the card's content.</p>

					</div>
				</div>
			</div>

		</div>
	</div>

<%@include file="component/footer.jsp" %>
</body>
</html>