<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<head>
		<meta charset="UTF-8">
		<title>댓글 창</title>
		<link rel="stylesheet" type="text/css" href="<c:url value='/css/comments.css' />">
		<script src="<c:url value='/js/jquery-3.6.1.min.js'/>"></script>
		<script src="<c:url value='/js/comments.js'/>"></script>
	</head>
	<body>
		<div id="commentBoxTable">
			
			<div id="registrationBox">
			<table class="upperTable" >
				<tr>
					<td class="left_id"><input type="hidden" value="${sessionScope.sid }" id="userId">
						<input type="hidden" value="1" id="writeNo">
						${sessionScope.sid }</td>
					<td class="middle_comment" ><input type="text" id="comment"></td>
					<td class="right_btn"><input type="button" value="등록" id="registrationBtn"></td>
				</tr>
			</table>
			</div>
			
			<div id="commentsBox">
			
			</div>
			
		</div>

