<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
		<style>
			#wrap{
				margin:0 auto;
				width: 100%;
				text-align: center;
			}
			
			table{
				margin:0 auto;
				width: 400px;
			}			
		</style>
	<head>
	<body>
	<div id="wrap">
			<h3>게시글 수정</h3>
		
		<form method="post" action="/publeE/updateBoard">
			<table>
				<tr><td>ecardNo</td>
					<td><input type="text"name="ecardNo"value="${cdList.ecardNo}"readonly></td></tr>
				<tr><td>ecardTitle  </td>
					<td><input type="text"name="ecardTitle"value="${cdList.ecardTitle}"></td></tr>
				<tr><td>ecardSubTitle  </td>
					<td><input type="text"name="ecardSubTitle"value="${cdList.ecardSubTitle}"></td></tr>
				</tr>
				
				<tr><td colspan="2"><input type="submit" value="수정"> 
				<input type="reset" value="취소"></td></tr>
			</table>
		</form>
		
		
		</div>
			
	</body>
</html>