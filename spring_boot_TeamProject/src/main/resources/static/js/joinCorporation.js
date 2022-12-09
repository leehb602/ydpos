/**
 *  joinCorporation.js
 */

$(document).ready(function() {
	var $id = $('#id');
	var $idEmpty = $('#idEmpty');
	var $modal = $('#modal-overlay');
	var check = 0;
	
	$modal.hide();

	// ID중복확인 버튼을 눌렀을 때,
	$('#idcheck').on('click', function() {
		// DB연결 시 수정
		if ($id.val() == "abcd") {
			$idEmpty.removeClass('possibility');
			$idEmpty.text('이미 존재하는 아이디입니다');
			$idEmpty.addClass('error');
			$id.focus();
			return false;
		} else if ($id.val() == "") {
			$idEmpty.removeClass('possibility');
			$idEmpty.text('아이디를 입력해주세요');
			$idEmpty.addClass('error');
			$id.focus();
			return false;
		} else {
			check = 1;
			$idEmpty.text('사용가능한 아이디입니다');
			$idEmpty.addClass('possibility');
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
			$('#passcheckEmpty').text('비밀번호 확인을 입력해주세요');
			$('#passcheckEmpty').addClass('error');
			$('#passwordcheck').focus();
			return false;
		}

		if ($('#name').val() == "") {
			$('#nameEmpty').text('회사명을 입력해주세요');
			$('#nameEmpty').addClass('error');
			$('#name').focus();
			return false;
		}

		if ($('#number').val() == "") {
			$('#numberEmpty').text('사업자등록번호를 입력해주세요');
			$('#numberEmpty').addClass('error');
			$('#number').focus();
			return false;
		}
		
		// 조건이 모두 성립하면 모달창 출력
		$modal.fadeIn();
	});
	
	$("#YorN").click(function() {
		$modal.fadeOut();
	})
	
	$('#consent').on('click',function(){
		window.location.href = "#";
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
	var arreng = ["id","password","passcheck","name","number"];
	var arrko = ["아이디","비밀번호","비밀번호 확인","회사명","사업자등록번호"];
	$('.essential').each(function(index) {
		$(this).on('blur', function() {
			if ($(this).val() == "") {
				$('#'+ arreng[index] +'Empty').text(arrko[index] + '를 입력해주세요');
				$('#'+ arreng[index] +'Empty').addClass('error');
			} else {
				$('#'+ arreng[index] +'Empty').text('');
				$('#'+ arreng[index] +'Empty').removeClass('error');
			}
		});
	});
});