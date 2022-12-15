<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
		
		<link rel="stylesheet" type="text/css" href="<c:url value='/css/publicEventDetail.css' />">
		<link rel="stylesheet" type="text/css" href="<c:url value='css/modal_login.css'/>">
		<script src="<c:url value='/js/jquery-3.6.1.min.js' />"></script>
		<script src="<c:url value='/js/publicEventDetail.js' />"></script>
		<script src="<c:url value='js/modal_login.js'/>"></script>
		<script type="text/javascript">
			function actionToggle(){
				var action=document.querySelector('.action');
				action.classList.toggle('active')
			}
			
		</script>	
		