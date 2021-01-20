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
	// $(CSS 셀렉터) - html 태그 선택
	// $( '*' ) -  모든 html 태그에 대해서..
	// $( '*' ).메서드 - 기능
	// $( '*' ).css('color', 'red')
	$(document).ready(function() {
		//alert('Hello jQuery');
		// $( '*' ).css('color', 'red'); 하나만 줄때 (color만)
		// 여러개 줄때 (color만이 아니라 background랑 그런것들까지)
		$( '*' ).css({
			'color' : 'red'
		});
	});
</script>
</head>
<body>

</body>
</html>