<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="./css/cupertino/jquery-ui.css">
<style type="text/css">
	body { font-size: 70%; }
	
	#accordion > div > div:last-child { text-align: right; }
	#accordion-resizer {
		margin: 0 60px;
		max-width: 1500px;
	}
	#btngroup {
		text-align: right;
	}
	#btngroup button {
	margin: 3px;
		padding: 3px;
		width: 100px;
	}
	label.header {
		font-size: 10pt;
		margin-right: 5px;
	}
	input.text {
		width: 80%;
		margin-bottom: 12px;
		padding: 0.4em;
	}
	input.mail {
		width: 35%;
		margin-bottom: 12px;
		padding: 0.4em;
	}
	fieldset {
		margin-left: 15px;
		margin-top: 15px;
		border: 0;
	}
</style>
<script type="text/javascript" src="./js/jquery-3.5.1.js"></script>
<script type="text/javascript" src="./js/jquery-ui.js"></script>
<script type="text/javascript">
	$( document ).ready( function() {
		$( '#writeDialog' ).css( 'display', 'none' );
		$( '#modifyDialog' ).css( 'display', 'none' );
		$( '#deleteDialog' ).css( 'display', 'none' );
	
		
		// 선언부
		
		const readServer = function() {
			$( '#accordion' ).accordion({
				collapsible: 'true',
				heightStyle: 'content'
			});
			$( 'button.action' ).button();
			
			$.ajax({
				url:'list.json',
				type: 'get',
				dataType: 'json',
				success: function(json){
					$('#accordion').empty(); //기존데이터 삭제
					
					$.each(json.data, function(index, item){
						let title = '<h3>'+ item.seq +' : '+ item.writer +'('+ item.hit +') new</h3>';
						let html = '<div>';
						html +=	'<div>'+ item.wdate +'</div>';
						html +=	'<div>'+ item.subject +'</div>';
						html +=	'<br />';
						html +=	'<hr noshade="noshade" />';
						html +=	'<div>'+ item.content +'</div>';
						html +=	'<br />';
						html +=	'<hr noshade="noshade" />';
						html +=	'<br />';
						html +=	'<div>';
						html +=	'	<button idx="'+ item.seq +'" action="modify" class="action">수정</button>';
						html +=	'	<button idx="'+ item.seq +'" action="delete" class="action">삭제</button>';
						html +=	'</div>';       
						html +=	'</div>';
						let content = $('<div></div>').html(html);
						
						$('#accordion').append(title);
						$('#accordion').append(content);
						
					});
					$('#accordion').accordion('refresh');
					
					// 이거해줘야 버튼 모양 디자인이 먹음
					$('button.action').button();
				},
				error: function(){
					alert('서버에러');
				}
			});
			
		};
		
		const writeServer = function(){
			$.ajax({
				url: 'write_ok.json',
				type: 'get',
				data:{
					subject: $('#w_subject').val(),
					writer: $('#w_writer').val(),
					mail1: $('#w_mail1').val(),
					mail2: $('#w_mail2').val(),
					password: $('#w_password').val(),
					content: $('#w_content').val()
				},
				dataType: 'json',
				success: function(json){
					if(json.flag == 0){
						alert('글쓰기 성공');
						$('#writeDialog').dialog('close');
						readServer();
					}
				},
				error: function(){
					alert('서버 에러');
				}
			})
		};
		
		const modifyServer = function(seq){
			
			$.ajax({
				url: 'modify.json',
				type: 'get',
				data: {
					seq : seq
				},
				dataType: 'json',
				success: function(json){
					let subject = json.subject;
					let writer = json.writer;
					let mail1 = json.mail1;
					let mail2 = json.mail2;
					let content = json.content;
					
					$('#m_subject').val(subject);
					$('#m_writer').val(writer);
					$('#m_mail1').val(mail1);
					$('#m_mail2').val(mail2);
					$('#m_content').val(content);
				},
				error: function(){
					alert('서버에러');
				}
			});
		};
		
		const modifyOkServer = function(seq){
			$.ajax({
				url: 'modify_ok.json',
				type: 'get',
				data:{
					seq: seq,
					subject: $('#m_subject').val(),
					writer: $('#m_writer').val(),
					mail1: $('#m_mail1').val(),
					mail2: $('#m_mail2').val(),
					password: $('#m_password').val(),
					content: $('#m_content').val()
				},
				dataType: 'json',
				success: function(json){
					if(json.flag == 0){
						alert('글수정 성공');
						$('#modifyDialog').dialog('close');
						$('#accordion').accordion('refresh');
						readServer();
					}else if(json.flag == 1){
						alert('비밀번호 오류');
					}else{
						alert('글쓰기 실패');
					}
				},
				error: function(json){
					alert('서버에러');
				}
			})
		};
		
		const deleteServer = function(seq){
			
			$.ajax({
				url: 'delete.json',
				type: 'get',
				data: {
					seq : seq
				},
				dataType: 'json',
				success: function(json){
					let subject = json.subject;
					$('#d_subject').val(subject);
				},
				error: function(){
					alert('서버에러');
				}
			});
		};
		
		const deleteOkServer = function(seq){
			
			$.ajax({
				url: 'delete_ok.json',
				type: 'get',
				data: {
					seq : seq,
					password: $('#d_password').val()
				},
				dataType: 'json',
				success: function(json){
					if(json.flag == 0){
						alert('글삭제 성공');
						$('#deleteDialog').dialog('close');
						$('#accordion').accordion('refresh');
						readServer();
					}else if(json.flag == 1){
						alert('비밀번호 오류');
					}else{
						alert('글삭제 실패');
					}
				},
				error: function(){
					alert('서버에러');
				}
			});
		};
		
		
		
		// 실행부
		
		readServer();
		
		$( document ).on( 'click', 'button.action', function() {
			if( $( this).attr( 'action' ) == 'write' ) {
				$( '#writeDialog' ).dialog ({
					width: 700,
					height: 500,
					modal: true,
					buttons: {
						'글쓰기': function() {
							//$( this ).dialog( 'close' );
							writeServer();
						},
						'취소': function() {
							$( this ).dialog( 'close' );
						}
					},
					close: function() {
					}
				});
			} else if( $( this ).attr( 'action' ) == 'modify' ) {
				const seq = $( this ).attr( 'idx' );
				
				modifyServer(seq);
				
				$( '#modifyDialog' ).dialog({
					width: 700,
					height: 500, 
					modal: true,
					buttons: {
						'수정': function() {
							modifyOkServer(seq);
							//$( this ).dialog( 'close' );
						},
						'취소': function() {
							$( this ).dialog( 'close' );
						}
					},
					close: function() {
					}
				});
				
			} else if( $( this ).attr( 'action' ) == 'delete' ) {
				const seq = $(this).attr('idx');
				deleteServer(seq);
				$( '#deleteDialog' ).dialog({
					width: 700,
					height: 200,
					modal: true,
					buttons: {
						'삭제': function() {
							deleteOkServer(seq);
							//$( this ).dialog( 'close' );
						},
						'취소': function() {
							$( this ).dialog( 'close' );
						}
					},
					close: function() {
					}
				});
			} else {
			}
		});
	});
</script>
</head>
<body>
<div id="accordion-resizer">
	<hr noshade="noshade" />
	<div id="accordion">
	</div>
	<hr noshade="noshade" />
	<div id="btngroup">
		<button action="write" class="action">글쓰기</button>
	</div>
</div>
<div id="writeDialog" title="글쓰기">   
	<fieldset>
		<div>
			<label for="subject" class="header">제&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;목</label>
			<input type="text" id="w_subject" class="text ui-widget-content ui-corner-all"/>
		</div>
		<div>
			<label for="writer" class="header">이&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;름</label>
			<input type="text" id="w_writer" class="text ui-widget-content ui-corner-all"/>
		</div>
		<div>
			<label for="mail" class="header">메&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;일</label>
			<input type="text" id="w_mail1" class="mail ui-widget-content ui-corner-all"/>
			@
			<input type="text" id="w_mail2" class="mail ui-widget-content ui-corner-all"/>
		</div>
		<div>
			<label for="password" class="header">비밀&nbsp;번호</label>
			<input type="password" id="w_password" class="text ui-widget-content ui-corner-all"/>
		</div>
		<div>
			<label for="content" class="header">본&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;문</label>
			<br /><br />
			<textarea rows="15" cols="100" id="w_content" class="text ui-widget-content ui-corner-all"></textarea>
		</div>
	</fieldset>
</div>
<div id="modifyDialog" title="글수정">   
	<fieldset>
		<div>
			<label for="subject" class="header">제&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;목</label>
			<input type="text" id="m_subject" class="text ui-widget-content ui-corner-all"/>
		</div>
		<div>
			<label for="writer" class="header">이&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;름</label>
			<input type="text" id="m_writer" class="text ui-widget-content ui-corner-all" readonly="readonly"/>
		</div>
		<div>
			<label for="mail" class="header">메&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;일</label>
			<input type="text" id="m_mail1" class="mail ui-widget-content ui-corner-all"/>
			@
			<input type="text" id="m_mail2" class="mail ui-widget-content ui-corner-all"/>
		</div>
		<div>
			<label for="password" class="header">비밀&nbsp;번호</label>
			<input type="password" id="m_password" class="text ui-widget-content ui-corner-all"/>
		</div>
		<div>
			<label for="content" class="header">본&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;문</label>
			<br /><br />
			<textarea rows="15" cols="100" id="m_content" class="text ui-widget-content ui-corner-all"></textarea>
		</div>
	</fieldset>
</div>
<div id="deleteDialog" title="글삭제">   
	<fieldset>
		<div>
			<label for="subject" class="header">제&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;목</label>
			<input type="text" id="d_subject" class="text ui-widget-content ui-corner-all" readonly="readonly"/>
		</div>
		<div>
			<label for="password" class="header">비밀&nbsp;번호</label>
			<input type="password" id="d_password" class="text ui-widget-content ui-corner-all"/>
		</div>
	</fieldset>
</div>
</body>
</html>