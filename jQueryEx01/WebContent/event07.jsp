<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	* { border: 1px solid orange; text-align: center; padding: 15px; }
</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		$('#h').on('click', function(){
			console.log('h');
		});
		
		$('#p').on('click', function(e){
			console.log('p');
			// 이벤트 버블링 방지
			if(e.stopPropagation){
				e.stopPropagation();
			}
		});
	});
</script>
</head>
<body>

<div onclick="console.log('div')">
	<div onclick="console.log('inner-div')">
		<h1 id="h">
			<p id="p">Hello jQuery</p>
		</h1>
	</div>
</div>

</body>
</html>