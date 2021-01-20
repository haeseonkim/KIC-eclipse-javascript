<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- <script type="text/javascript" src="./js/jquery-3.5.1.js"></script> -->
<!-- <script type="text/javascript" src="./js/jquery-3.5.1.min.js"></script> -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script type="text/javascript">
	// $( tag/id/class ).css('color', 'red')
	$(document).ready(function() {
		// 속성
		// 요소[속성=값] / 요소[속성!=값]
		$('input[type="text"]').css('background-color','red');
		//$('input[type="password"]').css('background-color','blue');
		$('input[type^="pa"]').css('background-color','blue');
	});
</script>
</head>
<body>

<input type="text" /><br />
<input type="password" /><br /> 

</body>
</html>