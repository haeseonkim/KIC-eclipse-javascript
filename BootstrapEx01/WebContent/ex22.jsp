<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.4/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-ygbV9kiqUc6oa4msXn9868pTtWMgiQaeYH7/t7LECLbyPA2x65Kgf80OJFdroafW" crossorigin="anonymous"></script>
</head>
<body>

<div class="container">
	
	<div class="input-group mb-3">
		<div class="input-group-prepend">
			<button class="btn btn-outline-primary" type="button">Basic Button</button>
		</div>
		<input type="text" class="form-control" placeholder="Some text">
	</div>
	
	<div class="input-group mb-3">
		<input type="text" class="form-control" placeholder="Search">
		<div class="input-group-append">
			<button class="btn btn-success" type="submit">Go</button>
		</div>
	</div>
	
	<div class="input-group mb-3">
		<input type="text" class="form-control" placeholder="Something clever..">
		<div class="input-group-append">
			<button class="btn btn-primary" type="button">OK</button>
			<button class="btn btn-danger" type="button">Cancel</button>
		</div>
	</div>

</div>
</body>
</html>