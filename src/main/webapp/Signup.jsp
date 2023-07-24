<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ page isELIgnored="false"%>
   
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<%@ include file="component/allcss.jsp" %>
<style type="text/css">
.paint-card {
	box-shadow: 0 0 10px 0 rgba(0, 0, 0, 0.3)
}
</style>
</head>
<body>

<%@ include file="component/navbar.jsp" %>

<div class="container p-5">
    <div class="row">
      <div class="col-md-4 offset-md-4">
      <div class="card paint-card">
        <div class="card-body">
          <p class="text-center fs-2">User Register</p>
          
          <c:if test="${not empty succ}">
          <p class="fs-2 text-center text-success">${succ}</p>
          <c:remove var="succ" scope="session" />
          </c:if>
          
          
          <c:if test="${not empty error }">
          <p class="fs-2 text-center text-danger">${error}</p>
          <c:remove var="error" scope="session" />
          </c:if>
          
          <form class="" action="user_register" method="post">
          <div class="mb-3">
              <label class="form-label">Full-Name</label><input required type="text" name="Fullname" class="form-control">
            </div>
            <div class="mb-3">
              <label class="form-label">Email-address</label><input required type="Email" name="Email" class="form-control">
            </div>
            <div class="mb-3">
              <label class="form-label">Password</label><input required type="Password" name="Password" class="form-control">
            </div>
            <button type="submit" class="btn bg-success text-white col-md-12">Register</button>
          </form><br>                                                                                                                                                                                                                                                                                       
          <p>Already have an account. <a href="user_login.jsp" class="text-decoration-none" >Login</a>
        
          
        </div>
      </div>
      </div>
    </div>
  </div>

</body>
</html>