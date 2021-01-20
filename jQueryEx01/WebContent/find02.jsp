<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script type="text/javascript">
	let xml = '';
	xml += '<books>';
	xml += '<book>';
	xml += '<title>jQuery</title>';
	xml += '<publisher>출판사1</publisher>';
	xml += '</book>';
	xml += '<book>';
	xml += '<title>JSP</title>';
	xml += '<publisher>출판사2</publisher>';
	xml += '</book>';
	xml += '</books>';
	
	$(document).ready(function() {
		console.log(typeof xml);	// String
		
		// String -> xml
		const xmlDoc = $.parseXML(xml);
		console.log(typeof xmlDoc);
		console.log(xmlDoc);
		
		// xml을 검색하는 방법
		$(xmlDoc).find( 'title' ).each( function(){
			//console.log(this);
			//console.log(this.innerHTML);
			
			console.log($(this).html() );
		});
	});
</script>
</head>
<body>

<h3 class="select">item - 0</h3>
<h3>item - 1</h3>
<h3 class="select">item - 2</h3>
<h3>item - 3</h3>
<h3 class="select">item - 4</h3>
<h3>item - 5</h3>



</body>
</html>