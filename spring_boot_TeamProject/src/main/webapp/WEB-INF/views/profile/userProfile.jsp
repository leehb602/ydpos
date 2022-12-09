<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>유저 프로필</title>
		<link rel ="stylesheet" type="text/css" href="css/userProfile.css">
		<script src="js/jquery-3.6.1.min.js"></script>			
		<script src="js/userProfile.js"></script>			
	</head>
	<body>
		<div id="wrap">
			<header>
			
			</header>
			<section>
				<div id="profile">
					<div id="profileImg"><img src="image/프로필.png"></div>
					<div id="name"><span>이름 : OOO</span></div>
					<div id="joinDate"><span>가입일 : 2022-11-17</span></div>
				</div>				
				<div id="MenuBox">
            		<ul id="menuItem">
            			<li><a href="#" class="btn writing">내가 쓴 글</a></li>
            			<li><a href="#" class="btn comments">내가 쓴 댓글</a></li>
            			<li><a href="#" class="btn setting">좋아요</a></li>   			
            		</ul>
            	</div>
            	<div id="contents">
            		<div class="menu write">
            			<table>
            				<tr>
            					<th>카테고리</th>
            					<th>글 제목</th>
            					<th>작성시간</th>
            				</tr>
            				<tr>
            					<td>여행/잡담</td>
            					<td>여행다녀온 후기 남겨드려요~</td>
            					<td>1시간 전</td>
            				</tr>
            			</table>
            		</div>
            		<div class="menu comment">
            			<table>
            				<tr>
            					<th>카테고리</th>
            					<th>글 제목</th>
            					<th>작성시간</th>
            				</tr>
            				<tr>
            					<td>여행/잡담</td>
            					<td>여행다녀온 후기 남겨드려요~</td>
            					<td>3시간 전</td>
            				</tr>
            			</table>
            		</div>
            		<div class="menu set">
            			<table>
            				<tr>
            					<th>카테고리</th>
            					<th>글 제목</th>
            					<th>남긴시간</th>
            				</tr>
            				<tr>
            					<td>여행/잡담</td>
            					<td>여행다녀온 후기 남겨드려요~</td>
            					<td>2시간 전</td>
            				</tr>
            			</table>
            		</div>
            	</div>
			</section>
			<footer>
			
			</footer>
		</div>
	</body>
</html>