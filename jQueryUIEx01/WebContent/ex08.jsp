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
		$('#slider').slider({
			range: true,
			values:[75, 150],
			min: 0,
			max: 200,
			slide: function(event, ui){
				//console.log( $(this).slider('values', 0),'-',$(this).slider('values', 1));
				console.log(ui.values[0], '-', ui.values[1]);
			}
		});
	});
</script>
</head>
<body>

<div id="progressbar"></div>
<br /><hr /><br />
<div id="slider"></div>

</body>
</html>