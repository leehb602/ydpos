<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>로그인 모달 창</title>
		<script src="<c:url value='/js/login.js'/>"></script>
	</head>
	<body>
		<div class="madal_background">
			<div class="login_window">
				<table>
					<tr>
						<td colspan="3"><input type="button" id="exit_btn"></td>
					</tr>
					<tr>
						<td colspan="3"><img src="<c:url value='/image/logo_winter2.jpg'/>" id="mountain"></td>
					</tr>
					<tr class="idpw">
						<td class="idpwtitle">아이디</td>
						<td class="idpwInput"><input type="text" class="InputIdPwd" id="userID"></td>
						<td rowspan="2" id="login_join_td">
							<input type="button" class="Login_btn" value="login">
							<input type="button" id="membership_btn"  value="회원가입">
						</td>
					</tr>
					<tr class="idpw">
						<td class="idpwtitle">비밀번호</td>
						<td class="idpwInput"><input type="password" class="InputIdPwd" id="userPwd"></td>
					</tr>
				</table>
				<hr>
				<table id="subTable">
					<tr>
						<td class="findTitle">아이디를 잊으셨나요?</td>
						<td><input type="button" id="find_id_btn" class="find_btn" value="아이디 찾기"></input></td>
					</tr>
					<tr>
						<td class="findTitle">비밀번호를 잊으셨나요?</td>
						<td><input type="button" id="find_pwd_btn" class="find_btn" value="비밀번호 찾기"></input></td>
					</tr>
				</table>
			</div>
		</div>
	</body>
</html>
