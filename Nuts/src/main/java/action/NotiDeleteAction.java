package action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.Board1DAO;
import pack.AdminMainPage;


public class NotiDeleteAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String num = request.getParameter("num");
		Board1DAO bDao = Board1DAO.getInstance();
		bDao.deleteBoard(num);
		new AdminMainPage().execute(request, response);

	}

}
