<%@page import="java.util.List"%>
<%@page import="com.entity.Book_dtls"%>
<%@page import="com.entity.User"%>
<%@page import="com.DB.DBconnect"%>
<%@page import="com.DAO.BookImp"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Old Books</title>
<%@include file="all_components/allCSS.jsp" %>
</head>
<body>
<%@include file="all_components/navbar.jsp" %>
				<c:if test="${ empty userobj }">
					<c:redirect url="login.jsp"></c:redirect>
				</c:if>
				<c:if test="${not empty successMsg }">
						<p class="text-center text-sucess">${successMsg}</p>
					</c:if>
					<c:if test="${not empty failedMsg }">
						<p class="text-center text-danger">${failedMsg}</p>
					</c:if>
<div class="container p-5">
	<table class="table table-striped">
  <thead>
    <tr>
      <th scope="col">Book Name</th>
      <th scope="col">Author</th>
      <th scope="col">Price</th>
      <th scope="col">Category</th>
      <th scope="col">Action</th>
    </tr>
  </thead>
  <tbody>
  <%
  	User u= (User)session.getAttribute("userobj");
  	BookImp bookImp= new BookImp(DBconnect.getConnection());
  	List<Book_dtls>list= bookImp.getBookByOld(u.getEmail(),"Old Book");
  	for(Book_dtls b:list){
  %>
  	<tr>
      <th scope="row"><%=b.getBookName() %></th>
      <td><%=b.getAuthor() %></td>
      <td><%=b.getPrice() %><i class="fa-solid fa-dollar-sign"></i></td>
      <td><%=b.getBookCategory()%></td>
      <td><a href="delete_old_books?email=<%=u.getEmail() %>&&bid=<%=b.getBookID() %>" class="btn btn-sm btn-danger">Delete</a></td>
    </tr>
   <%} %>
    
  </tbody>
</table>
</div>
</body>
</html>