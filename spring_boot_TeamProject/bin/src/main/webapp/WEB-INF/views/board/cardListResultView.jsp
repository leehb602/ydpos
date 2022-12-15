<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
 <meta charset="UTF-8">
 <title>카드 리스트</title>
 <link rel="stylesheet" type="text/css" href="<c:url value='/css/Record.css' />">
 	
</head>
 <body>
   		<c:forEach var="record" items="${showCardList}">

						<div class="event_card" id="cardBox" name="cardBox"
							value="${record.writeCategory}">
							<input type="hidden" class="writeNoValue"
								value="${record.writeNo}">
							<div class="card_image" value="${record.writeNo}">
								<div>
									<img src="/image/star.png" class="record_bookMark"
										name="record_bookMark" />
									<!-- <i class="fa-regular fa-bookmark fa-2x" id="record_bookMark"></i> -->
								</div>
								<img src="<c:url value='/images/${record.writeImg}'/>" />
							</div>
							<div class="card_content">
								<p class="card_area">${record.writeCategory}</p>
								<h3 class="card_title">${record.writeTitle}</h3>
								<p class="card_text">${record.editordata}</p>
							</div>
							<div id="card_subLine">
								<div>
									<img id="userImg_record" name="userImg_record"
										src="<c:url value='/images/${record.userImg}'/>" /> <span
										id="record_userName" name="record_userName">${record.userId}</span>
								</div>
								<div>
									<p id="record_time" name="record_time">${record.writedate }</p>
								</div>
							</div>
						</div>
					</c:forEach>
 </body>
</html>