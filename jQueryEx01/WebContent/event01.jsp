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
		/*
		// 원래 이렇게 썼는데 이걸 좀 더 쉽게 쓸수 있다.
		document.getElementById('btn1').onclick = function() {
			console.log('btn1 click');
		};
		
		// onclick
		$('#btn1').on('click', function(){
			console.log('btn1 click');
		});
		$('#btn2').on('click', function(){
			console.log('btn2 click');
		});
		
		// mouseover
		$('#btn1').on('mouseover', function(){
			console.log('btn1 click');
		});
		*/
		
		/*
		// swing의 MouseListener와 비슷
		$('button').on('click', function(){
			console.log( $(this).text());
			console.log( $(this).attr('id'));
		});
		*/
		
		
		// $('#btn1').on('click', function(){}); 을 더 짧게
		$('#btn1').click( function(){
			console.log('btn1 click');
		});
		
		// 화살표 함수로 표현
		$('#btn2').click(() => {
			console.log('btn2 click');
		});
		
	});
</script>
</head>
<body>
<button id="btn1">이벤트</button>
<button id="btn2">이벤트</button>

</body>
</html>