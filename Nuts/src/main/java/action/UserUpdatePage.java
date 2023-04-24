package action;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.MemberDAO;
import dto.MemberVO;



public class UserUpdatePage implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String url ="apple/userUpdate.jsp";
		String id = request.getParameter("id");
		
		MemberDAO mDao = MemberDAO.getInstance();
		MemberVO mvo = mDao.selectOneMemberByID(id);
		request.setAttribute("member", mvo);
		
		RequestDispatcher dispatcher = request.getRequestDispatcher(url);
		dispatcher.forward(request, response);
		
	}

}
