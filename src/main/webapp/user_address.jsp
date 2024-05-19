<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Address modify</title>
<%@include file="all_components/allCSS.jsp" %>
</head>
<body style="background-color: #f0f2f2">
<%@include file="all_components/navbar.jsp" %>	
<div class="container">
 	<div class="row">
 		<div class="col-md-6 offset-md-3 mt-5">
 			<div class="card">
 				<div class="card-body">
 					<form action="">
 						<div class="row">
 							<div class="col-md-6">
								<label for="inputEmail4" class="form-label">Address</label> <input
									type="text" class="form-control" id="inputEmail4">
							</div>
							<div class="col-md-6">
								<label for="inputPassword4" class="form-label">District</label>
								<input type="text" class="form-control" id="inputPassword4" >
							</div>
 						</div>
						<div class="row">
 							<div class="col-md-6">
								<label for="inputEmail4" class="form-label">City</label> <input
									type="text" class="form-control" id="inputEmail4">
							</div>
							<div class="col-md-6">
								<label for="inputPassword4" class="form-label">House number</label>
								<input type="text" class="form-control" id="inputPassword4" >
							</div>
 						</div>
 					</form>
 				</div>
 			</div>
 		</div>
 	</div>
</div>
</body>
</html>