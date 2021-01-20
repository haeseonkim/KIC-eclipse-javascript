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
		// 동적배열에 전체 seq, sido, ... 각각 다 담아서 돌리기
		
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
					var seqs = new Array();
					var zipcodes = new Array();
					var sidos = new Array();
					var guguns = new Array();
					var dongs = new Array();
					var ris = new Array();
					var bunjis = new Array();
					
					$(data).find( 'seq' ).each( function(){
						seqs.push($(this).html());
					});
					$(data).find( 'zipcode' ).each( function(){
						zipcodes.push($(this).html());
					});
					$(data).find( 'sido' ).each( function(){
						sidos.push($(this).html());
					});
					$(data).find( 'gugun' ).each( function(){
						guguns.push($(this).html());
					});
					$(data).find( 'dong' ).each( function(){
						dongs.push($(this).html());
					});
					$(data).find( 'ri' ).each( function(){
						ris.push($(this).html());
					});
					$(data).find( 'bunji' ).each( function(){
						bunjis.push($(this).html());
					});
					
					
					let result = '';
					for(let i=0; i<seqs.length; i++){
						let seqValue = seqs[i];
						let zipcodeValue = zipcodes[i];
						let sidoValue = sidos[i];
						let gugunValue = guguns[i];
						let dongValue = dongs[i];
						let riValue = ris[i];
						let bunjiValue = bunjis[i];
						
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
	
동이름: <input type="text" id="dong" size="30" /> 
<button id="btn">우편번호 검색</button>

<hr />
<br />
<div id="accordion"></div>
</body>
</html>