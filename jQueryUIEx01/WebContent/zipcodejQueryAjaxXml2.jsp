<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="./css/ui-darkness/jquery-ui.css" />
<style type="text/css">
	body{ font-size:80%; }
</style>
<script type="text/javascript" src="./js/jquery-3.5.1.js"></script>
<script type="text/javascript" src="./js/jquery-ui.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		// 배열 없이 address하나씩 돌기	
	
		//$('#accordion').accordion();
		
		$('#btn').button().on('click', () => {
			console.log($('#dong').val());
			
			$.ajax({
				url:"./data/xml.jsp",
				data: {
					'strDong' : $('#dong').val()
				},
				type: 'get',
				dataType: 'text', 
				success: function(data){
					
					let result = '';
					
					let seqValue = '';
					let zipcodeValue = '';
					let sidoValue = '';
					let gugunValue = '';
					let dongValue = '';
					let riValue = '';
					let bunjiValue = '';
					
					$(data).find('address').each( function(){
						seqValue = $(this).find('seq').html();
						zipcodeValue = $(this).find('zipcode').html();
						sidoValue = $(this).find('sido').html();
						gugunValue = $(this).find('gugun').html();
						dongValue = $(this).find('dong').html();
						riValue = $(this).find('ri').html();
						bunjiValue = $(this).find('bunji').html();
						
						
						result += '<h3>'+ zipcodeValue +'</h3>';
						result += '<p>';
						result += sidoValue +','+ gugunValue +','+ dongValue +','+ riValue +','+ bunjiValue ;
						result += '</p>';
					});
						
					
					
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
	
동이름: <input type="text" id="dong" size="30" /> 
<button id="btn">우편번호 검색</button>

<hr />
<br />
<div id="accordion"></div>
</body>
</html>