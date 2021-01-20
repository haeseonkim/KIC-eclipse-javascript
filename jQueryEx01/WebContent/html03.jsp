<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	.high-light{
		background-color: yellow;
	}
</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		document.getElementById('btn1').onclick = function(){
			const h1 = '<h1>Header1</h1>';
			const h2 = '<h2>Header2</h2>';
			
			$('div').append(h1, h2, h1, h2);
		};
		

		
	});
</script>
</head>
<body>
<button id="btn1">태그 추가</button>
<br /><hr /><br />
<div id="result"></div>


</body>
</html>