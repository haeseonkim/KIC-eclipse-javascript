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
		$('input[type="checkbox"]').checkboxradio({
			//icon: false;
		});
	});
</script>
</head>
<body>
<fieldset>
	<legend>상품등급</legend>
	<label for="cb-1">1 Star</label>
	<input type="checkbox" id="cb-1" />
	<label for="cb-2">2 Star</label>
	<input type="checkbox" id="cb-2" />
	<label for="cb-3">3 Star</label>
	<input type="checkbox" id="cb-3" />
	<label for="cb-4">4 Star</label>
	<input type="checkbox" id="cb-4" />
</fieldset>

</body>
</html>