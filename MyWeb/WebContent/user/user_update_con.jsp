<%@page import="kr.co.park.user.model.UserDAO"%>
<%@page import="kr.co.park.user.model.UserVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    
<%
	
	request.setCharacterEncoding("utf-8");

	
	UserVO vo = new UserVO();
	
	vo.setId((String) session.getAttribute("user_id"));
	vo.setName(request.getParameter("name"));
	vo.setEmail(request.getParameter("email"));
	vo.setAddress(request.getParameter("address"));
	
	if(UserDAO.getInstance().updateUser(vo)) {
		
		//이름정보를 변경했으니 세션도 다시 제작.
		session.setAttribute("user_name", request.getParameter("name")); 
	%>
		<script>
			alert("회원 정보가 수정되었습니다.");
			location.href="user_mypage.jsp";
		</script>
		
	<% } else { %>
	
		<script>
			alert("회원 정보 수정에 실패했습니다.");
			location.href="user_mypage.jsp";
		</script>
		
	<% } %>
	
	
	
	
	
	
	
	
	
	




