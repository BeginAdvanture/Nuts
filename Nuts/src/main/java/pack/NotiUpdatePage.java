package pack;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import action.Action;
import dao.Board1DAO;
import dto.Board1VO;

public class NotiUpdatePage implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String url = "apple/noti_updatePage.jsp";
		String num = request.getParameter("num");
		Board1DAO bDao = Board1DAO.getInstance();
		bDao.updateReadCount(num);
		Board1VO bvo = bDao.selectOneBoardByNum(num);
		request.setAttribute("board", bvo);
		
		RequestDispatcher dispatcher = request.getRequestDispatcher(url);
		dispatcher.forward(request, response);

	}

}
