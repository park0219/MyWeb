<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<jsp:include page="../include/header.jsp"/>

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
		confirm('수정하시겠습니까?');	
	}
	
</script>

<div align="center" class="div_center box container">
	<h3>게시판 글 수정 페이지</h3>
	<hr>
	
	<form action="update.board" method="post">
	
		<input type="hidden" name="bId" value="${ modify_board.boardId }">
		
		<table border="1" width="1000">
			
			<tr>
				<td>글 번호</td>
				<td>${ modify_board.boardId }</td>
			</tr>
			<tr>
				<td>작성자</td>
				<td>${ modify_board.writer }</td>
			</tr>
			<tr>
				<td>글 제목</td>
				<td>
					<input type="text" name="bTitle" size="80" value="${ modify_board.title }">
				</td>
			</tr>
			<tr>
				<td>글 내용</td>
				<td>
					<textarea rows="10" style="width: 95%;" name="bContent" id="bContent">
						${ modify_board.content }
					</textarea>
				</td>
			</tr>
			<tr>
				<td colspan="2">
					<input type="submit" class="btn btn-danger" value="수정 하기" onclick="return regBoard()">&nbsp;&nbsp;
					<a href="/MyWeb/board/list.board"><input type="button" class="btn btn-primary" value="목록"></a>         
				</td>
			</tr>
			
		</table>
	</form>
	<script type="text/javascript">
		var oEditors = [];
		nhn.husky.EZCreator.createInIFrame({
		    oAppRef: oEditors,
		    elPlaceHolder: "bContent",
		    sSkinURI: "../se2/SmartEditor2Skin.jsp",
		    fCreator: "createSEditor2"
		});
	</script>
</div>
<jsp:include page="../include/footer.jsp"/>
</body>
</html>