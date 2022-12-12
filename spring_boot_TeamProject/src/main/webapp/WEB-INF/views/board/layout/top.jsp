<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
		
		<!-- 로그인 화면 항목추가 -->
		<nav>
			<div class="nav-menu">
				<div class="company">
					<a href="<c:url value='/'/>"><img src="<c:url value='/image/logo_winter2.jpg'/>" alt="이미지를 불러오지 못했습니다." class="lozad"></a>
					<a href="<c:url value='/'/>" id="menu-btn">뚜벅뚜벅</a>
					<a href="../찐막 자료 여행기/Record.html" id="menu-btn" id="menu-btn">여행기</a>
					<a href="../write/_write.html" id="menu-btn">글쓰기</a>
					<a href="<c:url value='/publicE/viewlistAllpublicEvent/'/>">공공기관</a>
				</div>
				<a id="basic-btn">sign in</a>
			</div>
		</nav>
		
		