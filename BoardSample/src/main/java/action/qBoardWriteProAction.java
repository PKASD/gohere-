package action;

import java.io.PrintWriter;
import java.sql.Timestamp;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import service.BoardWriteProService;
import vo.ActionForward;
import vo.BoardVO;

public class qBoardWriteProAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		// TODO Auto-generated method stub
		BoardVO boardVO = new BoardVO();
		boardVO.setContent(request.getParameter("content"));
		boardVO.setNum(Integer.parseInt(request.getParameter("num")));
		boardVO.setRe_level(Integer.parseInt(request.getParameter("re_level")));
		boardVO.setRe_step(Integer.parseInt(request.getParameter("re_step")));
		// boardVO.setReadcount(0);
		// 조회수는 default값이 0이라 안만들어도 댐
		boardVO.setRef(Integer.parseInt(request.getParameter("ref")));
		boardVO.setReg_date(new Timestamp(System.currentTimeMillis()));
		// 1970년부터 현재까지의 시간을 밀리세컨드 단위로 반환
		boardVO.setSubject(request.getParameter("subject"));
		boardVO.setWriter(request.getParameter("writer"));

		BoardWriteProService boardWirteProService = new BoardWriteProService();
		boolean registSuccess = boardWirteProService.writeArticle(boardVO);

		ActionForward forward = null;
		if (registSuccess) {
			forward = new ActionForward();
			forward.setUrl("qBoardList.bo");
		} else {
			response.setContentType("text/html;charset=UTF-8");
			PrintWriter out = response.getWriter();
			out.println("<script>");
			out.println("alert('등록 실패')");
			out.println("history.back()");
			out.println("</script>");
		}

		return forward;
	}

}
