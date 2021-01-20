<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="./css/w2ui-1.5.rc1.min.css" />
<style type="text/css">
	#wrap {
		margin: 0 auto;
		width: 960px;
		height: 500px;
	}
</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.4/jquery.min.js"></script>
<script type="text/javascript" src="./js/w2ui-1.5.rc1.min.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		const data = [
			{ recid: 1, name: 'HTML5 + CSS3', author: '홍길동1', publisher: '미디어', price: 3000, point: 30400 },
			{ recid: 2, name: 'HTML5 + CSS3', author: '홍길동2', publisher: '미디어', price: 3000, point: 30400 },
			{ recid: 3, name: 'HTML5 + CSS3', author: '홍길동3', publisher: '미디어', price: 3000, point: 30400 }
		]
		
		$('#wrap').w2grid({
			name: 'grid',
			show: {
				header: true,
				toolbar: true,
				footer: true,
				columnHeaders: true,	// true가 default
				lineNumbers: true,
				toolbarReload: true,
				toolbarSearch: true,
				toolbarAdd: true,
				toolbarDelete: true
			},
			columns: [
				{ field: 'name', caption: '도서명', size: '40%' },
				{ field: 'author', caption: '저자', size: '10%' },
				{ field: 'publisher', caption: '출판사', size: '20%' },
				{ field: 'price', caption: '가격', size: '10%' },
				{ field: 'point', caption: '포인트', size: '20%' },
			],
			records: data,
			onAdd: function(){
				console.log( 'onAdd 호출', this.total);
				this.add(
						// recid는 primary key여야 하므로 total을 사용
					{ recid: this.total+1, name: 'HTML5 + CSS3', author: '홍길동3', publisher: '미디어', price: 3000, point: 30400 }
				);
			},
			onDelete: function(target, e){
				console.log('onDelete 호출');
				
				// 선택된게 뭔지 recid값이 출력된다.
				// 근데 json으로 나오기 때문에 string으로 나오도록 해줘야한다.
				// recid - json - string
				console.log(this.getSelection());
				
				e.preventDefault();
			},
			onSearch: function(target, e){
				// e.searchData[0].value : 검색어가 나온다.
				console.log('onSearch 호출', e.searchData[0].value);
			},
			onReload: function(){
				console.log('onReload 호출');
			}
		});
	});
</script>
</head>
<body>

<div id="wrap"></div>

</body>
</html>