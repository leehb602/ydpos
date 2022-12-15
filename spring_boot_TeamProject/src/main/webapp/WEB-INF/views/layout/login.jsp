<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>로그인 모달 창</title>
		<script src="<c:url value='js/login.js'/>"></script>
	</head>
	<body>
	
	
			<div class="madal_background">



		<div class="login_window">
			<div id="exit">
				<input type="button" id="exit_btn">
			</div>
			<div id="login_top_background">

				<img data-src="<c:url value='/image/logo_winter2.jpg'/>id="mountain">

			</div>
			<div>
				<div>
					<div id="loginBox">
						<div id="IdPwdBox">
							<div class="IdBox">
								<div id="id">아이디</div>
								<div id="InputId">
									<input type="text" class="InputIdPwd" id="userID">
								</div>
							</div>
							<div class="PwdBox">
								<div id="pwd">비밀번호</div>
								<div id="InputPwd">
									<input type="password" class="InputIdPwd" id="userPwd">
								</div>
							</div>
						</div>
						<div>
							<div>
								<input type="button" class="Login_btn" value="login">
							</div>
						</div>
					</div>

					<div id="membership_Box">
						<div>
							<div>
								<input type="button" id="membership_btn" value="회원가입">
							</div>
						</div>
					</div>
				</div>

				<div id="A">
					<div id="find_Box">


						<div id="B">
							<div class="find_text" id="id_find_text">아이디를 잊으셨나요?</div>

							<div>
								<input type="button" id="find_id_btn" class="find_btn"
									value="아이디 찾기"></input>
							</div>


							<div class="find_text">비밀번호를 잊으셨나요?</div>

							<div>
								<input type="button" id="find_pwd_btn" class="find_btn"
									value="비밀번호 찾기"></input>
							</div>

						</div>
					</div>


				</div>
			</div>







</div>

		</div>
		
		 <script type="text/javascript" src="https://cdn.jsdelivr.net/npm/lozad/dist/lozad.min.js"></script>
  <script>
    const observer = lozad();
    observer.observe();
  </script>
	</body>
</html>
