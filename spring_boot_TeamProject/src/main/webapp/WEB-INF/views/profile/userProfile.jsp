<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>유저 프로필</title>
		<link rel ="stylesheet" type="text/css" href="<c:url value='/css/userProfile.css'/>">
		<script src="<c:url value='/js/jquery-3.6.1.min.js'/>"></script>			
		<script src="<c:url value='/js/userProfile.js'/>"></script>			
	</head>
	<body>
		<div id="wrap">
			<header>
				<!-- 현재 날짜 계산 및 변환 -->
				<c:set var="now" value="<%=new java.util.Date()%>" />
				<fmt:formatDate var="today_Date" value="${now}" pattern="yyyyMMdd" />
				<fmt:parseDate var="today_parse" value="${today_Date}" pattern="yyyyMMdd" />
				<fmt:parseNumber var="today" value="${today_parse.time / (1000*60*60*24)}" integerOnly="true" />
				<!-- 가입 날짜 호출 및 변환 -->
				<fmt:formatDate var="joinDate_Date" value='${userJoinDate }' pattern="yyyyMMdd"/>
				<fmt:parseDate var="joinDate_parse" value="${joinDate_Date}" pattern="yyyyMMdd" />
				<fmt:parseNumber var="joinDate" value="${joinDate_parse.time / (1000*60*60*24)}" integerOnly="true" />
			</header>
			<section>
				<div id="profile">
					<div id="profileImg"><img src="<c:url value='/image/프로필.png'/>"></div>
					<div id="name"><span>${userName} 님</span></div>
					<div id="joinDate"><span>함께 뚜벅뚜벅 걸어온지 ${today - joinDate +1}일째...</span></div>
				</div>				
				<div id="MenuBox">
            		<ul id="menuItem">
            			<li><a href="#" class="btn writing">내가 쓴 글</a></li>
            			<li><a href="#" class="btn comments">내가 쓴 댓글</a></li>
            			<li><a href="#" class="btn bookmark">즐겨찾기</a></li>   			
            		</ul>
            	</div>
            	<div id="contents">
            		<div class="menu write">
            			<table>
            				<tr>
            					<th class="category">카테고리</th>
            					<th>글 제목</th>
            					<th class="time">작성날짜</th>
            					<th class="management">관리</th>
            				</tr>
            				<c:forEach var="user" items="${userList }">
	            				<tr>
	            					<td class="category">${user.writeCategory }</td>
	            					<td>${user.writeTitle }</td>
	            					<td class="time"><fmt:formatDate value='${user.writeDate }' pattern="yyyy-MM-dd"/></td>
	            					<td><a href="<c:url value='/write/writeDelete/${user.writeNo}'/>"><button>삭제</button></a></td>
	            				</tr>
            				</c:forEach>
            			</table>
            		</div>
            		<div class="menu comment">
            			<table>
            				<tr>
            					<th class="category">카테고리</th>
            					<th>글 제목</th>
            					<th class="time">작성날짜</th>
            				</tr>
            				<tr>
            					<td>여행/잡담</td>
            					<td>와 정말 재밌으셨겠다~~</td>
            					<td>3시간 전</td>
            				</tr>
            			</table>
            		</div>
            		<div class="menu bookmark">
            			<table>
            				<tr>
            					<th class="category">카테고리</th>
            					<th>글 제목</th>
            					<th class="time">남긴날짜</th>
            				</tr>
            				<tr>
            					<td>여행/잡담</td>
            					<td>여행다녀온 후기 남겨드려요~</td>
            					<td>2시간 전</td>
            				</tr>
            			</table>
            		</div>
            	</div>
            		<!-- 페이징 -->
            		<div id="paging">		
						<c:if test="${paging.startPage != 1 }">
							<a href="/profile/paging?nowPage=${paging.startPage - 1 }">&lt;</a>
						</c:if>
						<c:forEach begin="${paging.startPage }" end="${paging.endPage }" var="p">
							<c:choose>
								<c:when test="${p == paging.nowPage }">
									<b>${p }</b>
								</c:when>
								<c:when test="${p != paging.nowPage }">
									<a href="/profile/paging?nowPage=${p }">${p }</a>
								</c:when>
							</c:choose>
						</c:forEach>
						<c:if test="${paging.endPage != paging.lastPage}">
							<a href="/profile/paging?nowPage=${paging.endPage+1 }">&gt;</a>
						</c:if>
					</div>
            		<!-- 페이징 끝 -->
			</section>
			<footer>
				<table>
					<tr>
						<td><a href="<c:url value='/'/>"><button>홈으로 이동</button></a></td>
						<td><a href="<c:url value='/profile/userUpdateForm/${sessionScope.sid }'/>"><button>프로필 수정</button></a></td>
					</tr>
				</table>
			</footer>
		</div>
	</body>
</html>