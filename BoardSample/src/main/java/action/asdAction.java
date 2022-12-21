package action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import service.asdService;
import vo.ActionForward;
import vo.BoardVO;
import vo.PageVO;

public class asdAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		// TODO Auto-generated method stub
	
		asdService asdService = new asdService();
		boolean registSuccess = asdService.asdd();
		
		ActionForward forward = new ActionForward();
		forward.setUrl("index.jsp");

		return forward;
	}

}
