<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<script  src="http://code.jquery.com/jquery-latest.min.js"></script>

</head>
<body>
<jsp:include page="../include/header.jsp"/>
<div align="center" class="container box">


	<h3>게시글 내용 보기</h3>
	<table border="1" width="100%">
		<tr>
			<td width="20%">글번호</td>
			<td width="30%">${ content.boardId }</td>
			
			<td width="20%">조회수</td>
			<td width="30%">${ content.hit }</td>
		</tr>
		<tr>
			<td width="20%">작성자</td>
			<td width="30%">${ content.writer }</td>
			
			<td width="20%">작성일</td>
			<td width="30%">
				<fmt:formatDate value="${ content.date }" pattern="MM월 dd일 E요일 hh:mm:ss"/>
			</td>
		</tr>
		
		<tr>
			<td width="20%">글제목</td>
			<td colspan="3" width="30%">${ content.title }</td>
		</tr>
		<tr>
			<td width="20%">글내용</td>
			<td colspan="3" width="30%" height="120px">${ content.content }</td>
		</tr>
		
		<tr>
			<td colspan="4" align="center">
				<input type="button" value="목록" class="btn btn-primary" onclick="location.href='listB.board'">&nbsp;&nbsp;
			</td>
		</tr>
	</table>


</div>

	<jsp:include page="../include/footer.jsp"/>

</body>
</html>