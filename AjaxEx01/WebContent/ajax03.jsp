<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	window.onload =()=> {
		document.getElementById('btn').onclick = function(){
			const request = new XMLHttpRequest();
			console.log("1");
			request.onreadystatechange = () =>{
				console.log('응답', request.readyState);
				console.log("2");
			};
		
			// 비동기방식
			request.open('GET','./data/data.csv',true); 
			request.send();
			console.log("3");
		};
	};
</script>
</head>
<body>

<button id="btn">요청하기</button>
<div id="result"></div>
</body>
</html>
