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
	
		<h3>로그인 페이지</h3>
		<br>
		
		<form action="user_login_con.jsp" method="post">
			<input type="text" name="id" placeholder="아이디" style="font-size:18px;"> <br><br>
			<input type="password" name="pw" placeholder="비밀번호" style="font-size:18px;"> <br><br>
			
			<input type="submit" value="로그인" class="btn btn-primary">
			<input type="button" value="회원가입" class="btn btn-default" onclick="location.href='user_join.jsp'">
		
		</form>
	</div>

	<jsp:include page="../include/footer.jsp"/>
	
</body>
</html>