package action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.MemberDAO;
import dto.MemberVO;



public class UserUpdateAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		MemberVO mvo = new MemberVO();
		mvo.setPwd(request.getParameter("pwd"));
		mvo.setName(request.getParameter("name"));
		mvo.setEmail(request.getParameter("email"));
		mvo.setZipNum(request.getParameter("zip_num"));
		mvo.setAddress(request.getParameter("address"));
		mvo.setPhone(request.getParameter("phone"));
		mvo.setId(request.getParameter("id"));
		
		MemberDAO mDao = MemberDAO.getInstance();
		mDao.updateMember(mvo);

		new UserCenterPage().execute(request, response);
		
		

	}

}
