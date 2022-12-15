<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>공공기관 상세페이지</title>
		                      <!--            //css    시작           -->
        <link rel="stylesheet" type="text/css" href="<c:url value='css/modal_login.css'/>">                       
		<link rel="stylesheet" type="text/css" href="<c:url value='/css/publicEventDetail.css' />">
		<style>
			.company a:nth-child(4) {
			color: #274c5e;
			text-decoration: none;
			}
			.company a:not(.company a:nth-child(4)) {
			color: #77919d;
			text-decoration: none;
			}
			.nav-menu {
			max-width: calc(100%-80px);
			}
		</style>			
		                              <!--            //css    끝           -->	
		<script src="<c:url value='/js/jquery-3.6.1.min.js' />"></script>
		<script src="<c:url value='/js/publicEventDetail.js' />"></script>
		<script src="<c:url value='js/modal_login.js'/>"></script>					
		<script type="text/javascript">
			function actionToggle(){
				var action=document.querySelector('.action');
				action.classList.toggle('active')
			}
			
			/* function deleteCheck(){
				var answer = confirm("글 삭제하시겠습니까?");
				if(answer){
					location.href="/BoardDelete/${cdList.ecardNo}"
				}
			} */
		</script>
          			
	<head>

	<body>  
	
		<!--  top -->         
      	<style>
	.userName{
	 color: #77919d;
	/*  margin-left:-5px; */
	}
	
	#basic-btn{
	margin-bottom:6px;
	}
	
	#userIcon{
	margin-bottom:6px;
	cursor:pointer;
	padding-left: 10px;
	}
	
	
	</style>
	 <div class="nav-menu">
    	  <c:if test="${empty sessionScope.sid}">
    	  <div class="company">
	          <a href="<c:url value='/'/>"><img src="<c:url value='/image/logo_winter2.jpg'/>" alt="이미지를 불러오지 못했습니다." class="lozad"></a>
	          <a href="<c:url value='/'/>" id="menu-btn">뚜벅뚜벅</a>
	          <a href="<c:url value='/board/showCardListAllView'/>" id="menu-btn">여행기</a>
	          <a href="<c:url value='/publicE/viewlistAllpublicEvent'/>" id="menu-btn">공공기관</a>
	          <a id="menu-btn" class="loginPrint">글쓰기</a>
          </div>
   			<a id="basic-btn" class="signinBtn">sign in</a>
 		  </c:if>
 		 
 		<c:if test="${not empty sessionScope.sid}">
 		 	<div class="company">
	          <a href="<c:url value='/'/>"><img src="<c:url value='/image/logo_winter2.jpg'/>" alt="이미지를 불러오지 못했습니다." class="lozad"></a>
	          <a href="<c:url value='/'/>" id="menu-btn">뚜벅뚜벅</a>
	          <a href="<c:url value='/board/showCardListAllView'/>" id="menu-btn">여행기</a>
	          <a href="<c:url value='/publicE/viewlistAllpublicEvent'/>" id="menu-btn">공공기관</a>
	          <a href="<c:url value='/'/>" id="menu-btn">글쓰기</a>
          	</div>
          	<img src="<c:url value='/image/user (3).png'/>"onclick="location.href='/profile/userProfile/${sessionScope.sid }'" width="30"height="30" id="userIcon">
   			<a href="<c:url value='/profile/userProfile/${sessionScope.sid }'/>" id="menu-btn" class="userName">${sessionScope.suserName }님</a>
   			<a id="basic-btn" class="signoutBtn">sign out</a>
        </c:if>
      </div> 
		<!-- warp -->
	
		<div class="wrap">
			<div class="board_Box">
				<div class="boardpageDetail" value="${cdList.ecardArea}">
					<div class="board_titleBox">				
						<h3 class="board_title">${cdList.ecardTitle}</h3><br/>
						<p class="board_subtitle">${cdList.ecardSubTitle}</p>
					</div>
					<div class="board_Mainimage">
						<img src="<c:url value='/image/${cdList.ecardImgMain}'/>" />
					</div>		
				</div>							
				<div class="boardtext">
						<div class ="profile-Box">
							<div class="profile">
								<div class = profile-img >								
								<img src="<c:url value='/image/${cdList.userImg}'/>">
								</div>
							<div class="Infobox">
							<div class="boardWirteName"><h5>${cdList.userId}</h5> 
								</div>
								
								 <div class="boardWirteDate"><h5><fmt:formatDate value='${cdList.ecardDate }' pattern="yyyy-MM-dd  hh:mm"/></h5>
								
								</div> 
							</div>	
						</div>
						<div class="ViewCount">
						<h5>조회수 ${cdList.ecardview}</h5>
						</div>
					</div>		
						
		 			<div class="board_content">  
					
						<br/>${cdList.ecardText}<br/>
					
					 
						1. 소야도 – 인천
					서해 여행이나 인천의 섬으로 떠나고 싶다면 소야도를 추천한다. 1박 2일 여행지, 인천 섬 여행지로 유명한 덕적도와 가까운 작은 섬으로 두 섬 사이에 다리가 개통되어 여행객이 늘어나고 있지만, 
					아직 많은 사람이 모이지 않아 조용한 섬 여행을 누리기에 안성맞춤이다. 낚시나 해루질, 갯벌체험 등이 가능해 서해 가족 여행지로 추천하는 곳. 선착장부터 국사봉, 갓섬, 물푸레섬 등까지 트레킹 즐기기에도 좋다.
					 백패킹을 원한다면 떼뿌리해변에 텐트를 치고 하룻밤을 보내보자.

					소야도 가는 법 : 보통 인천항에서 덕적도까지 배를 타고 들어가 버스로 이동한다. 대부도에서 출발하는 배편도 있다.
					텐트 앞에 누워 책을 읽는 사람<br><br>
					<div class="board_Detailimage"><img src="https://content.skyscnr.com/m/63b2f7eac1488f30/original/eyeem-100085002-175593149.jpg?resize=1800px:1800px&quality=100" alt=""/></div>
					
					
					
					<!--  요긴 공공기관 상세페이지~~클릭 링크이동-->
					<div class="eventLinkMove"><h3>▼${cdList.ecardTitle} 참가자 모집합니다!</h3>
					<a href="${cdList.ecardLink}" class="card_category" target="_blank">
					<button class="linkBtn">참가자 모집신청 바로가기</button>
					</a>
					</div>	 
					<!-- // -->	
					</div>				
				</div>		
			</div>
			<!-- board button Box -->
			<!--
			<div class="pageDetailBtn">
				<button class="BoadTop">▲TOP</button>
				<button class="BoadWirte">글쓰기</button>
				<button class="BoadPre">이전</button>
				<button class="BoadList">목록</button>
				<button class="BoadNext">다음</button>
				 <button class="BoadModify">수정</button>
				<a href="<c:url value='/publeE/boardUpdateForm/${cdList.ecardNo }'/>">수정 </a>
				<a href="javascript:deleteCheck();">삭제</a>						
			</div>
			 -->	
			
			<div class="action" onclick="actionToggle();">
				<span id="btnPl"><img src="/image/free-icon-add-circularss.png"></span>
				<ul>
					<li id="btn1" type="button"><img src="<c:url value='/image/publicE_image/free-icon-like-6363793.png'/>">좋아요</li>
					<li id="btn2" type="button"><img src="<c:url value='/image/publicE_image/free-icon-font-angle-up-3916915.png'/>">위로</li>
					<li id="btn3" type="button"><img src="<c:url value='/image/publicE_image/free-icon-write-3472441.png'/>">글쓰기</li>
					<li id="btn4" type="button"><img src="<c:url value='/image/publicE_image/free-icon-left-return-arrow-60793.png'/>">게시판</li>
					<li id="btn5" type="button"><img src="<c:url value='/image/publicE_image/free-icon-bookmark-4460398.png'/>">북마크</li>
				</ul>
			</div>			<!--// button -->
						
		</div>
		<!-- //wrap -->
		<!--  bottom -->         
    	<div class="footer-box-wrapper" id="wrap">
      <div class="footer-box">
        <a href="/"><img src="<c:url value='/image/logo_winter_end.gif'/>" alt="이미지를 불러오지 못했습니다." class="lozad"></a>
      </div>
      <div class="footer-box">
        <span class="style2">
          &nbsp;
          우리의 목표는 문을 박차고 나가면 세상에는 더 많은 것들이 살아 숨 쉬고 있음을 알 수 있도록 돕는 것입니다. 여행은 새로운 아이디어, 문화, 관점,
          음식에 대한
          마음을 열어줍니다. 이것은 다른 어떤 것과도 비교할 수 없는 경험입니다! 또한 여정이 최대한 수월할 수 있도록 경험자의 노하우를 원하신다면 저희도 도와드릴 수 있습니다! 당신은 무엇을 기다리고
          있나요? 오늘부터 발걸음을 떼십시오!
        </span>
      </div>
      <div class="footer-box" id="col1">
        <span class="style">유용한 문서</span>
        <p />
         <span class="style2">
          <a href="<c:url value='/'/>">뚜벅뚜벅</a><br>
          <a href="<c:url value='/board/showCardListAllView'/>">여행기</a><br>
	      <a href="<c:url value='/publicE/viewlistAllpublicEvent'/>">공공기관</a><br>
          <a href="<c:url value='/join/joinMain'/>">회원가입</a><br>
          <a href="/404">사이트맵</a>
        </span>
      </div>
      <div class="footer-box" id="col1">
        <span class="style">법률 문서</span>
        <p />
        <span class="style2">
          <a href="/404">이용 약관</a><br>
          <a href="/404">개인 정보 정책</a>
        </span>
      </div>
    </div>
    <div class="style2" id="wrap">© 2022 뚜벅뚜벅. All rights reserved.<a type="button" class="summer" href="#">
    <img src="<c:url value='/image/season-winter.jpg'/>" class="lozad"></a></div>
    <br />
    <p></p>
    <p></p>
	</body>
</html>
