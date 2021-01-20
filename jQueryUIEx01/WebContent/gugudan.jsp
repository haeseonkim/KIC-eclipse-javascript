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
		
		$('#startdan, #enddan').selectmenu({
			width: 200
		});
		
		let result = '<table width="800" border="1">';
		$('#btn').button().on('click',function(){
			
			const startdan = $('#startdan').val();
			const enddan = $('#enddan').val();
			
			console.log(startdan,enddan);
			
			for(let row=startdan; row<=enddan; row++){
				result += '<tr>'
				for(let col=1; col<=9; col++){
					result += '<td>'+ row + 'X' + col + '=' + row*col + '</td>'; 					
				}
				result += '</tr>'
			}
			result += '</table>';
			
			$('#result').append(result);
		});
	});
</script>
</head>
<body>

<select id="startdan">
		<option value="0">0</option>
		<option value="1">1</option>
		<option value="2">2</option>
		<option value="3">3</option>
		<option value="4">4</option>
		<option value="5">5</option>
		<option value="6">6</option>
		<option value="7">7</option>
		<option value="8">8</option>
		<option value="9">9</option>
</select>
<select id="enddan">
		<option value="0">0</option>
		<option value="1">1</option>
		<option value="2">2</option>
		<option value="3">3</option>
		<option value="4">4</option>
		<option value="5">5</option>
		<option value="6">6</option>
		<option value="7">7</option>
		<option value="8">8</option>
		<option value="9">9</option>
</select>
<button id="btn">구구단 출력</button>

<hr /><br />
<div id="result"></div>

</body>
</html>