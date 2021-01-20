<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1"
	crossorigin="anonymous">
<style type="text/css">
	.carousel-inner img{
		width: 100%;
		height: 100%;
	}
</style>
<script type="text/javascript" src="./js/jquery-3.5.1.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-ygbV9kiqUc6oa4msXn9868pTtWMgiQaeYH7/t7LECLbyPA2x65Kgf80OJFdroafW"
	crossorigin="anonymous"></script>
</head>
<body>

<div id="demo" class="carousel slide" data-bs-ride="carousel" >
	<div class="carousel-inner">
		<div class="carousel-item active">
			<img src="./images/la.jpg" />
			<div class="carousel-caption">
				<h3>Los Angeles</h3>
        		<p>We had such a great time in LA!</p>
			</div>
		</div>
		
		<div class="carousel-item">
			<img src="./images/chicago.jpg" />
			<div class="carousel-caption">
		        <h3>Chicago</h3>
		        <p>Thank you, Chicago!</p>
		    </div>  
		</div>
		
		<div class="carousel-item">
			<img src="./images/ny.jpg" />
			<div class="carousel-caption">
		        <h3>New York</h3>
		        <p>We love the Big Apple!</p>
		    </div>
		</div>
	</div>
	
	<ul class="carousel-indicators">
		<li data-bs-target="#demo" data-bs-slide-to="0" class="active">
		<li data-bs-target="#demo" data-bs-slide-to="1">
		<li data-bs-target="#demo" data-bs-slide-to="2">
	</ul>
	
	<a href="#demo" class="carousel-control-prev" data-bs-slide="prev">
		<span class="carousel-control-prev-icon"></span>
	</a>
	<a href="#demo" class="carousel-control-next" data-bs-slide="next">
		<span class="carousel-control-next-icon"></span>
	</a>
</div>
	
</body>
</html>