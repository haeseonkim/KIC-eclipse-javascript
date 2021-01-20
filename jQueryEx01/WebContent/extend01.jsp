<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script type="text/javascript">
	// $( tag/id/class ).css('color', 'red')
	$(document).ready(function() {
		// 객체 선언
		let object = { name: '홍길동'};
		console.log(object);
		
		// 객체 추가
		object.region1 = '서울시 종로구';
		object.part1 = '리더';
		
		console.log(object);
		
		$.extend( object, 
			{ region2: '서울시 강남구', part2: '베이스' },
			{ region3: '서울시 강남구', part3: '베이스' }
		);
		
		console.log(object);
		
		let output = '';
		
		// for문안쓰고 each로 객체 전부 출력 가능
		$.each(object, (key, value) => {
			console.log(key, value);
		});
	});
</script>
</head>
<body>

</body>
</html>