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
		setInterval(function(){
			$('img').first().appendTo('body');
		},2000);
	});
</script>
</head>
<body>

<img src="./images/Chrysanthemum.jpg" width="150" />
<img src="./images/Desert.jpg" width="150" />
<img src="./images/Hydrangeas.jpg" width="150" />
<img src="./images/Jellyfish.jpg" width="150" />


</body>
</html>