<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>main 페이지</title>
		<script src="<c:url value='js/main.js'/>"></script>
		<c:import url="/WEB-INF/views/layout/head.jsp"/> 
		<style>
  			 .company a:nth-child(2) {
  			  color: #274c5e;
 		   }

   		 .company a:not(.company a:nth-child(2)) {
     		 color: #77919d;
   			}
  		</style>
	</head>
	<body>
		<div class="background1"></div>
  <div id="wrap">
    <a href="#" class="top"><img src="<c:url value='/image/top.jpg'/>"></a>
    <nav>
     <c:import url="/WEB-INF/views/layout/top.jsp"/>
    </nav>
    <div class="header">
      <div class="header-wrapper">
        <div class="title" id="col1">
          뚜벅뚜벅,<br>어디로 가볼까?
        </div>
        <div class="subtitle" id="col1">
          운 좋게도, 큰돈을 들이거나 여행 계획에 여가를 낭비하지 않고도 여행의 꿈을 실현할 방법이 있습니다. 그 방법의 하나는 뚜벅뚜벅을 읽는 것입니다! 어디로 여행을 갈지 내게 맞춤형으로
          추천해주고, 여행을 더 구석구석 다녀볼 수 있는 경험자의 노하우와 관광하기 좋은 공공기관의 최신 정보를 제공해드립니다.
        </div>
        <span class="icon">
          <a href="/404"><img src="<c:url value='/image/insta.jpg'/>"></a>
          <a href="/404"><img src="<c:url value='/image/face.jpg'/>"></a>
          <a href="/404"><img src="<c:url value='/image/youtube.jpg'/>"></a>
          <a href="/404"><img src="<c:url value='/image/kakao.jpg'/>"></a>
        </span>
      </div>
      <!--header wrapper 끝 -->
      <div class="header-img">
        <img data-src="<c:url value='/image/배낭크롭.jpg'/>" alt="이미지를 불러오지 못했습니다." class="lozad">
      </div>
    </div> <!-- header 끝 -->

    <div class="section-0">
      <div class="article-0">
        <!-- 여기랑 아래 article 메인이랑 띄우기 -->
        <div class="subtitle2-photo">
          <img data-src="<c:url value='/image/겨울1.jpg'/>" alt="이미지를 불러오지 못했습니다." class="lozad">

        </div>
        <div class="subtitle2-photo2">
          <img data-src="<c:url value='/image/메인-전남순천만정원.jpg'/>" alt="이미지를 불러오지 못했습니다." class="lozad">
        </div>
        <div class="subtitle2-photo3">
          <img data-src="<c:url value='/image/겨울2.jpg'/>" alt="이미지를 불러오지 못했습니다." class="lozad">
        </div>
        <div class="subtitle2" id="col1">
          우리는 천천히 그리고 흥미롭게<br />곳곳을 탐험하는 것을<br />즐기는 여행자입니다.
        </div>
        <div class="bluebox" id="col2"></div>

      </div>
    </div> <!-- section-0 끝 -->

    <div class="section">
      <div class="article">
        <!-- article 0 제외하고 article 페이지 나오는 곳-->
        <div class="box-title" id="col1">
          <span>지금 가장 인기의</span>
        </div>
        <div class="box-wrapper">
        <c:forEach var="hits" items="${hitsView}">
          <div class="box">
            <div class="box-item-photo">
              <img data-src="<c:url value='/image/${hits.fileName }'/>" border="0" alt="이미지를 불러오지 못했습니다." class="lozad"><a href="/event_cards/${hits.writeNo}"></a>
            </div>
            <div class="box-item-detail">
              <span id="box-header">${hits.writeTitle }</span><!-- 화려한 야경이 눈부신 부산 더베이 101 -->
              <p></p>
              ${hits.editordata }
            </div>
          </div>
          </c:forEach>
        </div>
      </div>


      <div class="article">
        <div class="box-title" id="col1">
          <span>다음은 여기로 가볼까?</span>
        </div>
        <div class="box-wrapper">
        <c:forEach var="rve" items="${recentViewEvent}">
          <div class="box">
            <div class="box-item-photo">
              <img data-src="<c:url value='/image/${rve.ecardImgDetail }'/>" border="0" alt="이미지를 불러오지 못했습니다." class="lozad">
              <a href="/event_card/${rve.ecardNo}"></a>
            </div>
            <div class="box-item-detail">
              <span id="box-header">${rve.ecardTitle }</span>
              <p></p>
              <span id="box-information">
               ${rve.ecardText }
               </span>
            </div>
          </div>
          </c:forEach>
        </div>
      </div>
    </div>
  </div> <!-- wrapper 끝 -->
  <div class="article">
    <!-- 중간 유저 유치 시작 -->
    <div class="write-wrapper">
      <div class="box-write">
        <!-- <div class="box-write-button">
          <button class="box-write-button">
            글쓰기
          </button></div> -->
        <span id="h1">
          자신의 빛나는 여정을 공유해보세요
        </span>
        <p></p>
        <div class="h-wrapper">
          <span id="h3">
            수많은 여행자들이 당신을 기다립니다
          </span>
          <p></p>
          <span id="h">언제나 업데이트 되는 최신글과 공공기관 정보, 나의 맞춤형 장소까지<br><br>
            <img src="<c:url value='/image/suko1.jpg'/>">
            </span>
          <!--           여기서부터 사진 위에 올릴 회원가입 버튼 -->
          <div class="container container-one" type="button" id="signupBtn">
            <button>
              뚜벅뚜벅 가입하기
              <div class="fill-one"></div>
            </button>
          </div>

          <!--           회원가입 버튼 끝 -->
        </div>
      </div>
      <div class="box-img">


      </div>
    </div>
  </div> <!-- 중간 삽입 끝 -->



  <div class="article">
    <div class="last-align" id="wrap">
      <div class="box-title" id="col1">
        <span>지금 가장 최신의</span>
      </div>
      <div class="last-align-button"><a href="/board/showCardListAllView" id="btn2">more</a></div>
    </div>
    <div class="box-wrapper-last">
    <c:forEach var="rv" items="${recentView}">
      <a href="/event_cards/${rv.writeNo}" class="box-item-photo">
        <img data-src="<c:url value='/image/${rv.fileName}'/>" border="0" alt="이미지를 불러오지 못했습니다." class="lozad">
      </a>
      </c:forEach>
    </div>

  </div>
  <!-- section 끝 -->
<!--   </div> -->

  <div class="footer">
		<c:import url="/WEB-INF/views/layout/bottom.jsp"/>
  </div>

  <script type="text/javascript" src="https://cdn.jsdelivr.net/npm/lozad/dist/lozad.min.js"></script>
  <script>
    const observer = lozad();
    observer.observe();
  </script>
	
<!-- 여기부터 모달 창 -->
 <c:import url="/WEB-INF/views/layout/login.jsp"/>
 
	</body>
</html>
