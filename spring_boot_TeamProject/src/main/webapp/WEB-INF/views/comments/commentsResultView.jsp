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
	<table class="underTable" id="underTable">
		<c:forEach var="ment" items="${mentList }">
			<tr>
				<td  class="left_id">
					<input type="hidden" value="${ment.userId }" class="mentId">
					${ment.userId }
				</td>
				<td class="middle_comment" id=undercomment><span>${ment.comment }</span></td>
				<td class="right_btn">
					<input type="hidden" value="${ment.mentNo }" class="mentNo">
					<input type="hidden" value="${sessionScope.sid }" class="sessionId">				
					<input type="button" value="삭제" class="deleteBtn" id="deleteBtn">
				</td>
			</tr>
		</c:forEach>
	</table>

	</body>
</html>
