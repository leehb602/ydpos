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
		<div class="login_container">
        <img src="<c:url value='/image/ask.png'/>" id="ask" />


        <div class="login">
            <h2 id="logintitle">
                <p id="loginlogo"><img src="<c:url value='/image/santa-hat.png'/>" id="hat">
                    <img src="<c:url value='/image/snow-mountain.png'/>" id="mountain">
                    <img src="<c:url value='/image/claus1.png'/>" id="claus1">
                </p>
            </h2>
            <div>
                <div>

                    <table id="logintable">
                        <tr>
                            <th colspan="2" class="idpwdfont">아이디 </th>
                            <td><input type="text" class="idpwd" id="userID"> </td>
                            <td rowspan="2"><input type="button" class="btn-c" id="loginBtn" value="login" /></td>

                        </tr>
                        <tr>
                            <th colspan="2" class="idpwdfont">비밀번호</th>
                            <td><input type="password" class="idpwd" id="userPwd"> </td>

                        </tr>

                    </table>
                </div>
                <table id="logintable3">
                    <tr id="btn-b">
                        <td><button class="btn-b">회원가입</button></td>
                    </tr>
                </table>


                <table id="logintable2">


                    <tr>
                        <th class="asktext" >아이디를 잊으셨나요?</th>

                        <td><button class="btn-d">아이디찾기</button></td>
                    </tr>
                    <tr>
                        <th class="asktext">비밀번호를 잊으셨나요?</th>

                        <td><button class="btn-d">비밀번호찾기</button></td>
                    </tr>

                </table>

                </p>
            </div>
        </div>
    </div>
	</body>
</html>
