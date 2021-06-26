package kr.co.park.board.service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.co.park.user.board.model.BoardDAO;

public class RegisterServiceimpl implements iBoardService {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {

		String writer = request.getParameter("bWriter"); 
		String title = request.getParameter("bTitle"); 
		String content = request.getParameter("bContent"); 
		
		BoardDAO.getInstance().regist(writer, title, content);

	}

}
