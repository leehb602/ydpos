/**
 *  joinPublic.js
 */

$(document).ready(function() {
	var $id = $('#id');
	var $idEmpty = $('#idEmpty');
	var $modal = $('#modal-overlay');
	var check = 0;

	$modal.hide();

	// ID중복확인 버튼을 눌렀을 때,
	$('#idcheck').on('click', function() {
		event.preventDefault();
		if ($id.val() == "") {
			$idEmpty.removeClass('possibility');
			$idEmpty.text('아이디를 입력해주세요');
			$idEmpty.addClass('error');
			$id.focus();
		} else {
			$.ajax({
			type:"post",
			url:"idCheck",
			data:{"userId":$('#id').val()},
			dataType:"text",
			success:function(result){
				if(result == "success"){
					$idEmpty.text('사용가능한 아이디입니다');
					$idEmpty.addClass('possibility');
				}else {
					$idEmpty.removeClass('possibility');
					$idEmpty.text('이미 존재하는 아이디입니다');
					$idEmpty.addClass('error');
					$id.focus();
				}
			},
			error:function(){
				alert("실패");
			}
		});
		}
	})

	// 가입하기 버튼을 눌렀을 때,
	$('#joinBtn').on('click', function() {
		if ($id.val() == "") {
			$idEmpty.text('아이디를 입력해주세요');
			$idEmpty.addClass('error');
			$id.focus();
			return false;
		}

		if ($('#password').val() == "") {
			$('#passwordEmpty').text('비밀번호를 입력해주세요');
			$('#passwordEmpty').addClass('error');
			$('#password').focus();
			return false;
		}

		if ($('#passwordcheck').val() == "") {
			$('#nameEmpty').text('비밀번호 확인을 입력해주세요');
			$('#nameEmpty').addClass('error');
			$('#passwordcheck').focus();
			return false;
		}
		
		if ($('#name').val() == "") {
			$('#nameEmpty').text('기관명을 입력해주세요');
			$('#nameEmpty').addClass('error');
			$('#name').focus();
			return false;
		}

		if ($('#hp1').val().length < 3 || $('#hp2').val().length < 4 || $('#hp3').val().length < 4) {
			$('#phoneNumEmpty').text('대표번호를 입력해주세요');
			$('#phoneNumEmpty').addClass('error');
			return false;
		} else {
			$('#phoneNumEmpty').text('');
			$('#phoneNumEmpty').removeClass('error');
		}

		// 조건이 모두 성립하면 모달창 출력
		$modal.fadeIn();
	});

	$("#YorN").click(function() {
		$modal.fadeOut();
	});
	
	$('#consent').on('click',function(){
		location.href = "#";
	});

	$('#hp1').on('keyup', function() {
		if ($(this).val().length == 3) {
			$(this).next().focus();
		}
	});


	$('#hp2').on('keyup', function() {
		if ($(this).val().length == 4) {
			$('#hp3').focus();
		}
	});

	// 포커스가 해제되었을 때,
	var arreng = ["id", "password", "passcheck", "name"];
	var arrko = ["아이디", "비밀번호", "비밀번호 확인", "기관명",];
	$('.essential').each(function(index) {
		$(this).on('blur', function() {
			if ($(this).val() == "") {
				$('#' + arreng[index] + 'Empty').text(arrko[index] + '를 입력해주세요');
				$('#' + arreng[index] + 'Empty').addClass('error');
			} else {
				$('#' + arreng[index] + 'Empty').text('');
				$('#' + arreng[index] + 'Empty').removeClass('error');
			}
		});
	});
});