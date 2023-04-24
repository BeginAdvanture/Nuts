package action;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.OrderDAO;
import dto.MemberVO;
import dto.OrderVO;

public class MyPageAction implements Action {
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url = "mypage/mypage.jsp";
		HttpSession session = request.getSession();
		MemberVO loginUser = (MemberVO) session.getAttribute("loginUser");
		if (loginUser == null) {
			url = "NutsServlet?command=login_form";
		} else {
			OrderDAO orderDAO = OrderDAO.getInstance();
			ArrayList<Integer> oseqList = orderDAO.selectSeqOrderIng(loginUser.getId());
			ArrayList<OrderVO> orderList = new ArrayList<OrderVO>();
			for (int oseq : oseqList) {
				ArrayList<OrderVO> orderListIng = orderDAO.listOrderById(loginUser.getId(), "1", oseq);
				OrderVO orderVO = orderListIng.get(0);
				orderVO.setPname(orderVO.getPname() + " �� " + orderListIng.size() + "��");

				int totalPrice = 0;
				for (OrderVO ovo : orderListIng) {
					totalPrice += ovo.getPrice() * ovo.getQuantity();
				}
				orderVO.setPrice(totalPrice);
				orderList.add(orderVO);
			}
			request.setAttribute("title", "���� ���� �ֹ� ����");
			request.setAttribute("orderList", orderList);
		}
		request.getRequestDispatcher(url).forward(request, response);
	}
}