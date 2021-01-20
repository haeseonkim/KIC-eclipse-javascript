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
		$('#accordion').accordion();
		
		$('#btn').button().on('click', function(){
			let data = '<h3>Section 5</h3>';
			data += '<div>';
			data += '	<p>';
			data += '	새로운 데이터';
			data += '	새로운 데이터';
			data += '	새로운 데이터';
			data += '	</p>';
			data += '</div>';
			
			$('#accordion').append(data);
			
			// accordion화 시킴
			$('#accordion').accordion('refresh');
			
		});
		
	});
</script>
</head>
<body>

<button id="btn">추가</button>
<br /><hr /><br />
<div id="accordion">
	<h3>Section 1</h3>
	<div>
	    <p>
	    Mauris mauris ante, blandit et, ultrices a, suscipit eget, quam. Integer
	    ut neque. Vivamus nisi metus, molestie vel, gravida in, condimentum sit
	    amet, nunc. Nam a nibh. Donec suscipit eros. Nam mi. Proin viverra leo ut
	    odio. Curabitur malesuada. Vestibulum a velit eu ante scelerisque vulputate.
	    </p>
	</div>
	<h3>Section 2</h3>
	<div>
	    <p>
	    Sed non urna. Donec et ante. Phasellus eu ligula. Vestibulum sit amet
	    purus. Vivamus hendrerit, dolor at aliquet laoreet, mauris turpis porttitor
	    velit, faucibus interdum tellus libero ac justo. Vivamus non quam. In
	    suscipit faucibus urna.
	    </p>
	</div>
	<h3>Section 3</h3>
	<div>
	    <p>
	    Nam enim risus, molestie et, porta ac, aliquam ac, risus. Quisque lobortis.
	    Phasellus pellentesque purus in massa. Aenean in pede. Phasellus ac libero
	    ac tellus pellentesque semper. Sed ac felis. Sed commodo, magna quis
	    lacinia ornare, quam ante aliquam nisi, eu iaculis leo purus venenatis dui.
	    </p>
	    <ul>
		    <li>List item one</li>
		    <li>List item two</li>
		    <li>List item three</li>
	    </ul>
	</div>
	<h3>Section 4</h3>
	<div>
	    <p>
	    Cras dictum. Pellentesque habitant morbi tristique senectus et netus
	    et malesuada fames ac turpis egestas. Vestibulum ante ipsum primis in
	    faucibus orci luctus et ultrices posuere cubilia Curae; Aenean lacinia
	    mauris vel est.
	    </p>
	    <p>
	    Suspendisse eu nisl. Nullam ut libero. Integer dignissim consequat lectus.
	    Class aptent taciti sociosqu ad litora torquent per conubia nostra, per
	    inceptos himenaeos.
	    </p>
	</div>
</div>
</body>
</html>