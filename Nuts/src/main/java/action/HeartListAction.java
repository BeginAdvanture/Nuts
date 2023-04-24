package action;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.HeartDAO;

import dto.HeartVO;
import dto.MemberVO;

public class HeartListAction implements Action {
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url = "mypage/heartList.jsp";
		HttpSession session = request.getSession();
		MemberVO loginUser = (MemberVO) session.getAttribute("loginUser");
		if (loginUser == null) {
			url = "NutsServlet?command=login_form";
		} else {
			HeartDAO heartDAO = HeartDAO.getInstance();
			ArrayList<HeartVO> heartList = heartDAO.listHeart(loginUser.getId());

			request.setAttribute("heartList", heartList);

		}
		request.getRequestDispatcher(url).forward(request, response);
	}
}