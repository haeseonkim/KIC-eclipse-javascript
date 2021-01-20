<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	.high-light-1 {
		background-color: yellow;
	}
	.high-light-2 {
		background-color: green;
	}
	.high-light-3 {
		background-color: blue;
	}
	.high-light-4 {
		background-color: red;
	}
</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script type="text/javascript">
	// $( tag/id/class ).css('color', 'red')
	$(document).ready(function() {
		$('h2').each(function(index, item){
			$(this).addClass('high-light-'+ (index+1));
		});
	});
</script>
</head>
<body>

<h2>item - 0</h2>
<h2>item - 1</h2>
<h2>item - 2</h2>
<h2>item - 3</h2>

</body>
</html>