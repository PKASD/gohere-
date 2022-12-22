package action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import vo.ActionForward;
import vo.ReplyVO;

public class rBoardWriteFormAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		// TODO Auto-generated method stub

		int num = 0;

		if (request.getParameter("num") != null) {
			num = Integer.parseInt(request.getParameter("num"));
		}
		
		ReplyVO replyVO = new ReplyVO();
		replyVO.setNum(num);

		request.setAttribute("replyVO", replyVO);

		ActionForward forward = new ActionForward();
		forward.setUrl("board/rWriteForm.jsp");
		
		return forward;
	}

}
