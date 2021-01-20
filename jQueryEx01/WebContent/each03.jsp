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
	$(document).ready(function() {
		// 객체
		const object = { name: 'daum', link:'https://www.daum.net'};
		
		$.each(object, (key, item) => {
			console.log(key);
		});
	});
</script>
</head>
<body>

<h2>item -0</h2>
<h2>item -1</h2>
<h2>item -2</h2>
<h2>item -3</h2>

</body>
</html>