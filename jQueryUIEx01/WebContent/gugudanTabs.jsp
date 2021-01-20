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
	.ui-tabs{ width: 80%; }
</style>
<script type="text/javascript" src="./js/jquery-3.5.1.js"></script>
<script type="text/javascript" src="./js/jquery-ui.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		$('#btn1').button().on('click', function(){
			let tnav = '';
			for(let i=1; i<=9; i++){
				tnav += '<li><a href="#tabs-' + i + '">' + i +'단</a></li>';
			}
			
			$('#tabs').tabs().find('.ui-tabs-nav').append(tnav);
			
			let html = '';
			for(let d=1; d<=9; d++){
				html += '<div id="tabs-'+ d +'">';
				for(let i=1; i<=9; i++){
					html += '<p>'+ d + 'X' + i + ' = ' + (d*i) + '</p>';
				}
				html += '</div>';
			}
			$('#tabs').tabs().append(html);
			$('#tabs').tabs('refresh');
			
		});
	});
</script>
</head>
<body>

<button id="btn1">구구단 보이기</button>
<br /><hr /><br />
<div id="tabs">
	<ul>
	</ul>
</div>

</body>
</html>