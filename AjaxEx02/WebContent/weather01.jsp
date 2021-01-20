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
			const strDong = document.getElementById('dong').value.trim();
			const request = new XMLHttpRequest();
			request.onreadystatechange = () =>{
				if(request.readyState == 4){
					if(request.status==200){
						const data = request.responseText.trim();
						console.log(data);
						
					}else{
						alert("에러페이지");
					}
				}
			};
		
			// crossdomain - 허용안함
			// 데이터와 요청은 같은 아이피여야 함
			//request.open('GET','https://www.kma.go.kr/wid/queryDFSRSS.jsp?zone=1159068000',true); 
			request.open('GET','./data/proxy.jsp',true); 
			request.send();
			
		};
	};
</script>
</head>
<body>

<form>
동이름: <input type="text" id="dong" size="30" />
<input type="button" id="btn" value="우편번호 검색" />
</form>
<hr /><br />
<div id="result"></div>
</body>
</html>