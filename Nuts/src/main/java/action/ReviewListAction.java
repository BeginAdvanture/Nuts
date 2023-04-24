

package action;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.HeartDAO;
import dao.ReviewDAO;
import dto.HeartVO;
import dto.MemberVO;
import dto.ReviewVO;

public class ReviewListAction implements Action {
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url = "product/productDetail.jsp";
		HttpSession session = request.getSession();
		MemberVO loginUser = (MemberVO) session.getAttribute("loginUser");
		if (loginUser == null) {
			url = "NutsServlet?command=login_form";
		} else {
			ReviewDAO reviewDAO = ReviewDAO.getInstance();
			ArrayList<ReviewVO> reviewList = reviewDAO.listReview(loginUser.getId());

			request.setAttribute("reviewList", reviewList);

		}
		request.getRequestDispatcher(url).forward(request, response);
	}
}