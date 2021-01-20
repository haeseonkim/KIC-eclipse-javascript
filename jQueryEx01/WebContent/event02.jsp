<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	.reverse { background-color: black; color: white }
</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		/*
		$('h2').on('mouseenter', function(){
			$(this).addClass('reverse');
		});
		
		$('h2').on('mouseleave', function(){
			$(this).removeClass('reverse');
		});
		*/
		
		/*
		// 위의 다른 표현 방법 
		$('h2').on({
			mouseenter: function(){
				$(this).addClass('reverse');
			},
			mouseleave: function(){
				$(this).removeClass('reverse');
			}
		});
		*/
		
		// 함수형 표현 방법  hover사용
		$('h2').hover(
			function(){
				$(this).addClass('reverse');
			},
			function(){
				$(this).removeClass('reverse');
			}
		);
	});
</script>
</head>
<body>
<button id="btn1">이벤트1</button>
<button id="btn2">이벤트2</button>

<h2>Header-0</h2>
<h2>Header-0</h2>
<h2>Header-0</h2>
<h2>Header-0</h2>
</body>
</html>