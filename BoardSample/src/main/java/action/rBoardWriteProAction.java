package action;

import java.io.PrintWriter;
import java.sql.Timestamp;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import service.ReviewBoardWriteProService;
import vo.ActionForward;
import vo.ReviewBoardVO;

public class rBoardWriteProAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		// TODO Auto-generated method stub
		String realFolder = "";
		// 파일이 업로드될 실질적인 경로

		String saveFolder = "images";
		// 파일이 업로드될 서버상의 폴더명

		String encType = "UTF-8";

		// 한번에 업로드 할 수 있는 바이트 수
		int maxSize = 5 * 1024 * 1024;// 5MB

		// 서버의 물리적인 경로 얻어오기
		ServletContext context = request.getServletContext();// 애플리케이션당 하나씩 생성되는 객체

		realFolder = context.getRealPath(saveFolder);
		
		MultipartRequest multi = new MultipartRequest(request, realFolder, maxSize, encType, new DefaultFileRenamePolicy());
		
		ReviewBoardVO reviewBoardVO = new ReviewBoardVO();
		reviewBoardVO.setContent(request.getParameter("content"));
		reviewBoardVO.setNum(Integer.parseInt(request.getParameter("num")));
		reviewBoardVO.setReviewImage(request.getParameter("reviewImage"));
		reviewBoardVO.setReg_date(new Timestamp(System.currentTimeMillis()));
		reviewBoardVO.setSubject(request.getParameter("subject"));
		reviewBoardVO.setWriter(request.getParameter("writer"));

		ReviewBoardWriteProService reviewBoardWirteProService = new ReviewBoardWriteProService();
		boolean registSuccess = reviewBoardWirteProService.writeArticle(reviewBoardVO);

		ActionForward forward = null;
		if (registSuccess) {
			forward = new ActionForward();
			forward.setUrl("rlist.jsp");
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
