<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page isELIgnored="false"%>
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<%@include file="./base.jsp"%>
<link rel="stylesheet" href="styles.css">
<!-- <link rel="stylesheet" href="style.css"> -->
<style type="text/css" >
.paint-card {
	box-shadow: 0 0 10px 0 rgba(0, 0, 0, 0.3);
}
</style>
</head>
<body>
<!-- <div class="container-fluid backImg p-5"> -->
<!-- <div class=container-fluid backImgp-5"> -->

<div class="container p-5 mt-5">


<div class="row">

<div class="col-md-6 offset-md-3">

<div class="card paint-card container">

<h1  class="text-center mb-3 mt-3">Change Product Details</h1>


				<form action="${pageContext.request.contextPath }/handle-product"  method="post">
				<input  type="hidden" value="${product.id }" name="id">

					<div class="form-group ">
						<label for="name"> Product Name</label> <input type="text"
							name="name" class="form-control" id="name"
							placeholder="Enter the product name" value="${product.name }">
					</div>



					<div class="form-group ">
						<label for="description"> Product Description</label>
						<textarea rows="5" name="description" class="form-control"
							id="description" placeholder="Enter the product description" >${product.description }</textarea>
					</div>


					<div class="form-group ">
						<label for="price"> Product Price</label> <input type="text"
							name="price" class="form-control" id="price"
							placeholder="Enter the product price" value="${product.price }">
					</div>

					<div class="container text-center">
						<a href="${pageContext.request.contextPath}/"
							class="btn btn-outline-danger mb-2">Back</a>
						<button type="submit" class="btn btn-warning mb-2">Update</button>

					</div>


				</form>
				
				


</div>

			</div>
</div>
</div>
<!-- <img  src="img1.jpeg" alt="" >
</div> -->
</body>
</html>