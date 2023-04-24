package adminAction;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse; // 추가

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import action.Action;
import dao.BoardDAO;
import dto.BoardVO;

public class BoardReplyAction implements Action {
    @Override
    public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        MultipartRequest multi = null;
        int sizeLimit = 10 * 1024 * 1024 ; 
        String savePath = request.getSession().getServletContext().getRealPath("/upload"); 

        try {
            multi = new MultipartRequest(request, savePath, sizeLimit, "utf-8", new DefaultFileRenamePolicy());
        } catch (Exception e) {
            e.printStackTrace();
        }

        BoardVO bVo = new BoardVO();
      
        bVo.setName(multi.getParameter("name"));
        bVo.setPass(multi.getParameter("pass"));
        bVo.setEmail(multi.getParameter("email"));

        // 답변글일 경우 "re"를 추가하여 타이틀을 설정
        String originalTitle = multi.getParameter("title");
        String reTitle = "<font color='red'>ㄴ re : </font>" + originalTitle;
        bVo.setTitle(reTitle);

        bVo.setContent(multi.getParameter("content"));
        bVo.setImage(multi.getFilesystemName("image")); // 이미지 파일명을 설정

        String refStr = request.getParameter("ref");
        String re_levelStr = request.getParameter("re_level");
        String re_stepStr = request.getParameter("re_step");

        int ref = (refStr == null) ? 0 : Integer.parseInt(refStr);
        int re_level = (re_levelStr == null) ? 0 : Integer.parseInt(re_levelStr);
        int re_step = (re_stepStr == null) ? 0 : Integer.parseInt(re_stepStr);

        bVo.setRef(ref);
        bVo.setRe_level(re_level);
        bVo.setRe_step(re_step);

        BoardDAO bDao = BoardDAO.getInstance();
        bDao.replyBoard(bVo, multi);

        new BoardListAction().execute(request, response);
    }
}