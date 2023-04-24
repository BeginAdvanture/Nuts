package pack;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import action.Action;
import dao.Board1DAO;
import dto.Board1VO;

public class BoardListPage implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url = "board1/boardList.jsp";
		Board1DAO bDao = Board1DAO.getInstance();
		List<Board1VO> boardList = bDao.selectAllBoards();
		request.setAttribute("boardList", boardList);
		
		RequestDispatcher rd = request.getRequestDispatcher(url);
		rd.forward(request, response);

	}

}