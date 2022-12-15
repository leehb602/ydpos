/**
 * main-script
 */
 
 // Top으로 이동 가능한 기능
$(document).ready(function() {
  $(window).scroll(function() {
    if ($(this).scrollTop() > 300) {
      $('.top').fadeIn();
    } else {
      $('.top').fadeOut();
    }
  });
  
  $('.top').click(function() {
    $('html, body').animate({ scrollTop: 0 }, 400);
    return false;
  });
  
  // 회원가입 버튼 누르면 매핑
  $('#signupBtn').click(function(){
  	$(location).attr('href', '/join/joinMain');
  
  });
  
  // sign out 버튼 누르면
  	$('.signoutBtn').click(function(){
  		$(location).attr('href', '/user/logout');
  		 
  	});
  	
  //유저명, 유저아이콘 누르면 개인 프로필로 이동
		//jsp의 onlick이벤트, UserProfileController의 매핑 확인
 });