<%@page import="kr.co.park.user.model.UserVO"%>
<%@page import="kr.co.park.user.model.UserDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    
<%
	
	request.setCharacterEncoding("utf-8");

	String id = request.getParameter("id");
	String pw = request.getParameter("pw");

	UserDAO dao = UserDAO.getInstance();
	
	int result = dao.userCheck(id, pw); //로그인 유효성 검증 메서드.
	
	if(result == -1) {
%>
	<script>
		alert("아이디가 존재하지 않습니다.");
		history.back();
	</script>
	<%
	}
	else if(result == 0) {
	%>
	<script>
		alert("비밀번호가 틀렸습니다.");
		history.back();
	</script>	
	<% }
	else { //로그인 성공
		
		
		UserVO vo = dao.getMemberInfo(id);
		String name = vo.getName(); 
		session.setAttribute("user_name", name);
		session.setAttribute("user_id", id);
		
		response.sendRedirect("user_mypage.jsp");
	}
	%>
	