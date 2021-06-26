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

<c:if test="${ sessionScope.user_id == null }">
		<script>
			alert("회원만 게시판 이용이 가능합니다. 로그인 해주세요.")
			location.href="../user/user_login.jsp"
		</script>
</c:if>

<script type="text/javascript" src="../se2/js/HuskyEZCreator.js" charset="UTF-8"></script>
<script type="text/javascript">

	function regBoard() {
		if(jQuery('[name="bTitle"]').val().replace(/ /g, "").replace("<br>","") == ""){
			alert("제목을 입력하세요.");
			return false;
		}
		oEditors.getById["bContent"].exec("UPDATE_CONTENTS_FIELD", [ ]);
		if(jQuery('[name="bContent"]').val().replace(/ /g, "").replace("<br>","") == ""){
			alert("내용을 입력하세요.");
			return false;
		}
		confirm('등록하시겠습니까?');	
	}
	
</script>

<jsp:include page="../include/header.jsp"/>

<div align="center" class="div_center container box">
	<h3>게시판 글 작성 페이지</h3>
	<hr>
	
	<form action="regist.board" method="post">
		<table border="1" width="1000">
			<tr>
				<td>작성자</td>
				<td>
					<input type="text" name="bWriter" size="20" value="${sessionScope.user_id }" readonly style="width:150px;">
				</td>
			</tr>
			<tr>
				<td>글 제목</td>
				<td>
					<input type="text" name="bTitle" size="80">
				</td>
			</tr>
			<tr>
				<td>글 내용</td>
				<td>
					<textarea name="bContent" id="bContent" rows="10" style="width: 95%;"></textarea>
					<!-- <textarea name="bContent" id="bContent" rows="10" cols="100">TEST</textarea> -->

				</td>
			</tr>
			<tr>
				<td colspan="2">
					<input type="submit" value="작성 완료" onclick="return regBoard()">
					&nbsp;&nbsp;
					<a href="list.board"><input type="button" value="취소" ></a>         
				</td>
			</tr>
			
		</table>
	</form>
	</div>
</div>

	<script type="text/javascript">
		var oEditors = [];
		nhn.husky.EZCreator.createInIFrame({
		    oAppRef: oEditors,
		    elPlaceHolder: "bContent",
		    sSkinURI: "../se2/SmartEditor2Skin.jsp",
		    fCreator: "createSEditor2"
		});
	</script>

	<jsp:include page="../include/footer.jsp"/>

</body>
</html>