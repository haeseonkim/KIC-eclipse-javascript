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
			// 태그의 생성
			// $(<h2> Hello jQuery</h2>')
			
			// appendTo(B) / prependTo(B)
			// insertBefore(B) / insertAfter(B)
			
			// appendTo(B) - 뒤에 붙이기
			//$('<h2>Hello jQuery</h2>').appendTo('div');
			// prependTo(B) - 앞에 붙이기
			//$('<h2>Hello jQuery</h2>').prependTo('div');
			// 이렇게도 가능
			$('<h2></h2>').html('Hello jQuery').appendTo('div');
			
		};
		
		document.getElementById('btn2').onclick = function(){
			/* 
			$('<img />')
				.attr('src','./images/Desert.jpg')
				.attr('width','512')
				.attr('height','384')
				.appendTo('div');
			*/
			
			// 위처럼 하면 불편하니까 아래처럼 속성형식으로 해준다.
			
			$('<img />',{
				'src':'./images/Jellyfish.jpg',
				'width':'512',
				'height':'384'
			}).appendTo('div');
		};
		
	});
</script>
</head>
<body>
<button id="btn1">태그 추가</button>
<button id="btn2">이미지 태그 추가</button>
<br /><hr /><br />
<div id="result"></div>


</body>
</html>