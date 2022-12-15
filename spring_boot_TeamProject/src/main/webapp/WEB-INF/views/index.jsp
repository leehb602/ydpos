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
              <img data-src="<c:url value='/image/${hits.ecardImgDetail }'/>" border="0" alt="이미지를 불러오지 못했습니다." class="lozad"><a href="/event_card/${hits.ecardNo}"></a>
            </div>
            <div class="box-item-detail">
              <span id="box-header">${hits.ecardTitle }</span><!-- 화려한 야경이 눈부신 부산 더베이 101 -->
              <p></p>
              ${hits.ecardText }
              <!-- 한국 대표 야경 명소로 손꼽히는 부산 해운대. 그런 해운대에서도 가장 화려한 야경을 볼 수 있는 곳이 바로 더베이 101이에요. 고층 빌딩의 조명 자체도 아름답지만, 해운대 앞바다에 반사된
              빛으로 더욱 눈부신 해운대의 야경은 사진으로 다 담아낼 수 없을 정도로 환상적이에요. 맞은편의 동백섬 누리마루 역시 아름다운 야경으로 유명하답니다. 해운대의 낭만적인 밤을 만끽하고 싶은
              사람이라면 꼭 방문해 보세요. -->
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
          <div class="box">
            <div class="box-item-photo">
              <img data-src="<c:url value='/image/안산방아머리해변.jpg'/>" border="0" alt="이미지를 불러오지 못했습니다." class="lozad"><a
                href="404.html"></a>
            </div>
            <div class="box-item-detail">
              <span id="box-header">서해의 선물, 가족 중심 해변. 안산 방아머리 해변</span>
              <p></p>
              <span id="box-information">
                천혜의 자연환경을 자랑하는 대부도는 수도권에서 한 시간이면 바다를 만날 수 있는 곳이다. 도심을 빠져나와 곧게 뻗은 시화방조제를 달리는 동안 펼쳐지는 바다 풍경에 일상의 스트레스 정도는
                쉽게 날릴 수 있을 만큼 시원하다. ‘역시 나오기 잘했다’는 생각을 들 때 즈음 어느새 길은 서해의 큰 섬 대부도로 연결된다.</span>
            </div>

          </div>
          <div class="box">
            <div class="box-item-photo">
              <img data-src="<c:url value='/image/시흥웨이브파크.jpg'/>" border="0" alt="이미지를 불러오지 못했습니다." class="lozad"><a
                href="404.html"></a>
            </div>
            <div class="box-item-detail">
              <span id="box-header">서핑, 일상이 되다! 시흥 웨이브 파크</span>
              <p></p>
              <span id="box-information">
                최근 서핑의 인기가 폭발적이다. 그러나 서핑을 위해 멀리 동해나 제주를 찾아야 한다는 것은 이제 고정관념일 뿐이다. 이제 마음만 먹으면 가까운 곳에서 365일 언제라도 서핑을 즐길 수
                있다. 최근 시흥시에 문을 연 웨이브 파크는 넓은 인공해변에서 세계 유명 서핑 플레이스의 파도를 경험할 수 있는 흥미로운 곳이다. 접근성은 물론 규모나 시설 면에서도 매우
                뛰어나다.</span>
            </div>
            <div class="box-item-bottom">
              <!--             <button class="box-item-button">
              >
            </button> -->
            </div>
          </div>
          <div class="box">
            <div class="box-item-photo">
              <img src="<c:url value='/image/국립수목원.jpg'/>" border="0" alt="이미지를 불러오지 못했습니다." class="lozad"><a href="404.html"></a>
            </div>
            <div class="box-item-detail">
              <span id="box-header">북유럽의 숲을 걷는 듯한 포천 국립수목원</span>
              <p></p>
              <span id="box-information">
                경기도 포천시 소흘읍 광릉수목원로에 펼쳐진 ‘국립수목원’은 경기도 최고의 눈꽃 여행지다. 전나무 숲으로 가는 길과 육림호 등 곳곳에서 아름다운 수목원만의 분위기 있는 설경을 만날 수
                있다. 새하얀 눈꽃을 보면 절로 마음마저 깨끗하게 정화된다. 푸른 전나무 위로 하얗게 눈이 내려앉은 풍경은 마치 사진으로 본 북유럽의 어느 숲을 걷는 듯한 착각에 빠질
                정도다.</span>
            </div>

          </div>
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
      <a href="/event_card/${rv.ecardNo}" class="box-item-photo">
        <img data-src="<c:url value='/image/${rv.ecardImgDetail}'/>" border="0" alt="이미지를 불러오지 못했습니다." class="lozad">
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
