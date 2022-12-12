<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
		<h2>임시페이지</h2>
		
		<c:if test="${empty sessionScope.sid }">
			<a href="<c:url value='/user/loginForm'/>">로그인</a>
			<a href="<c:url value='/join/joinMain'/>">회원가입</a>
		</c:if>
		<c:if test="${not empty sessionScope.sid }">
		${sessionScope.suserName}님 환영합니다!
			<a href="<c:url value='/user/logout'/>">로그아웃</a>
			<a href="<c:url value='/profile/userProfile/${sessionScope.sid}'/>">유저 프로필</a>
		</c:if>
		
		
	</body>
</html>
