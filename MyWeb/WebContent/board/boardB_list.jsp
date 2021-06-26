<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<jsp:include page="../include/header.jsp"/>	
	
	
	<c:if test="${ sessionScope.user_id == null }">
		<script>
			alert("회원만 게시판 이용이 가능합니다. 로그인 해주세요.")
			location.href="../user/user_login.jsp"
		</script>
	</c:if>

	<div class="container box">
		<h3>BEST 게시판</h3>

		<table class="table table-bordered">
			<colgroup>
				<col width="9%"/>
				<col width="50%"/>
				<col width="%"/>
				<col width="15%"/>
				<col width="7%"/>
			</colgroup>
			<thead>
				<tr>
					<th>순위</th>
					<th>제목</th>
					<th>날짜</th>
					<th>작성자</th>
					<th>조회수</th>
				</tr>
			</thead>
			<c:set var="count" value="1"/>
			<c:forEach var="article" items="${ boardlist }">
			<tbody>
				<tr>
					<td>${ count }위</td>
					<td><a href="content.board?boardId=${article.boardId}">${ article.title }</a></td>
					<td>
						<fmt:formatDate value="${ article.date }" pattern="MM월 dd일 E요일"/> <%-- https://docs.oracle.com/javase/8/docs/api/  java/text/SimpleDateFormat --%>
					</td>
					<td>${ article.writer }</td>
					<td>${ article.hit }</td>
				</tr>
			</tbody>
			
			<c:set var="count" value="${count + 1 }"/>
			</c:forEach>
			
		</table>
	</div>

	<jsp:include page="../include/footer.jsp"/>	

</body>
</html>







