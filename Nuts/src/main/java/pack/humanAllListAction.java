package pack;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import action.Action;
import dao.ProductDAO;
import dto.ProductVO;


public class humanAllListAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url = "dietary/humanAllList.jsp";
		String human = request.getParameter("human").trim();
		ProductDAO dDao = ProductDAO.getInstance();
		List<ProductVO> humanList = dDao.humanList(human);
		request.setAttribute("humanList", humanList);
		request.setAttribute("human", human);
		RequestDispatcher dispatcher = request.getRequestDispatcher(url);
		dispatcher.forward(request, response);

	}

}
