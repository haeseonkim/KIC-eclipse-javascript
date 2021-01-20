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
				{ type: 'top', style: pstyle, resizable: true, content: 'top', size: 150},
				{ type: 'left', style: pstyle, resizable: true, content: 'right', size: 200},
				{ type: 'main', style: pstyle, resizable: true, content: 'main'},
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
			w2ui.layout.toggle('left');
		});
	});
</script>
</head>
<body>
<div id="wrap"></div>
</body>
</html>