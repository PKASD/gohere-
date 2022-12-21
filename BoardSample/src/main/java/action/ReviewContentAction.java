package action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import service.BoardContentServuce;
import service.ReviewContentService;
import vo.ActionForward;
import vo.BoardVO;

public class ReviewContentAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		// TODO Auto-generated method stub
		int num = Integer.parseInt(request.getParameter("num"));
		String pageNum = request.getParameter("pageNum");
		
		
		ReviewContentService reviewContentService = new ReviewContentService();
		BoardVO article = reviewContentService.getArticle(num);
		
		request.setAttribute("article", article);
		request.setAttribute("pageNum", pageNum);
		
		ActionForward forward = new ActionForward();
		forward.setUrl("board/reviewContent.jsp");
		
		return forward;
	}

}
