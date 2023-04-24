package action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.MemberDAO;
import dto.MemberVO;



import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.MemberDAO;
import dto.MemberVO;

public class idFindAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String url = "member/searchId.jsp";
		HttpSession session = request.getSession();

		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String phone = request.getParameter("phone");

		MemberDAO memberDAO = MemberDAO.getInstance();
		MemberVO memberVO = memberDAO.findId(name, email, phone);

		if (memberVO != null) {
			if (memberVO.getName().equals(name) && memberVO.getEmail().equals(email) && memberVO.getPhone().equals(phone)) {
				session.removeAttribute("name");
				session.setAttribute("memberVO", memberVO);
			} else {
				request.setAttribute("message", "입력하신 정보와 일치하는 회원 정보가 없습니다.");
			}
		} else {
			request.setAttribute("message", "입력하신 정보와 일치하는 회원 정보가 없습니다.");
		}
		
		request.setAttribute("memberVO", memberVO);
		request.getRequestDispatcher(url).forward(request, response);
	}

}
