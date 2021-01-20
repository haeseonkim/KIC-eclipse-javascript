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
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.4/jquery.min.js"></script>
<script type="text/javascript" src="./js/w2ui-1.5.rc1.min.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		const data = [
			{ recid: 1, name: 'HTML5 + CSS3', author: '홍길동1', publisher: '미디어', price: 3000, point: 30400 },
			{ recid: 2, name: 'HTML5 + CSS3', author: '홍길동2', publisher: '미디어', price: 3000, point: 30400 },
			{ recid: 3, name: 'HTML5 + CSS3', author: '홍길동3', publisher: '미디어', price: 3000, point: 30400 }
		]
		
		$('#wrap').w2grid({
			name: 'grid',
			columns: [
				{ field: 'name', caption: '도서명', size: '40%' },
				{ field: 'author', caption: '저자', size: '10%' },
				{ field: 'publisher', caption: '출판사', size: '20%' },
				{ field: 'price', caption: '가격', size: '10%' },
				{ field: 'point', caption: '포인트', size: '20%' },
			],
			records: data
		});
	});
</script>
</head>
<body>

<div id="wrap"></div>

</body>
</html>