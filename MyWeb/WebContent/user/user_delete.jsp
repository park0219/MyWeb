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
	
	<div align="center" style="margin: 20px 30px 20px 20px;">
		<h3>회원탈퇴 페이지</h3>
		<hr>
		<form action="user_delete_con.jsp" method="post" id="frm">
		
			<span style="font-size: large">비밀번호:</span> <input type="password" name="check_pw" style="font-size: large">
			<input type="button" value="확인" class="btn btn-primary" onclick="confirm('정말 탈퇴하시겠습니까?'); document.getElementById('frm').submit();">	
			<input type="button" value="취소" class="btn btn-danger" onclick="location.href='/MyWeb/user/user_mypage.jsp'">
		</form>

	</div>
	<jsp:include page="../include/footer.jsp"/>
</body>
</html>








