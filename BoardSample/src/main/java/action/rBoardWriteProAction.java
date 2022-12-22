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

		String saveFolder = "Image/review";

		String encType = "UTF-8";

		int maxSize = 100 * 1024 * 1024;

		ServletContext context = request.getServletContext();

		realFolder = context.getRealPath(saveFolder);

		MultipartRequest multi = new MultipartRequest(request, realFolder, maxSize, encType, new DefaultFileRenamePolicy());

		ReviewBoardVO reviewBoardVO = new ReviewBoardVO();
		reviewBoardVO.setContent(multi.getParameter("content"));
		reviewBoardVO.setNum(Integer.parseInt(multi.getParameter("num")));
		String serverFileName = multi.getFilesystemName("reviewImage");
		reviewBoardVO.setReviewImage(serverFileName.substring(0, serverFileName.indexOf(".")));
		reviewBoardVO.setReg_date(new Timestamp(System.currentTimeMillis()));
		reviewBoardVO.setSubject(multi.getParameter("subject"));
		reviewBoardVO.setWriter(multi.getParameter("writer"));

		ReviewBoardWriteProService reviewBoardWirteProService = new ReviewBoardWriteProService();
		boolean registSuccess = reviewBoardWirteProService.writeArticle(reviewBoardVO);

		ActionForward forward = null;
		if (registSuccess) {
			forward = new ActionForward();
			forward.setUrl("rBoardList.bo");
		} else {
			if (!serverFileName.contains(".jpg")) {
				response.setContentType("text/html;charset=UTF-8");
				PrintWriter out = response.getWriter();
				out.println("<script>");
				out.println("alert('jpg 파일을 등록해주세요')");
				out.println("history.back()");
				out.println("</script>");
			} else {
				response.setContentType("text/html;charset=UTF-8");
				PrintWriter out = response.getWriter();
				out.println("<script>");
				out.println("alert('등록 실패')");
				out.println("history.back()");
				out.println("</script>");
			}
		}

		return forward;
	}

}
