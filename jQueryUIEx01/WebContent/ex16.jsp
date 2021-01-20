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
	$(document).ready(function(){
		// open window로 만들기 
		$('#btn1').button().on('click', function(){
			// window.open / open
			// login창이 이런식 ..
			open('https://m.daum.net','winopen','width=640,height=960');
		});
		
		// jQuery로 만들기
		$('#dialog').dialog({
			width: 500,
			height: 300,
			autoOpen: false,
			//modal: true,
			resizable: false,
			buttons: {
				'취소': function(){
					alert('취소');
					$(this).dialog('close');
				},
				'확인': function(){
					alert('확인');
					$(this).dialog('close');
				}
			},
			show: {
				effect: 'blind',
				duration: 1000
			},
			hide: {
				effect:'explode',
				duration: 1000
			}
			
		});
		
		$('#btn2').button().on('click', function(){
			$('#dialog').dialog('open');
		});
		
		// 부모창에서 자식창 닫게하기
		// ---> 자동 창 닫기 같은거 할 때 필요함
		$('#btn3').button().on('click', function(){
			$('#dialog').dialog('close');
		});
		
	});
</script>
</head>
<body>

<button id="btn1">창열기1</button>
<button id="btn2">창열기2</button>
<button id="btn3">창닫기</button>

<br /><hr /><br />
<div id="dialog" title="jQuery Dialog">
	<h1>Hello jQuery</h1>
</div>

</body>
</html>