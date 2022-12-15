<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html> 
<head>
<meta charset="UTF-8">
<title>여행기</title>
<c:import url="/WEB-INF/views/board/layout/head.jsp" />
</head>
<body>
	<div id="wrap">
	<!--  top -->
	<c:import url="/WEB-INF/views/board/layout/top.jsp" />
	</div>

	<section>
		<div id="searchBox" style="width: 1200px">
			<!--서치 박스 시작 -->
			
				<div id="searchBar_parent">
				<span id="warking"> <img src="/image/walking.png" /></span> 
				<span id="searchLine"> <img src="/image/line.png" /></span> 
				<form id="searchForm" > <!-- action="/js/search.js" -->
				
				<input id="searchBar" type="search" name="keyword" placeholder="search..." />
					
				<a id="Magnifier" href=""><i class="fa-solid fa-magnifying-glass"></i></a>
				</form>	
			   <span id="santa_hat">
				<img src="/image/santa-hat.png" />
			   </span>
			</div>
		
		</div>
		<!--서치 박스 끝 -->

		<div id="filterBox">
			<!--필터 박스 시작 -->

			<div id="moreBox">
				"검색 필터 기능 ON/OFF"
				<button id="btn_more">More</button>
			</div>
		</div>
		<!--필터 박스 끝-->

		<div id="subFilterBox">
			<!--서브필터 박스 시작 -->
			<div id="filter1">
				
				<span>유저 : </span> 
				    <input type="checkbox" id="filter" name="filter" value="개인" onchange="makeFilter(this)"/>
				    <label for="filter">개인</label> 
				    <input type="checkbox" id="filter" name="filter" value="법인" onchange="makeFilter(this)" /> 
				    <label for="filter">법인</label>
			</div>
			
			<div class="subFilter" id="filter2">
				<span>지역 : </span> <label><input type="checkbox" id="filter"
					name="filter" value="서울" onchange="makeFilter(this)" />서울</label> <label><input
					type="checkbox" id="filter" name="filter" value="경기도"onchange="makeFilter(this)" /> 경기도</label>
				<label><input type="checkbox" id="filter" name="filter"
					value="강원도"onchange="makeFilter(this)" /> 강원도</label> <label><input type="checkbox"
					id="filter" name="filter" value="충청도" onchange="makeFilter(this)"/> 충청도</label> <label><input
					type="checkbox" id="filter" name="filter" value="경상도" onchange="makeFilter(this)"/> 경상도</label>
				<label><input type="checkbox" id="filter" name="filter"
					value="전라도" onchange="makeFilter(this)"/> 전라도</label> <label><input type="checkbox"
					id="filter" name="filter" value="제주" onchange="makeFilter(this)"/> 제주</label>
			</div>
			<div class="subFilter" id="filter3">
				<span>테마 : </span> <label><input type="checkbox" id="filter"
					name="filter" value="호수" onchange="makeFilter(this)"/> 산</label> <label><input
					type="checkbox" id="filter" name="filter" value="호수" onchange="makeFilter(this)"/> 바다</label> <label><input
					type="checkbox" id="filter" name="filter" value="호수" onchange="makeFilter(this)"/> 호수</label> <label><input
					type="checkbox" id="filter" name="filter" value="맛집" onchange="makeFilter(this)"/> 맛집</label> <label><input
					type="checkbox" id="filter" name="filter" value="쇼핑" onchange="makeFilter(this)"/> 쇼핑</label> <label><input
					type="checkbox" id="filter" name="filter" value="어린이" onchange="makeFilter(this)"/> 어린이</label>
				<label><input type="checkbox" id="filter" name="filter"
					value="당일" onchange="makeFilter(this)"/> 당일</label>
			</div>
		</div>
		<!--서브필터박스 끝 -->

		<!--레코드 메인 시작 -->
		<div id="record_main">
			<div class="event_container">
				<div class="event_cardBox" id="cardBox_event">
					
					
				</div>
			</div>
		</div>
		<!--레코드 메인 끝 -->

		<!--넥스트 박스 시작 -->
		<div id="next_box">
			<div id="prv">
				<i class="fa-solid fa-angles-left" id="firstPage_btn"></i> <i
					class="fa-solid fa-angle-left" id="prvPage_btn"></i>
			</div>
			<ul id="pageNo">
				<li id="No1">1</li>
				<li id="No2">2</li>
				<li id="No3">3</li>
				<li id="No4">4</li>
				<li id="No5">5</li>
				<li id="No6">6</li>
				<li id="No7">7</li>
				<li id="No8">8</li>
				<li id="No9">9</li>
				<li id="No10">10</li>
			</ul>
			<div id="next">
				<i class="fa-solid fa-angle-right" id="nextPage_btn"></i> <i
					class="fa-solid fa-angles-right" id="lastPage_btn"></i>
			</div>
		</div>
		<!-- 넥스트 박스 끝 -->
	</section>
	<!--  bottom -->
	<c:import url="/WEB-INF/views/board/layout/bottom.jsp" />

</body>
</html>