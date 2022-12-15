<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>공공기관 상세페이지</title>		
		<c:import url="/WEB-INF/views/publicE/layout/head_Detail.jsp" />
		<style>
			.company a:nth-child(4) {
			color: #274c5e;
			text-decoration: none;
			}
			.company a:not(.company a:nth-child(4)) {
			color: #77919d;
			text-decoration: none;
			}
		</style>			        			
	<head>
	<body>  
		<!-- warp -->
		<div id="wrap">	
		<!--  top -->         
        <nav>
        <c:import url="/WEB-INF/views/publicE/layout/top_Detail.jsp" /> 
        </nav>			
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
						<h5> ${cdList.ecardView}</h5>
						</div>
					</div>		
		 			<div class="board_content">  
					
						
					
					 
						<br><br>
					<div class="board_Detailimage"><img src="<c:url value='/image/${cdList.ecardImgDetail}'/>"></div>
						<br><br><br><br>
					<div class="board_Detailtext"><br/>${cdList.ecardText}</div><br/>
					
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
			
				
			
			<div class="action" onclick="actionToggle();">
				<span id="btnPl"><img src="/image/free-icon-add-circularss.png"></span>
				<ul>
					<li id="btn1" type="button"><img src="<c:url value='/image/free-icon-like-6363793.png'/>">좋아요</li>
					<li id="btn2" type="button"><img src="<c:url value='/image/free-icon-font-angle-up-3916915.png'/>">위로</li>
					<li id="btn3" type="button"><img src="<c:url value='/image/free-icon-write-3472441.png'/>">글쓰기</li>
					<li id="btn4" type="button"><img src="<c:url value='/image/free-icon-left-return-arrow-60793.png'/>">게시판</li>
					<li id="btn5" type="button"><img src="<c:url value='/image/free-icon-bookmark-4460398.png'/>">북마크</li>
				</ul>
			</div>			<!--// button -->
					
		</div>
		<!-- //wrap --> 
	
	 <!--  bottom --> 
	 <br><br><hr>      
	<c:import url="/WEB-INF/views/publicE/layout/bottom.jsp" /> 
	
	</body>
</html>



