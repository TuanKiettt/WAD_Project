<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored = "false" %>
<%@page import="com.entity.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
	<%@include file="all_components/allCSS.jsp"%>
<style type="text/css">
	a{
		text-decoration: none;
		color:black;
	}
	a:hover{
		text-decoration: none;
	}
</style>
</head>
<body style="background-color:#f7f7f7">
	<c:if test="${ empty userobj }">
		<c:redirect url="login.jsp"></c:redirect>
	</c:if>
	<%@include file="all_components/navbar.jsp"%>
	<% User u= (User)session.getAttribute("userobj");%>
	<div class="container">
		<h3 class="text-center p-2">Hello,<%=u.getName() %></h3>
		<div class="row p-2">
			<div class="col-md-4">
				<a href="sell_books.jsp">
					<div class="card">
						<div class="card-body text-center">
							<i class="fas fa-book-open fa-3x text-primary"></i>
							<h3>Sell Old Book</h3>
						</div>
					</div>
				</a>
			</div>
			<div class="col-md-4">
				<a href="old_books.jsp">
					<div class="card">
						<div class="card-body text-center">
							<i class="fa-regular fa-folder fa-3x text-warning"></i>
							<h3>Old Book</h3>
						</div>
					</div>
				</a>
			</div>
			<div class="col-md-4">
				<a href="EditProfile.jsp">
					<div class="card">
						<div class="card-body text-center">
							<i class="fa-solid fa-pen-to-square fa-3x text-warning"></i>
							<h3>Edit Profile</h3>
						</div>
					</div>
				</a>
			</div>
		</div>
		<div class="row p-2">
			<div class="col-md-6">
				<a href="order.jsp">
					<div class="card">
						<div class="card-body text-center">
							<i class="fa-solid fa-box fa-3x text-danger"></i>
							<h3>Order</h3>
							<p>Track your order
						</div>
					</div>
				</a>
			</div>
			<div class="col-md-6">
				<a href="helpline.jsp">
					<div class="card">
						<div class="card-body text-center">
							<i class="fa-solid fa-circle-question fa-3x text-success"></i>
							<h3>Help Center</h3>
							<p>24/7 Help Service
						</div>
					</div>
				</a>
			</div>
		</div>
	</div>
</body>
</html>