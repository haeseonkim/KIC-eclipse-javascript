<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- <script type="text/javascript" src="./js/jquery-3.5.1.js"></script> -->
<!-- <script type="text/javascript" src="./js/jquery-3.5.1.min.js"></script> -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		// 같은 이름 여러개 일때 
		// for문 안쓰고 이렇게 해줄수 있다.
		$( 'h2' ).each(function(index, item){
			// item으로 가져올 수도 있고
			console.log(item);
			console.log(item.innerHTML);
			// this로 가져올 수도 있다.
			
			console.log(this.innerHTML);
		});
	});
</script>
</head>
<body>

<h2>item -0</h2>
<h2>item -1</h2>
<h2>item -2</h2>
<h2>item -3</h2>

</body>
</html>