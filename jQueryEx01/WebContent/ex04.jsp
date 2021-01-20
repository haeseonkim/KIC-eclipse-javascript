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
		// id 선택
		$( '#h2' ).css('color', 'green');
	});
</script>
</head>
<body>

<h1 id="h1">Hello jQuery 1</h1>
<h2 id="h2">Hello jQuery 2</h2>
<h1 id="h3">Hello jQuery 3</h1>
<h2 id="h4">Hello jQuery 4</h2>

</body>
</html>