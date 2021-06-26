<%@page import="kr.co.park.user.model.UserVO"%>
<%@page import="kr.co.park.user.model.UserDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%

	/*
		-사용자가 이 페이지에 들어왔을 때,
		 getMemberInfo()를 이용해서 회원정보를 불러온 후
		 아래의 input태그에 해당하는 값이 미리 보여지도록 처리.
	*/
	
	String id = (String) session.getAttribute("user_id");

	UserVO vo = UserDAO.getInstance().getMemberInfo(id);
	
	String name = vo.getName();
	String email = vo.getEmail();
	String address = vo.getAddress();

%>   
    
    
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	function update() {
		if(document.reg_form.name.value == 0) {
			alert("이름은 필수 사항입니다");
			reg_form.id.focus();
			return false;
		}
		if(document.reg_form.email.value.trim()!="" && document.reg_form.email.value.match(/^[-A-Za-z0-9_]+[-A-Za-z0-9_.]*[@]{1}[-A-Za-z0-9_]+[-A-Za-z0-9_.]*[.]{1}[A-Za-z]{2,5}$/)!=document.reg_form.email.value.trim())
		{
			alert("메일주소형식이 맞지 않습니다.");
			reg_form.email.focus();
			return false;
		}
		confirm('수정하시겠습니까?');
	}
</script>
</head>
<body>
<jsp:include page="../include/header.jsp"/>



<div align="center" style="margin: 20px 30px 20px 20px;">
		<h3>회원정보 수정 페이지</h3>
		<hr>
		<form action="user_update_con.jsp" method="post" name="reg_form">
			<input type="hidden" value="<%=id %>" name="id">
			<table>
				<tr>
					<td>아이디</td>
					<td align="center"><%= id %></td>
					
				</tr>
				<tr>
					<td>이름*</td>
					<td><input type="text" size="30" name="name" value="<%=name%>"></td>
				</tr>
				<tr>
					<td>이메일*</td>
					<td><input type="text" size="30" name="email" value="<%=email%>"></td>
				</tr>
				<tr>
					<td>주소</td>
					<td><input type="text" size="30" name="address" value="<%=address%>"></td>
				</tr>
			</table>
			
			<br>
			
			<input type="submit" value="정보수정" class="btn btn-primary" onclick="return update()">
			<input type="button" value="취소" class="btn btn-danger" onclick="location.href='/MyWeb/user/user_mypage.jsp'">
			
			
		</form>
	
	</div>

	<jsp:include page="../include/footer.jsp"/>
</body>
</html>