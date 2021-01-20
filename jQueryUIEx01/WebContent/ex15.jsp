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
		$('#datepicker1').datepicker({
			// 달 몇개 보여줄건지(항공사에서 많이 씀)
			numberOfMonths: 3,
			dateFormat : 'yy-mm-dd',
			//showAnim: 'bounce'
			showButtonPanel: true
		});
		$('#datepicker2').datepicker();
		
		$( "#datepicker" ).datepicker();
		$( "#format" ).on( "change", function() {
			//"option"의 "dateFormat"을 $ ( this ).val()로 변경
			$( "#datepicker" ).datepicker( "dateFormat", $( this ).val() );
		});
	});
</script>
</head>
<body>
<div>
	<!-- html5에서 제공하는 달력 -->
	<input type="date" />
</div>
<br /><br />

<div>
	<!-- popup -->
	<input type="text" id="datepicker1" readonly="readonly" />
</div>
<br /><br />

<div>
	<!-- inline -->
	<div id="datepicker2" ></div>
</div>
<br /><br />

<p>Date: <input type="text" id="datepicker" size="30"></p>

<p>Format options:<br>
  <select id="format">
    <option value="mm/dd/yy">Default - mm/dd/yy</option>
    <option value="yy-mm-dd">ISO 8601 - yy-mm-dd</option>
    <option value="d M, y">Short - d M, y</option>
    <option value="d MM, y">Medium - d MM, y</option>
    <option value="DD, d MM, yy">Full - DD, d MM, yy</option>
    <option value="&apos;day&apos; d &apos;of&apos; MM &apos;in the year&apos; yy">With text - &apos;day&apos; d &apos;of&apos; MM &apos;in the year&apos; yy</option>
  </select>
</p>
</body>
</html>