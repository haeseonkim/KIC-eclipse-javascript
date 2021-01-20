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
		// html 데이터 가져오기
		document.getElementById('btn1').onclick = function(){
			// 전통적인 방법
			const result = document.getElementById('result');
			
			// html
			console.log(result.innerHTML);
			console.log(result.textContent);
			
			
			// jQuery 사용
			console.log($('#result').html());
			console.log($('#result').text());
		};
		
		// html 데이터 수정하기
		document.getElementById('btn2').onclick = function(){
			// html수정
			$('#result').html("Hello jQuery");
			//text 수정 조심! html역할을 못한다.
			$('#result').text("<b>Hello jQuery</b>");	// html안됨
			
		};
		
	});
</script>
</head>
<body>
<button id="btn1">내용</button>
<button id="btn2">추가/수정</button>
<br /><hr /><br />
<div id="result"><b>출력될 내용</b></div>


</body>
</html>