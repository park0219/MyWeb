<%@page import="kr.co.park.user.model.UserDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%

	request.setCharacterEncoding("utf-8");

	String id = (String) session.getAttribute("user_id");
	String pw = request.getParameter("check_pw");
	
	int result = UserDAO.getInstance().userCheck(id, pw);
	
	if(result == 0) { %>
	<script>
		alert("비밀번호가 틀렸습니다.");
		location.href="user_mypage.jsp";
	</script>
	<% } else { 
			if(UserDAO.getInstance().deleteUser(id)) {
				session.invalidate();	%>
				<script>
					alert("회원 탈퇴가 정상 처리되었습니다.");
					location.href="user_login.jsp";
				</script>
			<% } else { //삭제 실패%>
			<script>
				alert("회원 탈퇴에 실패했습니다.");
				location.href="user_mypage.jsp";
			</script>
	<% }
			
}%>
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	


