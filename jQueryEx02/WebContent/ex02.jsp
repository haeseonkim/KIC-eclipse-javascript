<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		$('#btn').on('click', () => {
			$.ajax({
				//url:"./data/xml2.jsp?name=CSS",
				url:"./data/xml2.jsp",
				data: {
					'name' : "CSS"
				},
				type: 'get',
				dataType: 'text', 
				success: function(data){
					//console.log('성공');
					//console.log(typeof data);
					$(data).find('book').each(function(){
						console.log($(this).find('name').text());
						console.log($(this).find('price').text());
					});
				},
				error: function(){
					console.log('실패');
				}
			});	
		});
	});
</script>
</head>
<body>
<button id="btn">요청</button>
<br /><hr /><br />
<div id="result"></div>
</body>
</html>