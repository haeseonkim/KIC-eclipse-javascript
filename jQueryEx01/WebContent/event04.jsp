<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	.reverse { background-color: black; color: white }
</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		$('h2').on('click',function(e){
			console.log('clickX : ' , e.pageX);
			console.log('clickY : ' , e.pageY);
		});
	});
</script>
</head>
<body>

<h2>Header-0</h2>
<h2>Header-0</h2>
<h2>Header-0</h2>
<h2>Header-0</h2>
</body>
</html>