<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="./css/w2ui-1.5.rc1.min.css" />
<style type="text/css">
	#wrap {
		margin: 0 auto;
		width: 960px;
		height: 500px;
	}
</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script type="text/javascript" src="./js/w2ui-1.5.rc1.min.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		const pstyle = 'background-color: #f5f6f7; border: 1px solid #dfdfdf; padding 5px';
		$('#wrap').w2layout({	// 이렇게 w2에서 제공하는거 쓰면됨
			name: 'layout',
			panels:[	//type: 어느영역인지 , style: 디자인, content: 내부에 넣을 값(html가능), size: 영역의 높이같은 크기
				{ type: 'top', style: pstyle, resizable: true, content: 'top', size: 150},
				{ type: 'bottom', style: pstyle, resizable: false, content: 'bottom', size: 50},
				{ type: 'left', style: pstyle, resizable: true, content: 'left', size: 200},
				{ type: 'right', style: pstyle, resizable: true, content: 'right', size: 200},
				{ type: 'main', style: pstyle, resizable: true, content: 'main'},
				{ type: 'preview', style: pstyle, resizable: true, content: '<h1>preview</h1>', size: '50%'}
			],
			onHide: function() {
				alert('Hide');
			},
			onShow: function() {
				alert('Show');
			}
		});
		
		$(window).on('click',function(){
			w2ui.layout.toggle('top');
			w2ui.layout.toggle('right');
		});
	});
</script>
</head>
<body>
<div id="wrap"></div>
</body>
</html>