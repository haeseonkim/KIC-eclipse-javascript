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
			$('h2').addClass('high-light');
		};
		document.getElementById('btn2').onclick = function(){
			$('h2').removeClass('high-light');
			
		};
		document.getElementById('btn3').onmouseover = function(){
			// onlick - 클릭할 때마다 add, remove 반복
			// onmouseover - 마우스 올릴때마다 add, remove반복
			$('h2').toggleClass('high-light');
			
		};
	});
</script>
</head>
<body>
<button id="btn1">클래스 추가</button>
<button id="btn2">클래스 제거</button>
<button id="btn3">클래스 토글</button>
<br /><hr /><br />
<h2>item - 0</h2>
<h2>item - 1</h2>
<h2>item - 2</h2>
<h2>item - 3</h2>

</body>
</html>