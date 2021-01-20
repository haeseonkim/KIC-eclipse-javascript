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
		// 계속 깊이 들어감 
		//$('h2').css('background-color','orange').filter(':even').css('color','red').filter(':odd').css('color','blue');
		
		// end()에서 자르고 그 뒤 filter는 새롭게 적용
		$('h2').css('background-color','orange').filter(':even').css('color','red').end().filter(':odd').css('color','blue');
		
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