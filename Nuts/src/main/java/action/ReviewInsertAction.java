package action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.ReviewDAO;
import dto.MemberVO;
import dto.ReviewVO;

public class ReviewInsertAction implements Action {

    @Override
    public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String url = "NutsServlet?command=review_list";

        HttpSession session = request.getSession();
        MemberVO loginUser = (MemberVO) session.getAttribute("loginUser");
        if (loginUser == null) {
            url = "NutsServlet?command=login_form";
        } else {
            ReviewVO reviewVO = new ReviewVO();
           
            /*reviewVO.setId(loginUser.getId());*/
            reviewVO.setPseq(Integer.parseInt(request.getParameter("pseq")));
            reviewVO.setContent(request.getParameter("content"));
    
            
            
            ReviewDAO reviewDAO = ReviewDAO.getInstance();
            reviewDAO.insertReview(reviewVO);
        }
        response.sendRedirect(url);
    }

}
