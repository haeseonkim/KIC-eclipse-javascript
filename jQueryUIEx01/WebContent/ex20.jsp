<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="./css/ui-darkness/jquery-ui.css" />
<style type="text/css">
body {
	font-size: 80%;
}

label {
	display: inline-block;
	width: 5em;
}

fieldset div {
	margin-bottom: 2em;
}

fieldset .help {
	display: inline-block;
}

.ui-tooltip {
	width: 210px;
}
</style>
<script type="text/javascript" src="./js/jquery-3.5.1.js"></script>
<script type="text/javascript" src="./js/jquery-ui.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		$(document).tooltip()
		//$('p').tooltip(); //이게 귀찮으면 위처럼 document에 걸어도된다.
	});
	
	$( function() {
	    var tooltips = $( "[title]" ).tooltip({
	      position: {
	        my: "left top",
	        at: "right+5 top-5",
	        collision: "none"
	      }
	    });
	    $( "<button>" )
	      .text( "Show help" )
	      .button()
	      .on( "click", function() {
	        tooltips.tooltip( "open" );
	      })
	      .insertAfter( "form" );
	  } );
</script>
</head>
<body>

	<p>
		<a href="#" title="That&apos;s what this widget is">Tooltips</a> can
		be attached to any element. When you hover the element with your
		mouse, the title attribute is displayed in a little box next to the
		element, just like a native tooltip.
	</p>
	<p>
		But as it&apos;s not a native tooltip, it can be styled. Any themes
		built with <a href="http://jqueryui.com/themeroller/"
			title="ThemeRoller: jQuery UI&apos;s theme builder application">ThemeRoller</a>
		will also style tooltips accordingly.
	</p>
	<p>Tooltips are also useful for form elements, to show some
		additional information in the context of each field.</p>
	<p>
		<label for="age">Your age:</label><input id="age"
			title="We ask for your age only for statistical purposes.">
	</p>
	<p>Hover the field to see the tooltip.</p>

	<br />
	
	<!-- Forms -->
	<form>
		<fieldset>
			<div>
				<label for="firstname">Firstname</label> <input id="firstname"
					name="firstname" title="Please provide your firstname.">
			</div>
			<div>
				<label for="lastname">Lastname</label> <input id="lastname"
					name="lastname" title="Please provide also your lastname.">
			</div>
			<div>
				<label for="address">Address</label> <input id="address"
					name="address" title="Your home or work address.">
			</div>
		</fieldset>
	</form>


</body>
</html>