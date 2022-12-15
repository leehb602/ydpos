<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
	
			
		
		<script src="<c:url value='/js/jquery-3.6.1.min.js' />"></script>			
		

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
	
