<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	// 선언부분
	const func1 = function() {
		alert("func1 호출");
	};
</script>
<script type="text/javascript" src="default.js"></script>
</head>
<body>
<script type="text/javascript">
	// 호출부분
	func2();
</script>
</body>

</html>