package action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.Board1DAO;
import dto.Board1VO;
import pack.AdminMainPage;


public class NotiUpdateAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		Board1VO bvo = new Board1VO();
		bvo.setNum(Integer.parseInt(request.getParameter("num")));
		bvo.setName(request.getParameter("name"));
		bvo.setCategory(request.getParameter("list"));
		bvo.setTitle(request.getParameter("title"));
		bvo.setContent(request.getParameter("content"));
		System.out.println(Integer.parseInt(request.getParameter("num")));
		
		Board1DAO bDao = Board1DAO.getInstance();
		bDao.updateBoard(bvo);
		new AdminMainPage().execute(request, response);

	}

}
