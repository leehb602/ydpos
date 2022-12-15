<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>댓글 창</title>
		<script src="<c:url value='/js/jquery-3.6.1.min.js'/>"></script>
		<script src="<c:url value='/js/comments.js'/>"></script>
	</head>
	<body>
		<div id="wrap">
			<table border="1">
				<tr>
					<td><input type="hidden" value="${sessionScope.sid }" id="userId">
						<input type="hidden" value="1" id="writeNo">
						${sessionScope.sid }</td>
					<td><input type="text" id="comment"></td>
					<td><input type="button" value="등록" id="registrationBtn"></td>
				</tr>
			</table>
			<div id="commentsBox">
			
			</div>
		</div>
	</body>
</html>
