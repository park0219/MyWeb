<%@page import="kr.co.park.user.model.UserVO"%>
<%@page import="kr.co.park.user.model.UserDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    
<%
	
	
	request.setCharacterEncoding("utf-8");
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	String name = request.getParameter("name");
	String email = request.getParameter("email");
	String address = request.getParameter("address");

	UserDAO dao = UserDAO.getInstance();

	if(dao.confirmId(id)) { //true가 리턴이 되면 이미 가입된 회원
%>
	<script>
		alert("아이디가 중복되었습니다.");
		histroy.back(); 
<% 		
	}
	else { //이미 가입된 회원이 없는 경우.
		
		
		UserVO vo = new UserVO(id, pw, name, email, address);
		
		//회원 가입 처리 메서드
		if(dao.insertMember(vo)) { %>
			
		<script>
			alert("회원가입을 축하합니다!");
			location.href="user_login.jsp";
		</script>
	<% } 
		else { %>			
		<script>
			alert("회원가입에 실패했습니다.");
			history.back();
		</script>
	<% }
		
	}%>