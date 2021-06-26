package kr.co.park.board.service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.co.park.user.board.model.BoardDAO;
import kr.co.park.user.board.model.BoardVO;

public class SearchServiceimpl implements iBoardService {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		List<BoardVO> list = BoardDAO.getInstance().searchBoard(request.getParameter("search"));
		request.setAttribute("boardlist", list);

	}

}
