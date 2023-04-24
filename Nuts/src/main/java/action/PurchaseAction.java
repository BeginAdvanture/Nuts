package action;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.OrderDAO;
import dto.MemberVO;
import dto.OrderVO;
/*
public class PurchaseAction implements Action {
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		MemberVO loginUser = (MemberVO) session.getAttribute("loginUser");
		if (loginUser == null) {
			// 로그인이 되어 있지 않다면 로그인 페이지로 이동
			response.sendRedirect("NutsServlet?command=login_form");
			return;
		}

		int pseq = Integer.parseInt(request.getParameter("pseq"));
		int quantity = Integer.parseInt(request.getParameter("quantity"));

		// 주문 정보 생성
		OrderVO orderVO = new OrderVO();
		orderVO.setId(loginUser.getId());
		orderVO.setPseq(pseq);
		orderVO.setQuantity(quantity);

		// 주문 정보 DB에 추가
		OrderDAO orderDAO = OrderDAO.getInstance();
		orderDAO.insertPurchase(orderVO);

		// 주문 정보를 가져와서 총 주문 가격 계산
		//List<OrderVO> orderList = orderDAO.listOrderById(loginUser.getId(), "1");
		int totalPrice = 0;
		for (OrderVO vo : orderList) {
			totalPrice += vo.getPrice() * vo.getQuantity();
		}

		// JSP 페이지에 데이터 전달
		request.setAttribute("cartList", orderList);
		request.setAttribute("totalPrice", totalPrice);
		request.getRequestDispatcher("NutsServlet?command=order_insert").forward(request, response);
	}
}*/
