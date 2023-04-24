package pack;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import action.Action;
import dao.Board1DAO;
import dto.Board1VO;
public class NotiWriteAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		Board1VO bvo = new Board1VO();
		bvo.setName(request.getParameter("name"));
		bvo.setTitle(request.getParameter("title"));
		bvo.setContent(request.getParameter("content"));
		
		Board1DAO bDao = Board1DAO.getInstance();
		bDao.insertBoard(bvo);
		new BoardListPage().execute(request, response);

	}

}
