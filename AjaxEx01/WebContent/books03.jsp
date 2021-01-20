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
						// console.log(request.responseText);
						
						// 문자열의 내용을 json 객체화 (배열)
						const jsonData = JSON.parse(request.responseText);
						//console.log(jsonData);
						//console.log(jsonData.length);
						//console.log(jsonData[0].name);
						//console.log(jsonData[0].price);
						
						let result = '<table width="800" border="1">';
						for(let i=0; i<jsonData.length; i++){
							result += '<tr>';
							result += '<td>' + jsonData[i].name +'</td>';
							result += '<td>' + jsonData[i].publisher +'</td>';
							result += '<td>' + jsonData[i].author +'</td>';
							result += '<td>' + jsonData[i].price +'</td>';
							result += '</tr>';
						}
						result += '</table>';
						
						document.getElementById('result').innerHTML = '';
						document.getElementById('result').innerHTML = result;
						
					}else{
						alert("에러페이지");
					}
				}
			};
		
			request.open('GET','./data/json3.jsp',true); 
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