<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>공공기관 카드형 게시판</title>
		<c:import url="/WEB-INF/views/publicEvent/layout/head.jsp" />
		<link rel="stylesheet" type="text/css" href="<c:url value='/css/publicEvent.css' />">
		<script src="<c:url value='/js/publicEvent.js' />"></script>
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
	
	</head>
	<body> 
		<!-- warp -->
		<div id="wrap">	
		<!--  top -->         
        <c:import url="/WEB-INF/views/publicEvent/layout/top.jsp" /> 
        </div>
			<div class="eTitleBox">
				<h5 class="sub_eTitle">SUGGESTED INFO</h5>
				<h1 class="page_eTitle">뚜벅뚜벅 공공뉴스</h1>
				<h6 class="under_eTitle">The gladdest moment in human life, methinks, is a departure into unknown lands. -Sir Richard Burton-</h6>
			</div>
			<!-- Area Search button -->
			<div class="eventBoxMap" id="map">						
				<input type="button" class="mapBtn" id="map1" value="전국">
				<input type="button" class="mapBtn" id="map2" value="서울">
				<input type="button" class="mapBtn" id="map3" value="강원도">
				<input type="button" class="mapBtn" id="map4" value="대구">
				<input type="button" class="mapBtn" id="map5" value="부산">
				<input type="button" class="mapBtn" id="map6" value="제주도">
				<input type="button" class="mapBtn" id="map7" value="기타">						
			</div>
			
			<!--// Area  Search button & 글쓰기버튼 -->
			<!-- event -->
			<div class="event_container">
				<div class="event_cardBox">

						<c:forEach var="pe" items="${PubliceventList}">
						 	
						
								<div class="event_card" value="${pe.ecardArea}">
									<input type="hidden" class="ecardNoValue" value="${pe.ecardNo}">
										<div class="card_image" value="${pe.ecardNo}"  >
											<img src="<c:url value='/image/${pe.ecardImgMain}'/>" />
										</div>
										<div class="card_content"  >  
											<p class="card_area">${pe.ecardArea}</p>
											<h3 class="card_title">${pe.ecardTitle}</h3>
											<p class="card_text">${pe.ecardSubTitle}</p>							
										</div>										
								</div>
						 
						</c:forEach>
						
				</div>
			</div>		
		<!-- //wrap -->
	 <!--  bottom -->         
	<c:import url="/WEB-INF/views/publicEvent/layout/bottom.jsp" /> 
	</body>
</html>








