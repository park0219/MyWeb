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
		<h3>통합 게시판</h3>

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
					<th>글 번호</th>
					<th>제목</th>
					<th>날짜</th>
					<th>작성자</th>
					<th>조회수</th>
				</tr>
			</thead>

			<c:forEach var="article" items="${ boardlist }">
			<tbody>
				<tr>
					<td>${ article.boardId }</td>
					<td><a href="content.board?boardId=${article.boardId}">${ article.title }</a></td>
					<td>
						<fmt:formatDate value="${ article.date }" pattern="MM월 dd일 E요일"/> <%-- https://docs.oracle.com/javase/8/docs/api/  java/text/SimpleDateFormat --%>
					</td>
					<td>${ article.writer }</td>
					<td>${ article.hit }</td>
				</tr>
			</tbody>
			</c:forEach>
			<tbody>
				<tr>
					<td colspan="5" align="right">
						<form action="search.board" class="form-inline" >
						  <div class="form-group">
						    <input type="text" name="search" placeholder="제목검색" class="form-control" >
						  	<input type="submit" value="검색" class="btn btn-default">
							<input type="button" value="글 작성" class="btn btn-default" onclick="location.href='writer.board'">
						  </div>
						</form> 
					</td>
				</tr>
			</tbody>
		
		</table>
	</div>

	<jsp:include page="../include/footer.jsp"/>	

</body>
</html>







