<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>공공기관 상세페이지</title>		
		<c:import url="/WEB-INF/views/publicEvent/layout/head.jsp" />		
	<head>
	<body>  
		<!--  top -->         
      	<c:import url="/WEB-INF/views/publicEvent/layout/top.jsp" /> 
		<!-- warp -->
		<div class="wrap">
			<div class="board_Box">
				<div class="boardpageDetail" value="${cdList.ecardArea}"><hr>
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
								<div class = profile-img value="">								
								<img src="<c:url value='/image/publicE_image/프로필.png'/>">
								</div>
							<div class="Infobox">
								<div class="boardWirteName"><h5>${cdList.userNamePublic}</h5>
								</div>
								<div class="boardWirteDate"><h5> Dec 10, 2022 {Date}</h5>
								</div>
							</div>	
						</div>
						<div class="ViewCount">
							{viewCount}
						</div>
					</div>			
					<div class="board_content">  
					
					${cdList.ecardText}<br/><br/>	
					
					 
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
						
			<!-- board button Box -->
			</div><hr>
			<div class="pageDetailBtn">
				<button class="BoadTop">▲TOP</button>
				<button class="BoadWirte">글쓰기</button>
				<button class="BoadPre">이전</button>
				<button class="BoadList">목록</button>
				<button class="BoadNext">다음</button>
				<!-- <button class="BoadModify">수정</button>
				<a href="<c:url value='/publeE/boardUpdateForm/${cdList.ecardNo }'/>">수정 </a>
				<a href="javascript:deleteCheck();">삭제</a>	 -->						
			</div>
			<div class="action" onclick="actionToggle();">
				<span id="btnPl"><img src="/image/free-icon-add-circularss.png"></span>
				<ul>
					<li id="btn1" type="button"><img src="<c:url value='/image/publicE_image/free-icon-like-6363793.png'/>">좋아요</li>
					<li id="btn2" type="button"><img src="<c:url value='/image/publicE_image/free-icon-font-angle-up-3916915.png'/>">위로</li>
					<li id="btn3" type="button"><img src="<c:url value='/image/publicE_image/free-icon-write-3472441.png'/>">글쓰기</li>
					<li id="btn4" type="button"><img src="<c:url value='/image/publicE_image/free-icon-left-return-arrow-60793.png'/>">게시판</li>
					<li id="btn5" type="button"><img src="<c:url value='/image/publicE_image/free-icon-bookmark-4460398.png'/>">북마크</li>
				</ul>
			</div>
			<!--// button -->				
		</div>
		<!-- //wrap -->
		<!--  bottom -->         
    	<c:import url="/WEB-INF/views/publicEvent/layout/bottom.jsp" />  
	</body>
</html>
