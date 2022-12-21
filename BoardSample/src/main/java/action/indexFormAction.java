package action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import service.BoardListService;
import service.ReviewBoardListService;
import vo.ActionForward;
import vo.BoardVO;
import vo.PageVO;
import vo.ReviewBoardVO;

public class indexFormAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		// TODO Auto-generated method stub

		int pageSize = 7;
		// 한 페이지당 출력될 글의 개수
		//
		String pageNum = request.getParameter("pageNum");
		if (pageNum == null) {// 게시판 메뉴를 클릭하고 요청했을 때
			pageNum = "1";
		}

		int currentPage = Integer.parseInt(pageNum);
		// 페이징 처리할 때 페이지 번호로 연산을 하기위해서 정수타입으로 변환
		
		int startRow = (currentPage - 1) * pageSize + 1;
		// 해당 페이지에 출력될 첫번째 글의 레코드 번호
		// 1페이지
		// (1-1)*10+1 ==> 1
		// 2페이지
		// (2-1)*10+1 ==> 11

		int count = 0;
		// 총 글의 개수를 저장할 변수

		List<ReviewBoardVO> reviewArticleList = null;
		ReviewBoardListService reviewBoardListService = new ReviewBoardListService();

		List<BoardVO> articleList = null;
		BoardListService boardListService = new BoardListService();
		
		count = reviewBoardListService.getArticleCount();
		// 전체 글의 개수 얻어오기

		if (count > 0) {
			reviewArticleList = reviewBoardListService.getArticles(startRow, pageSize);
			articleList = boardListService.getArticles(startRow, pageSize);
		}

		request.setAttribute("reviewArticleList", reviewArticleList);
		request.setAttribute("articleList", articleList);
		
		ActionForward forward = new ActionForward();
		forward.setUrl("board/indexForm.jsp");
		
		return forward;
	}

}
