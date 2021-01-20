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
		document.getElementById('btn1').onclick = function() {
			// div 본인
			$('div').remove();
		};
		
		document.getElementById('btn2').onclick = function() {
			// div 자식
			$('div').empty();
		};
		
		document.getElementById('btn3').onclick = function() {
			// div 본인
			//$('div > *').first().remove();
			$('h2').first().remove();
		};
	});
</script>
</head>
<body>
<button id="btn1">제거</button>
<button id="btn2">제거</button>
<button id="btn3">제거</button>
<br /><hr /><br />
<div>
	<h2>header-0</h2>
	<h2>header-1</h2>
	<h2>header-2</h2>
</div>

</body>
</html>