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
						// 문자열 - 문자열 API
						//console.log(request.responseText);
						// XML Dom 객체 - DOM API
						// https://www.w3schools.com/xml/dom_intro_asp
						//console.log(request.responseXML);
						
						const xmlData = request.responseXML;
						
						const names = xmlData.getElementsByTagName('name');
						const publishers = xmlData.getElementsByTagName('publisher');
						const authors = xmlData.getElementsByTagName('author');
						const prices = xmlData.getElementsByTagName('price');
						
						//console.log(names);
						//console.log(names.length);
						//console.log(prices);
						
						let result = '<table width="800" border="1">';
						for(let i=0; i<names.length; i++){
							let nameValue = names[i].childNodes[0].nodeValue;
							let publisherValue = publishers[i].childNodes[0].nodeValue;
							let authorValue = authors[i].childNodes[0].nodeValue;
							let priceValue = prices[i].childNodes[0].nodeValue;
							
							result += '<tr>';
							result += '<td>' + nameValue +'</td>';
							result += '<td>' + publisherValue +'</td>';
							result += '<td>' + authorValue +'</td>';
							result += '<td>' + priceValue +'</td>';
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
		
			request.open('GET','./data/xml2.jsp',true); 
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