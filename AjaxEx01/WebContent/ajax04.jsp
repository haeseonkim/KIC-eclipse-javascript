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
			request.onreadystatechange = () =>{
				console.log('응답', request.readyState);
				if(request.readyState == 4){
					if(request.status==200){
						// 성공일때 처리
					}else{
						alert("에러페이지");
					}
				}
			};
		
			request.open('GET','./data/data.csv',true); 
			request.send();
			
		};
	};
</script>
</head>
<body>

<button id="btn">요청하기</button>
<div id="result"></div>
</body>
</html>