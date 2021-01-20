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
		$('#btn1').button({
			icon: 'ui-icon-gear',
			iconPosition: 'end'
		});
		$('#btn2').button({
			icon: 'ui-icon-power',
			showLabel: false
		});
	});
</script>
</head>
<body>

<div id="btn1">버튼1</div><br /><br />
<div id="btn2">버튼2</div><br /><br />


</body>
</html>