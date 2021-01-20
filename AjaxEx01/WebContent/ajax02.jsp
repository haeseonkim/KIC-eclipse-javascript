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
						const data = request.responseText.trim();
						const rowdata = data.split('\n');
						
						let result = '<table border="1">';
						for(let i=0; i<rowdata.length; i++){
							let coldata = rowdata[i].split(',');
							result += '<tr>';
							result += '<td>' + coldata[0]+'</td>';
							result += '<td>' + coldata[1]+'</td>';
							result += '<td>' + coldata[2]+'</td>';
							result += '<td>' + coldata[3]+'</td>';
							result += '</tr>';
						}
						result += '</table>';
						
						document.getElementById('result').innerHTML = result;
					}else{
						alert("에러페이지");
					}
				}
			};
		
			// 비동기방식
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