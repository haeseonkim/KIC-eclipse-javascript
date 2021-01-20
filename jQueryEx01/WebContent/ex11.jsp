<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script type="text/javascript">
	// jQuery = $ (원래는 jQuery였는데 $로 쓸수 있게 바뀜)
	//jQuery(document).ready(function() {
	//	console.log("Hello jQuery");
	//});
	
	// 이벤트 부분 (document).ready 생략 가능
	//$(function() {
	//	console.log("Hello jQuery");
	//});
	
	// ready는 '시작'인데 여러개써도됨 (1개가 좋다)
	$(document).ready(function() {
		console.log("Hello jQuery1");
	});
	
	$(document).ready(function() {
		console.log("Hello jQuery2");
	});
	
	$(document).ready(function() {
		console.log("Hello jQuery3");
	});
	
	
</script>
</head>
<body>

</body>
</html>