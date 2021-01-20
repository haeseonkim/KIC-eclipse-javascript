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
		$( 'body' ).css('backgroundColor', 'yellow');
		// class 선택
		$( '.c1' ).css('color', 'green');
		// 태그의 class 선택
		$( 'h2.c1' ).css('color', 'red');
		$( '.c2.c3' ).css('color', 'purple');
	});
</script>
</head>
<body>

<h1 class="c1">Hello jQuery 1</h1>
<h2 class="c1">Hello jQuery 2</h2>
<h1 class="c2">Hello jQuery 3</h1>
<h2 class="c2 c3">Hello jQuery 4</h2>

</body>
</html>