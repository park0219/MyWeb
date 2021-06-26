package kr.co.park.board.service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.co.park.user.board.model.BoardDAO;

public class DeleteServiceimple implements iBoardService {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		
		BoardDAO.getInstance().deleteBoard(request.getParameter("bId"));

	}

}
