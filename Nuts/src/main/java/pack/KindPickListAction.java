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



public class KindPickListAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url = "dietary/kindPickList.jsp";
		String kind = request.getParameter("kind").trim();
		ProductDAO dDao = ProductDAO.getInstance();
		List<ProductVO> kindPickList = dDao.kindPick(kind);
		request.setAttribute("kindPickList", kindPickList);
		request.setAttribute("kind",kind); // kindPickList 페이지로 kind 값을 가지고 넘어간다
		RequestDispatcher dispatcher = request.getRequestDispatcher(url);
		dispatcher.forward(request, response);

	}

}
