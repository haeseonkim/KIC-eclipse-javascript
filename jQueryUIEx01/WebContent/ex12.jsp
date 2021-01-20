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
		$.ajax({
			url: './data/json.jsp',
			type: 'get',
			dataType: 'json',
			success: function(json){
				//console.log(json);
				const availableTags = json.data;
				
				$('#tags').autocomplete({
					source: availableTags
				});
			},
			error: function(){
				
			}
		});
		
		// autocomplete으로 만드는데 데이터는 availableTags에서 가져올거야!
		//$('#tags').autocomplete({
		//	source: availableTags
		//});
		
	});
</script>
</head>
<body>
<input type="text" id="tags" />
</body>
</html>