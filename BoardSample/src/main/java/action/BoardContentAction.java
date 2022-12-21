package action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import service.BoardContentServuce;
import vo.ActionForward;
import vo.BoardVO;

public class BoardContentAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		// TODO Auto-generated method stub
		int num = Integer.parseInt(request.getParameter("num"));
		String pageNum = request.getParameter("pageNum");
		
		
		BoardContentServuce boardContentServuce = new BoardContentServuce();
		BoardVO article = boardContentServuce.getArticle(num);
		
		request.setAttribute("article", article);
		request.setAttribute("pageNum", pageNum);
		
		ActionForward forward = new ActionForward();
		forward.setUrl("board/content.jsp");
		
		return forward;
	}

}
