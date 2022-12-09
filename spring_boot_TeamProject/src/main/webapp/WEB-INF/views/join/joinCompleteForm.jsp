<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>회원가입 완료</title>
		<link rel ="stylesheet" type="text/css" href="<c:url value='/css/joinComplete.css'/>">
		<script src="<c:url value='/js/jquery-3.6.1.min.js'/>"></script>
	</head>
	<body>
		<div class="backimg">
			<div id="wrap">
				<table>
					<tr>
						<td colspan="2">
						<h3>${sessionScope.sid} 님 회원가입을 환영합니다</h3>
						</td>
					</tr>
					<tr>
						<td colspan="2">
						<h2>함께 뚜벅뚜벅 걸어가기 시작합니다..</h2>
						</td>
					</tr>
					<tr>
						<td><a href="<c:url value='/'/>"><button>홈으로 이동</button></a></td>
						<td><a href="<c:url value='/join/loginForm'/>"><button>로그인</button></a></td>
					</tr>
				</table>
			</div>
		</div>
	</body>
</html>
