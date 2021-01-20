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
		//$('h2:even').css('color', 'red');
		// ' '과 ','는 다르다.
		// ' '는 자손이고 ','는 and이다.
		//$('h2:even, h2:odd').css('color', 'red');
		// filter가 낫다.
		$('h2:even').css('color', 'red').add('h2:odd').css('color', 'blue');
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