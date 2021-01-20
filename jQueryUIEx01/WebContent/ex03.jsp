<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="./css/ui-darkness/jquery-ui.css" />
<style type="text/css">
	body {font-size: 80%; }
</style>
<script type="text/javascript" src="./js/jquery-3.5.1.js"></script>
<script type="text/javascript" src="./js/jquery-ui.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		$('#btn1').button().on('click', function(){
			alert('버튼 클릭');
		});
		
		// a라는 링크를 버튼처럼 만들수 있음
		$('a').button().on('click', function(e){
			alert('버튼 클릭');
			// 전송기능 제거
			e.preventDefault();
		});
		
		// form의 action을 무효화
		$('input[type="submit"]').button().on('click', function(e){
			alert('버튼 클릭');
			e.preventDefault();
		});
		
		
		
		
	});
</script>
</head>
<body>

<div id="btn1">버튼1</div><br /><br />

<a href="https://www.daum.net">다음 바로가기</a><br /><br />

<form action="test.jsp" method="get">
data : <input type="text" name="data" />
<input type="submit" value="전송하기" />
</form>

</body>
</html>