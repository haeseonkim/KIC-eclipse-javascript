<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		$(document).find('.select').each(function(){
			console.log(this);
		});
	});
</script>
</head>
<body>

<h3 class="select">item - 0</h3>
<h3>item - 1</h3>
<h3 class="select">item - 2</h3>
<h3>item - 3</h3>
<h3 class="select">item - 4</h3>
<h3>item - 5</h3>



</body>
</html>