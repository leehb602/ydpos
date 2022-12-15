/**
 * login.js
 */
 
 $(document).ready(function() {
 	$('.Login_btn').on('click',function() {
	// 폼이 submit 되지 않도록 기본 기능 중단
	event.preventDefault();
	
	// id와 pw값 변수에 저장
	var userId = $('#userID').val(); 	
	var userPw = $('#userPwd').val();
	
	if(userId==""){
		alert("아이디를 입력하세요");
        $('#userID').focus();
        return false;
	} else if (userPw == "") {
            alert("비밀번호를 입력하세요");
            $('#userPwd').focus();
            return false;
    } else {
	// 서버에 전송하고 결과 받아서 처리
	$.ajax({
		type:"post",
		url:"/user/login",
		data:{"id":userId, "pw":userPw},
		dataType:"text",
		success:function(result){
			if(result == "success"){
				location.href="/";
			}else {
				alert("아이디 또는 비밀번호가 일치하지 않습니다");
			}
			
				
			},
			
			
		error:function(){
			alert("error: 관리자에게 문의하세요");
		}
	});
	 // ajax 종료
	 }

 	}); // submit 종료
 	
    $("#exit_btn").click(function () {
    	$(".madal_background").fadeOut();
	});
	
	$('#membership_btn').on('click', function() {
		$(location).attr('href', '/join/joinMain');
	});
 });
 