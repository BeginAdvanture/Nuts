package action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.CartDAO;
import dao.HeartDAO;

public class HeartDeleteAction implements Action {
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url = "NutsServlet?command=heart_list";

		String[] cseqArr = request.getParameterValues("cseq");

		for (String cseq : cseqArr) {
			System.out.println(cseq);
			HeartDAO heartDAO = HeartDAO.getInstance();
			heartDAO.deleteHeart(Integer.parseInt(cseq));
		}
		request.getRequestDispatcher(url).forward(request, response);
	}
}