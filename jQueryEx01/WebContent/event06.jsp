<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	#canvas { border: 1px solid black; }
</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		$('h2').on('click', function(){
			$(this).html(function(index,item){
				return item+ '*';
			});
		});
		
		setInterval(() => {
			$('h2').last().trigger('click');
		}, 1000);
		
	});
</script>
</head>
<body>

<h2>start:</h2>
<h2>start:</h2>
</body>
</html>