package adminAction;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import action.Action;
public class BoardReplyFormAction implements Action {
   @Override
   public void execute(HttpServletRequest request, HttpServletResponse response)
         throws ServletException, IOException {
      String url = "/board/boardReply.jsp";
      RequestDispatcher dispatcher = request.getRequestDispatcher(url);
      dispatcher.forward(request, response);
   }
}
