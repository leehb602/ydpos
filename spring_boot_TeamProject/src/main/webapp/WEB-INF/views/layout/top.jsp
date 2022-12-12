<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

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
	          <a href="<c:url value='/'/>"><img data-src="<c:url value='image/logo_winter2.jpg'/>" alt="이미지를 불러오지 못했습니다." class="lozad"></a>
	          <a href="<c:url value='/'/>" id="menu-btn">뚜벅뚜벅</a>
	          <a href="<c:url value='/'/>" id="menu-btn">여행기</a>
	          <a href="<c:url value='/'/>" id="menu-btn">공공기관</a>
	          <a id="menu-btn" class="loginPrint">글쓰기</a>
          </div>
   			<a id="basic-btn" class="signinBtn">sign in</a>
 		  </c:if>
 		 
 		<c:if test="${not empty sessionScope.sid}">
 		 <div class="company">
	          <a href="<c:url value='/'/>"><img data-src="<c:url value='image/logo_winter2.jpg'/>" alt="이미지를 불러오지 못했습니다." class="lozad"></a>
	          <a href="<c:url value='/'/>" id="menu-btn">뚜벅뚜벅</a>
	          <a href="<c:url value='/'/>" id="menu-btn">여행기</a>
	          <a href="<c:url value='/'/>" id="menu-btn">공공기관</a>
	          <a href="<c:url value='/'/>" id="menu-btn">글쓰기</a>
          </div>
          	<img src="<c:url value='/image/user (3).png'/>"onclick="location.href='/profile/userProfile/${sessionScope.sid }'" width="30"height="30" id="userIcon">
   			<a href="<c:url value='/profile/userProfile/${sessionScope.sid }'/>" id="menu-btn" class="userName">${sessionScope.suserName }님</a>
   			<a id="basic-btn" class="signoutBtn">sign out</a>
        </c:if>
      </div>