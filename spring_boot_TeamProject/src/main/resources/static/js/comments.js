/**
 * comments.js
 */
 
 $(document).ready(function() {
 
	$.ajax({
		type:"post",
		url:"/comments/loading",
		data:{"writeNo":$('#writeNo').val()},
		dataType:"text",
		success:function(result){
			$('#commentsBox').html(result)
		},
		error:function(){
		alert("error: 관리자에게 문의하세요");
		}
	});
 	
 	$('#registrationBtn').on('click', function(){
 	
 	if($('#comment').val() == ""){
 		alert("댓글을 입력해주세요.");
 	}else {
 	 $.ajax({
		type:"post",
		url:"/comments/commentProcessing",
		data:{"userId":$('#userId').val(),
			  "comment":$('#comment').val(),
			  "writeNo":$('#writeNo').val()},
		dataType:"text",
		success:function(result){
			$('#commentsBox').html(result);
			$('#comment').val("");
		},
		error:function(){
		alert("error: 관리자에게 문의하세요");
		}
	}); // ajax 종료
	}
 		
 	});
 
 });
 