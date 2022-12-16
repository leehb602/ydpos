<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>여행기 상세페이지</title>		
		<c:import url="/WEB-INF/views/board/layout/head_Detail.jsp" />    			
	<head>
	<body>  
		<!-- warp -->
		<div id="wrap">	
		<!--  top -->         
        <nav>
        <c:import url="/WEB-INF/views/board/layout/top_Detail.jsp" /> 
        </nav>			
        	<div class="board_Box">
				<div class="boardpageDetail" value="${cdList.writeCategory}">
					<div class="board_titleBox">				
						<h3 class="board_title">${cdList.writeTitle}</h3><br/>
						
					</div>
					<div class="board_Mainimage">
						<img src="<c:url value='/image/${cdList.fileName}'/>" />
					</div>		
				</div>							
				<div class="boardtext">
						<div class ="profile-Box">
							<div class="profile">
								<div class = profile-img >								
								<img src="<c:url value='/image/user.png'/>">
								</div>
							<div class="Infobox">
							<div class="boardWirteName"><h5>${cdList.userId}</h5> 
								</div>
								
								 <div class="boardWirteDate"><h5><fmt:formatDate value='${cdList.writeDate }' pattern="yyyy-MM-dd  hh:mm"/></h5>
								
								</div> 
							</div>	
						</div>
						<div class="ViewCount">
						<h5>조회수 : ${cdList.writeHits} </h5>
						</div>
					</div>		
		 			<div class="board_content">  
					
						
					
					 
						<br>
					<%-- <div class="board_Detailimage"><img src="<c:url value='/image/${cdList.writeImg}'/>"></div> --%>
						<br>
					<div class="board_Detailtext"><br/>${cdList.editordata}</div><br/>
					
					
					</div>				
				</div>		
			</div>
			<!-- board button Box -->
			
				
			
			<%-- <div class="action" onclick="actionToggle();">
				<span id="btnPl"><img src="/image/free-icon-add-circularss.png"></span>
				<ul>
					<li id="btn1" type="button"><img src="<c:url value='/image/free-icon-like-6363793.png'/>">좋아요</li>
					<li id="btn2" type="button"><img src="<c:url value='/image/free-icon-font-angle-up-3916915.png'/>">위로</li>
					<li id="btn3" type="button"><img src="<c:url value='/image/free-icon-write-3472441.png'/>">글쓰기</li>
					<li id="btn4" type="button"><img src="<c:url value='/image/free-icon-left-return-arrow-60793.png'/>">게시판</li>
					<li id="btn5" type="button"><img src="<c:url value='/image/free-icon-bookmark-4460398.png'/>">북마크</li>
				</ul>
			</div> --%>			<!--// button -->
					
		</div>
		<!-- //wrap --> 
		<c:import url="/WEB-INF/views/comments/comments.jsp" /> <br>
		<c:import url="/WEB-INF/views/comments/commentsResultView.jsp" />
	 <!--  bottom --> 
	 <br><br><hr>      
	<c:import url="/WEB-INF/views/board/layout/bottom.jsp" /> 
	
	</body>
</html>



