/**
 * login.js
 */
 

$(document).ready(function () {


    $(".madal_background").hide(); //숨기기

    $("#basic-btn").click(function () {
        $(".madal_background").fadeIn();
    })

    // 로그아웃 된 상태에서 글쓰기 버튼 클릭 시 로그인 모달창이 뜨도록
     $('.loginPrint').click(function(){
  		$(".login_container").fadeIn();
  });
  

    //   로그인 아이디/비밀번호 값이 맞으면 페이드아웃,메인페이지
	//중복된 작동으로 삭제하면... 안됨. 로그인 버튼 클릭 시 입력 값 없어도 매핑되는 문제 발생.

    $("#exit_btn").click(function () {
        $(".madal_background").fadeOut();
    })
	 
	
});
