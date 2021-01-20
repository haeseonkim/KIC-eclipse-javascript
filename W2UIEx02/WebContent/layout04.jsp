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
				{ type: 'top', style: pstyle, size: 50},
				{ type: 'left', style: pstyle, size: 200},
				{ type: 'main', style: pstyle },
			]
		});
		
		const text = '<h1>Hello W2UI</h1>';
		let content = '';
		
		$(window).on('click',function(){
			// layout을 클릭할때마다
			// main 영역에 뭘(여기선 content += text) 해라
			w2ui.layout.content( 'main', (content += text + 'hi')); 	
		});
	});
</script>
</head>
<body>
<div id="wrap"></div>
</body>
</html>