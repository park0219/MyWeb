<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="/MyWeb/js/member.js"></script>
</head>
<body>
	<jsp:include page="../include/header.jsp"/>
	
	<div align="center" style="margin: 20px 30px 20px 20px;">
		<h2>비밀번호 변경 페이지</h2>
		<hr>
		
		<form action="user_change_pw_con.jsp" method="post" name="reg_form">
			<span style="font-size: large">현재&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 비밀번호:</span> <input type="password" name="old_pw" style="font-size: large"> <br><br>
			<span style="font-size: large">변경&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 비밀번호:</span> <input type="password" name="new_pw" style="font-size: large"> <br><br>
			<span style="font-size: large">변경 비밀번호 확인:</span> <input type="password" name="new_pw2" style="font-size: large"> <br><br>
			
			<input type="button" value="확인" class="btn btn-primary" onclick="chagepw()">
			<input type="button" value="취소" class="btn btn-danger" onclick="history.back()">
			
		</form>
		
	</div>
	
	
	<jsp:include page="../include/footer.jsp"/>
</body>
</html>













