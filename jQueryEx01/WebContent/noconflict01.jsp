<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script type="text/javascript">
	$.noConflict() // 이거 주석처리 하거나 $를 jQuery로 바꾸면 아래꺼 실행됨
	const J = jQuery;
	J(document).ready(function() {
		// noconflict
		// $사용으로 충돌이 나는 걸 방지하기 위해 $사용하지 말라고 해주는것
		//console.log('Hello jQuery');
		
		let object = { name: '홍길동'};
		J.extend(object,
				{ region2: '서울시 강남구', part2: '베이스1' }
		);
		
		console.log(object);
		
		// each
		J.each(object, (key, value) => {
			console.log(key, value);
		});
	});
</script>
</head>
<body>

<h2>item - 0</h2>
<h2>item - 1</h2>
<h2>item - 2</h2>
<h2>item - 3</h2>

</body>
</html>