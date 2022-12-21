package action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import vo.ActionForward;
import vo.ReplyVO;

public class qBoardWriteFormAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		// TODO Auto-generated method stub

		ReplyVO replyVO = new ReplyVO();

		request.setAttribute("replyVO", replyVO);

		ActionForward forward = new ActionForward();
		forward.setUrl("board/qWriteForm.jsp");
		
		return forward;
	}

}
