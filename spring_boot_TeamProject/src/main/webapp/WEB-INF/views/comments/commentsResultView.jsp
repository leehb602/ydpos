<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>댓글 결과 창</title>
		<script src="<c:url value='/js/jquery-3.6.1.min.js'/>"></script>
		<script src="<c:url value='/js/commentsDelete.js'/>"></script>
	</head>
	<body>
	<table border="1">
		<c:forEach var="ment" items="${mentList }">
			<tr>
				<td>${ment.userId }</td>
				<td>${ment.comment }</td>
				<td><a href="<c:url value='/comments/commentsDelete/userId=${ment.userId}&mentNo=${ment.mentNo}'/>"><button>삭제</button></a></td>
			</tr>
		</c:forEach>
	</table>
	</body>
</html>
