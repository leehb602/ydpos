<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>회원가입</title>
		<link rel ="stylesheet" type="text/css" href="<c:url value='/css/joinMain.css'/>">
		<script src="<c:url value='/js/jquery-3.6.1.min.js'/>"></script>		
	</head>
	<body>
	<div class="backimg">
		<div id="description"><h2>가입 유형을 선택해주세요</h2></div>
		<div class="wrap">
			<img src="<c:url value='/image/개인회원.png'/>" id="individual" onclick="location.href='<c:url value='/join/joinIndividualForm'/>'"/>
			<img src="<c:url value='/image/법인회원.png'/>" id="corporation" onclick="location.href='<c:url value='/join/joinCorporationForm'/>'"/>
			<img src="<c:url value='/image/공공기관.png'/>" id="public" onclick="location.href='<c:url value='/join/joinPublicForm'/>'"/>
		</div>
	</div>
	</body>
</html>
