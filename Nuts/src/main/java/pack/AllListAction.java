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


public class AllListAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url = "/dietary/dieteryAllList.jsp";
		ProductDAO dDao = ProductDAO.getInstance();
		List<ProductVO> dietaryList = dDao.selectAllDietery();
		request.setAttribute("dietaryList", dietaryList);
		RequestDispatcher dispatcher = request.getRequestDispatcher(url);
		dispatcher.forward(request, response);

	}

}
