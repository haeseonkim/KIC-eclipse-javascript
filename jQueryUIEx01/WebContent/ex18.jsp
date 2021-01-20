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
	.ui-menu{width: 200px }
</style>
<script type="text/javascript" src="./js/jquery-3.5.1.js"></script>
<script type="text/javascript" src="./js/jquery-ui.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		$('#menu1').menu();
		$('#menu2').menu();
	});
</script>
</head>
<body>
<ul id="menu1">
  <li><div class="ui-state-disabled">Toys (n/a)</div></li>
  <li><div>Books</div></li>
  <li><div>Clothing</div></li>
  <li><div>Electronics</div>
    <ul>
      <li><div>Home Entertainment</div></li>
      <li><div>Car Hifi</div></li>
      <li><div>Utilities</div></li>
    </ul>
  </li>
  <li><div>Movies</div></li>
  <li><div>Music</div>
    <ul>
      <li><div>Rock</div>
        <ul>
          <li><div>Alternative</div></li>
          <li><div>Classic</div></li>
        </ul>
      </li>
      <li><div>Jazz</div>
        <ul>
          <li><div>Freejazz</div></li>
          <li><div>Big Band</div></li>
          <li><div>Modern</div></li>
        </ul>
      </li>
      <li><div>Pop</div></li>
    </ul>
  </li>
  <li><div class="ui-state-disabled">Specials (n/a)</div></li>
</ul>
<br />
<ui id="menu2">
	<li>
		<div><span class="ui-icon ui-icon-disk"></span>Save</div>
	</li>
	<li>
		<div><span class="ui-icon ui-icon-zoomin"></span>Zoom In</div>
	</li>
	<li>
		<div><span class="ui-icon ui-icon-zoomout"></span>Zoom Out</div>
	</li>
	<li class="ui-state-disabled">
		<div><span class="ui-icon ui-icon-print"></span>Print...</div>
	</li>
	<li>
		<div>Playback</div>
		<ul>
			<li>
				<div><span class="ui-icon ui-icon-seek-start"></span>Prev</div>
			</li>
			<li>
				<div><span class="ui-icon ui-icon-stop"></span>Stop</div>
			</li>
			<li>
				<div><span class="ui-icon ui-icon-play"></span>Play</div>
			</li>
			<li>
				<div><span class="ui-icon ui-icon-seek-end"></span>Next</div>
			</li>
		</ul>
	</li>
	<li>
    	<div>Learn more about this menu</div>
  	</li>
</ui>
</body>
</html>