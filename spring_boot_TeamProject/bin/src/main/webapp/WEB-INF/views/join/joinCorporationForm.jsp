<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>법인 회원가입</title>
		<c:import url="/WEB-INF/views/join/layout/head.jsp"/>
		<script src="<c:url value='/js/joinCorporation.js' />"></script>
	</head>
	<body>
	<div class="backimg">
		<div id = "wrap">
		<form id="joinCorporation" name="joinCorporation" method="post"  action="<c:url value='/join/joinCorporation'/>">
			<table>
				<thead>
					<tr>
						<th colspan="2">회원가입</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td class="input">아이디</td>
					</tr>
					<tr>
						<td colspan="2">
							<div>
								<label><input type="text" class="essential" id="id" name="userId" maxlength="10" size="20"></label> &nbsp;
								   	   <button id="idcheck">중복체크</button>
							</div>
							<div>
								<span id="idEmpty"></span>
							</div>
						</td>
					</tr>
					<tr>
						<td class="input">비밀번호</td>			
					</tr>
					<tr>
						<td colspan="2">
							<div>
								<label><input type="password" class="essential" id="password" name="userPw" maxlength="20" size="20"></label>
							</div>
							<div>
								<span id="passwordEmpty"></span>
							</div>
						</td>
					</tr>
					<tr>
						<td class="input">비밀번호 확인</td>
					</tr>
					<tr>
						<td colspan="2">
							<div>
								<label><input type="password" class="essential" id="passwordcheck" maxlength="20" size="20"></label>
							</div>
							<div>
								<span id="passcheckEmpty"></span>
							</div>
						</td>
					</tr>
					<tr>
						<td class="input">회사명</td>
					</tr>
					<tr>
						<td colspan="2">
							<div>
								<label><input type="text" class="essential" id="name" name="userName" size="20"></label>
							</div>
							<div>
								<span id="nameEmpty"></span>
							</div>
						</td>
					</tr>	
					<tr>
						<td class="input">사업자등록번호</td>
					</tr>
					<tr>
						<td colspan="2">
							<div>
								<label><input type="text" class="essential" id="number" name="userHP" size="20"></label>
							</div>
							<div>
								<span id="numberEmpty"></span>
							</div>
						</td>
					</tr>
				</tbody>
				<tfoot>
					<tr>
						<td colspan="2"><button id="joinBtn">가입하기</button></td>
					</tr>
				</tfoot>
			</table>
		<!-- 모달창 띄우는 부분 -->
		<c:import url="/WEB-INF/views/join/layout/modal.jsp"/>
		<!-- 종료 -->
		</form>
		</div>
		</div>
	</body>
</html>