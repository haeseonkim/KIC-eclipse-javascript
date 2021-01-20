<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="./css/ui-darkness/jquery-ui.css" />
<style type="text/css">
</style>
<script type="text/javascript" src="./js/jquery-3.5.1.js"></script>
<script type="text/javascript" src="./js/jquery-ui.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		$('#btn2').button();
		$('input[type="button"]').button();
		$('input[type="submit"]').button();
		
		$('a').button();
		$('#btn3').button();
	});
</script>
</head>
<body>

<button id="btn1">버튼1</button><br /><br />
<button id="btn2">버튼2</button><br /><br />
<input type="button" value="버튼 3" /><br /><br />
<input type="submit" value="버튼 4" /><br /><br />

<a href="https://www.daum.ner">다음 바로가기</a><br /><br />
<div id="btn3">버튼5</div><br /><br />

</body>
</html>