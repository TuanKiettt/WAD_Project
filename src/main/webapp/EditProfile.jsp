<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored = "false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit Profile</title>
<%@include file="all_components/allCSS.jsp" %>
</head>
<body>
<c:if test="${ empty userobj }">
		<c:redirect url="login.jsp"></c:redirect>
</c:if>
<%@include file="all_components/navbar.jsp" %>	
	<div class="container">
		<div class="row">
			<div class="col-md-4 offset-md-4 mt-5">
				<div class="card">
					<div class="card-body">
						<h3 class="text-center text-primary">Edit Profile</h3>
						<c:if test="${not empty successMsg }">
						<p class="text-center text-success">${successMsg}</p>
						<c:remove var="successMsg" scope="session"/>
						</c:if>
						<c:if test="${not empty failedMsg }">
							<p class="text-center text-danger">${failedMsg}</p>
							<c:remove var="failedMsg" scope="session"/>
						</c:if>
						<form action="update_profile" method="post">
							<input type="hidden" value="${userobj.getId()}" name="id">
							<div class="form-group mt-4">
								<label for="exampleInputName">Full Name:</label><input
									type="text" class="form-control" id="exampleInputName"
									placeholder="Enter Full Name" required name="fname" value="${userobj.name}">
							</div>
							<div class="form-group mt-4">
								<label for="exampleInputPhone">Phone:</label><input
									type="text" class="form-control" id="exampleInputPhone"
									placeholder="Enter Phone number" required name="fphone" value="${userobj.phone_no}">
							</div>
							<div class="form-group mt-4">
								<label for="exampleInputEmail">Email Address:</label><input
									type="email" class="form-control" id="exampleInputEmail"
									aria-describeby="emailHelp" placeholder="Enter Email" required name="femail" value="${userobj.address}">
							</div>
							<div class="form-group mt-4">
								<label for="exampleInputPassword">Password:</label><input
									type="password" class="form-control" id="exampleInputPassword"
									placeholder="Enter Password" required name="fpassword" >
							</div>
							<div class="d-flex justify-content-center mt-4">
								<button type="submit" class="btn btn-primary">Update</button>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>