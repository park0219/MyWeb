package kr.co.park.board.service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.co.park.user.board.model.BoardDAO;
import kr.co.park.user.board.model.BoardVO;

public class ModifyServiceimpl implements iBoardService {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {

		BoardVO vo = BoardDAO.getInstance().contentBoard(request.getParameter("bId"));
		
		request.setAttribute("modify_board", vo);

	}

}
