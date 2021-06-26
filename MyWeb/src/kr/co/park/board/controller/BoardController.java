package kr.co.park.board.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.co.park.board.service.ContentServiceimpl;
import kr.co.park.board.service.DeleteServiceimple;
import kr.co.park.board.service.GetListBServiceImpl;
import kr.co.park.board.service.GetListServiceImpl;
import kr.co.park.board.service.ModifyServiceimpl;
import kr.co.park.board.service.RegisterServiceimpl;
import kr.co.park.board.service.SearchServiceimpl;
import kr.co.park.board.service.UpdateServiceimple;
import kr.co.park.board.service.iBoardService;

@WebServlet("*.board") //확장자 패턴.
public class BoardController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public BoardController() {
        super();
    }
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doRequest(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doRequest(request, response);
	}

	protected void doRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("utf-8");
		
		String uri = request.getRequestURI(); //URI
		String conPath = request.getContextPath(); //contextPath
		String com = uri.substring(conPath.length());
		iBoardService sv = null;
		
		//리스트 목록 요청
		if(com.equals("/board/list.board")) {
			
			sv = new GetListServiceImpl();
			sv.execute(request, response);
			
			//request 객체를 다음 화면까지 운반하기 위한 forward 이동
			RequestDispatcher dp = request.getRequestDispatcher("board_list.jsp");
			dp.forward(request, response);
		}
		//베스트 리스트 목록 요청
		else if(com.equals("/board/listB.board")) {
			
			sv = new GetListBServiceImpl();
			sv.execute(request, response);
			
			//request 객체를 다음 화면까지 운반하기 위한 forward 이동
			RequestDispatcher dp = request.getRequestDispatcher("boardB_list.jsp");
			dp.forward(request, response);
		}
		//글쓰기 화면 이동 요청
		else if(com.equals("/board/writer.board")) { 
			response.sendRedirect("board_write.jsp");
		}
		//글 등록
		else if(com.equals("/board/regist.board")) {
			
			sv = new RegisterServiceimpl();
			sv.execute(request, response);
			
			response.sendRedirect("list.board");
		}
		//글 상세보기
		else if(com.equals("/board/content.board")) {
			
			sv = new ContentServiceimpl();
			sv.execute(request, response);
			RequestDispatcher dp = request.getRequestDispatcher("board_content.jsp");
			dp.forward(request, response);
		}
		//글 상세보기
		else if(com.equals("/board/contentB.board")) {
			
			sv = new ContentServiceimpl();
			sv.execute(request, response);
			RequestDispatcher dp = request.getRequestDispatcher("boardB_content.jsp");
			dp.forward(request, response);
		}
		else if(com.equals("/board/modify.board")) {
			
			
			sv = new ModifyServiceimpl();
			sv.execute(request, response);
			
			RequestDispatcher dp = request.getRequestDispatcher("board_modify.jsp");
			dp.forward(request, response);
			
		}
		else if(com.equals("/board/update.board")) {
			
			sv = new UpdateServiceimple();
			sv.execute(request, response);
			
			response.sendRedirect("list.board");
		}
		//삭제요청
		else if(com.equals("/board/delete.board")) {
			sv = new DeleteServiceimple();
			sv.execute(request, response);
			
			response.sendRedirect("list.board");
		}
		else if(com.equals("/board/search.board")) {
			
			sv = new SearchServiceimpl();
			sv.execute(request, response);
			
			RequestDispatcher dp = request.getRequestDispatcher("board_list.jsp");
			dp.forward(request, response);
		}
				
		
	}
}
