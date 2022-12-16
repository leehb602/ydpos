<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
	
	
	<link rel="stylesheet" type="text/css" href="<c:url value='/css/cardListDetail.css' />">
		<script src="<c:url value='/js/jquery-3.6.1.min.js' />"></script>	
	<script src="<c:url value='/js/recordDetail.js' />"></script>
	<script src="https://kit.fontawesome.com/1d26a052eb.js"
	crossorigin="anonymous"></script>
	<script type="text/javascript">
			function actionToggle(){
				var action=document.querySelector('.action');
				action.classList.toggle('active')
			}
			
		</script>
	
	
<!-- 모달 -->
	<script src="<c:url value='js/modal_login.js'/>"></script>
	
		
<!-- 		<script src="../write/loginpage/modal_login.js"></script>
		<link rel="stylesheet" type="text/css" href="../write/loginpage/modal_login.css"> 		
		<script src="https://kit.fontawesome.com/f31bf33191.js" crossorigin="anonymous"></script>	 -->				
		
		<style>
      nav {
        margin-left: 140px;
        margin-right: 140px;
      }

      .company a:nth-child(3) {
        color: #274c5e;
      }

      .company a:not(.company a:nth-child(3)) {
        color: #77919d;
      }
      
      #record_main{
      	height: 1312px;
      }
    </style>
	
