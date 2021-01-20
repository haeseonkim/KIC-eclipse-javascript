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
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.4/jquery.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-ygbV9kiqUc6oa4msXn9868pTtWMgiQaeYH7/t7LECLbyPA2x65Kgf80OJFdroafW"
	crossorigin="anonymous"></script>
</head>
<body>

	<div class="container">
	
		<!-- Custom Switch -->
		<form action="/action_page.php">
			<div class="form-check form-switch">
				<input type="checkbox" class="form-check-input" id="switch1"
					name="example"> <label class="form-check-label"
					for="switch1">Toggle me</label>
			</div>
			<br>
			<button type="submit" class="btn btn-primary">Submit</button>
		</form>
		
		<br /><br />

		<!-- Custom Range -->
		<form>
			<label for="customRange1" class="form-label">Example range</label>
<input type="range" class="form-range" id="customRange1">
		</form>

		<br /><br />

		<!-- Custom File Upload -->
		<div class="mb-3">
		  <label for="formFile" class="form-label">Default file input example</label>
		  <input class="form-control" type="file" id="formFile">
		</div>
		<div class="mb-3">
		  <label for="formFileMultiple" class="form-label">Multiple files input example</label>
		  <input class="form-control" type="file" id="formFileMultiple" multiple>
		</div>
	</div>
</body>
</html>