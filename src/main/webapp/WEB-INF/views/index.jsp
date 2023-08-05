
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="base.jsp"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<style type="text/css">



.bg-img {

  /* The image used */
  	background-image: url(lap1.jpeg);

  height: 100%;
  width:100%;
  
/* Center and scale the image nicely */
  background-position: center;
  background-repeat: no-repeat;
  background-size: cover;
  
  position: absolute;
  
  opacity:0.50;
}


</style>


<title>Home Page</title>

</head>
<body>

	<img class="bg-img" style="background-color:blue" src='<c:url value="/resources/img/lap1.jpeg"/>'>
	
	

	<div class="container  p-0 ">
	
		<div class="row">
	
			 <div class="col-md-12 "> 
			

				<h1 class="text-center mb-3">Welcome to Product Crud App</h1>



				<table class="table">
					<thead class="thead-dark">
						<tr>
							<th scope="col">S.No</th>
							<th scope="col">Product Name</th>
							<th scope="col">Description</th>
							<th scope="col">Price</th>
							<th scope="col">Action</th>
						</tr>
					</thead>
					<tbody>
					<c:forEach items="${product }" var="p">
						<tr>
							<th scope="row">TECHONLY${p.id}</th>
							<td>${p.name}</td>
							<td>${p.description }</td>
							<td class="font-weight-bold"> &#x20B9; ${p.price}</td>
							<td>
							<a href="delete/${p.id }"><i class="fa-solid fa-trash text-danger" style="font-size:25px;"></i></a>
							<a href="update/${p.id }"><i class="fa-solid fa-pen-to-square" style="font-size:25px;"></i></a>
							</td>
						</tr>
						</c:forEach>
						  
					</tbody>
				</table>
				
				
				<div class="container text-center mb-3">
				<a href="add_product" class="btn btn-outline-success ">Add Product</a>
				</div>
			</div>
		</div>
				
 	  
	</div>
	




</body>
</html>