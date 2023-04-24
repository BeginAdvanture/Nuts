package action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.HeartDAO;
import dto.HeartVO;
import dto.MemberVO;

public class HeartInsertAction implements Action {

    @Override
    public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String url = "NutsServlet?command=heart_list";

        HttpSession session = request.getSession();
        MemberVO loginUser = (MemberVO) session.getAttribute("loginUser");
        if (loginUser == null) {
            url = "NutsServlet?command=login_form";
        } else {
            HeartVO heartVO = new HeartVO();
            heartVO.setId(loginUser.getId());
            heartVO.setPseq(Integer.parseInt(request.getParameter("pseq")));
            heartVO.setQuantity(Integer.parseInt(request.getParameter("quantity")));
            
            
            HeartDAO heartDAO = HeartDAO.getInstance();
            heartDAO.insertHeart(heartVO);
        }
        response.sendRedirect(url);
    }

}
