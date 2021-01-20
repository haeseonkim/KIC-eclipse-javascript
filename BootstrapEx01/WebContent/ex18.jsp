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

<div class="container-fluid">
	
	<button class="btn btn-primary" data-bs-toggle="collapse" data-bs-target="#demo">Collapsible</button>
	<div id="demo" class="collapse">
		내용 1<br />
		내용 1<br />
		내용 1<br />
		내용 1<br />
	</div>
	
	<div id="accordion">
	
	  <div class="card">
	    <div class="card-header">
	      <a class="card-link" data-bs-toggle="collapse" href="#collapseOne">
	        Collapsible Group Item #1
	      </a>
	    </div>
	    <div id="collapseOne" class="collapse show" data-bs-parent="#accordion">
	      <div class="card-body">
	        Lorem ipsum..
	      </div>
	    </div>
	  </div>
	
	  <div class="card">
	    <div class="card-header">
	      <a class="collapsed card-link" data-bs-toggle="collapse" href="#collapseTwo">
	        Collapsible Group Item #2
	      </a>
	    </div>
	    <div id="collapseTwo" class="collapse" data-bs-parent="#accordion">
	      <div class="card-body">
	        Lorem ipsum..
	      </div>
	    </div>
	  </div>
	
	  <div class="card">
	    <div class="card-header">
	      <a class="collapsed card-link" data-bs-toggle="collapse" href="#collapseThree">
	        Collapsible Group Item #3
	      </a>
	    </div>
	    <div id="collapseThree" class="collapse" data-bs-parent="#accordion">
	      <div class="card-body">
	        Lorem ipsum..
	      </div>
	    </div>
	  </div>
	
	</div>

</div>
</body>
</html>