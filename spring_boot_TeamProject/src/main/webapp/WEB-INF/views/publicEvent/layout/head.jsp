<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
	
	
		<link rel="stylesheet" type="text/css" href="<c:url value='/css/publicEvent.css' />">
		<link rel="stylesheet" type="text/css" href="<c:url value='/css/publicEventDetail.css' />">
		<script src="<c:url value='/js/jquery-3.6.1.min.js' />"></script>	
		<script src="<c:url value='/js/publicEvent.js' />"></script>
		<script src="<c:url value='/js/publicEventDetail.js' />"></script> 
		
<!-- 	<script src="../write/loginpage/modal_login.js"></script>
		<link rel="stylesheet" type="text/css" href="../write/loginpage/modal_login.css"> 		
		<script src="https://kit.fontawesome.com/f31bf33191.js" crossorigin="anonymous"></script>	 --> 
		
		
		<script type="text/javascript">
			function actionToggle(){
				var action=document.querySelector('.action');
				action.classList.toggle('active')
			}
			
			/* function deleteCheck(){
				var answer = confirm("글 삭제하시겠습니까?");
				if(answer){
					location.href="/BoardDelete/${cdList.ecardNo}"
				}
			} */
		</script>
		<style>
			.company a:nth-child(4) {
			color: #274c5e;
			text-decoration: none;
			}
			.company a:not(.company a:nth-child(4)) {
			color: #77919d;
			text-decoration: none;
			}
			
		</style>
	
