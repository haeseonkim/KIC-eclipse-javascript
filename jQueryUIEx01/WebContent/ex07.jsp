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
		let data = 50;
		$('#progressbar').progressbar({
			value: data
		});
		
		$('#btn1').button().on('click', function(){
			console.log(data);
			data -= 5; 
			$('#progressbar').progressbar('value', data);
		});

		$('#btn2').button().on('click', function(){
			console.log(data);
			data += 5; 
			$('#progressbar').progressbar('value', data);
		
		});
	});
</script>
</head>
<body>

<div id="progressbar"></div>
<br /><hr /><br />
<div>
	<button id="btn1">감소</button>
	<button id="btn2">증가</button>
</div>

</body>
</html>