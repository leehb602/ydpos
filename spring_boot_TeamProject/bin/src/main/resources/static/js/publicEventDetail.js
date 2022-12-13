
$(document).ready(function(){    
	
    
    
	
	$("#btn2").on('click',function(){
		$('html, body').animate({ scrollTop: 0 }, 400);
	});	
	
	$("#btn4").on('click',function(){
			window.location.href = "/publicE/viewlistAllpublicEvent/";
		});
		
	
	$(".BoadPre").on('click',function(){
			window.location.href = "/event_card/${ecardNo-1}";////////
		});
		
    $(".BoadList").on('click',function(){
			window.location.href = "/publicE/viewlistAllpublicEvent/"; 
		});


	$(".BoadNext").on('click',function(){	
		window.location.href =  "/event_card/(${ecardNo}.val()+1)";////////
	});	
	
	$(".BoadTop").on('click',function(){
		$('html, body').animate({ scrollTop: 0 }, 400);
	});	
	
	//1.  조회수 db 받아오기 
	//2.  상세페이지 날짜  불러오기
	//3.  txt. db  받아오기  :강사님께 힌트 얻기 db??
	//4. 좋아요 버튼	///$("#btn1")
	//5.북마크  버튼//$("#btn5")  
	//6. 이전글//$(".BoadPre")
	//7. 다음글//$(".BoadNext")	
	//10. 글쓰기 링크 url 지예님 코드 복붙!//$("#btn3")  $(".BoadWirte")	
	//11. 게시판 목차에서 페이징 처리
	//12. 유저 이미지 불러오기
	//8. 글쓰기 수정 버튼 글쓰기 링크에서 해당 db값 불러오기 //$(".BoadModify")
    //9. 글쓰기 삭제 버튼//$(".BoardDelete")
	
});