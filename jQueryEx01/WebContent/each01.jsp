<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- <script type="text/javascript" src="./js/jquery-3.5.1.js"></script> -->
<!-- <script type="text/javascript" src="./js/jquery-3.5.1.min.js"></script> -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		//jquery에서 사용하는 메서드
		//배열
		const array = [
			{ name: 'daum', link:'https://www.daum.net'},
			{ name: 'naver', link:'https://www.naver.com'},
			{ name: 'google', link:'https://www.google.com'}
		];
		
		for(let i=0; i<array.length ; i++){
			console.log(array[i].name, array[i].link);
		}
		
		for(let i in array){
			console.log(array[i].name, array[i].link);
		}
		
		// ECMA 5
		// Array forEach  
		array.forEach(function(item){
			console.log(item.name, item.link);
		});
		
		// jquery 
		$.each(array, function(index, item){
			console.log(index, item.name, item.link);
		});
		
		// ECMA 6
		// Array forEach  
		array.forEach((item) => {
			console.log(item.name, item.link);
		});
		
		// jquery
		$.each(array, (index, item) => {
			console.log(index, item.name, item.link);
		});
	});
</script>
</head>
<body>


</body>
</html>