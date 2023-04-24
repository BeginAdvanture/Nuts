package action;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.ProductDAO;
import dto.ProductVO;



public class KindHumanPickPriceAction implements Action {

   @Override
   public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      String url = "dietary/humanKindPickList.jsp";   
      String kind = request.getParameter("kind").trim();
      String human = request.getParameter("human").trim();
      ProductDAO dDao =  ProductDAO.getInstance();
      List< ProductVO> kindHumanPickList = dDao.kindHumanPickPrice(human, kind);
      
      request.setAttribute("kindHumanPickList", kindHumanPickList);
      request.setAttribute("human",human);
      request.setAttribute("kind",kind);
      RequestDispatcher dispatcher = request.getRequestDispatcher(url);
      dispatcher.forward(request, response);

   }

}