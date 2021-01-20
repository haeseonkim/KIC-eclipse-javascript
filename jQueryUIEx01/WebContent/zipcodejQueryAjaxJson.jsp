<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="./css/ui-lightness/jquery-ui.css" />
<style type="text/css">
	body{ font-size:80%; }
</style>
<script type="text/javascript" src="./js/jquery-3.5.1.js"></script>
<script type="text/javascript" src="./js/jquery-ui.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		// JSON으로 받기
		
		//$('#accordion').accordion();
		
		$('#btn').button().on('click', () => {
			console.log($('#dong').val());
			
			$.ajax({
				url:"./data/json2.jsp",
				data: {
					'strDong' : $('#dong').val()
				},
				type: 'get',
				dataType: 'json', 
				success: function(data){
					
					let result = '';
					for(let i=0; i<data.length; i++){
						let seqValue = data[i].seq;
						let zipcodeValue = data[i].zipcode;
						let sidoValue = data[i].sido;
						let gugunValue = data[i].gugun;
						let dongValue = data[i].dong;
						let riValue = data[i].ri;
						let bunjiValue = data[i].bunji;
						
						result += '<h3>'+ zipcodeValue +'</h3>';
						result += '<p>';
						result += sidoValue +','+ gugunValue +','+ dongValue +','+ riValue +','+ bunjiValue ;
						result += '</p>';
					}
					
					console.log(result);
					$('#accordion').append(result);
					
					$('#accordion').accordion();
					
					//$('#accordion').accordion('refresh');
				},
				error: function(){
					alert("에러페이지");
				}
			});
						
		});
	});
</script>
</head>
<body>
<fieldset>
	<legend>우편번호 검색기</legend>	
	동이름: <input type="text" id="dong" size="30" /> 
	<button id="btn">우편번호 검색</button>
</fieldset>
<br />
<hr />
<br />
<div id="accordion"></div>
</body>
</html>