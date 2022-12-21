package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import action.Action;
import action.BoardContentAction;
import action.BoardDeleteFormAction;
import action.BoardDeleteProAction;
import action.qBoardListAction;
import action.BoardUpdateFormAction;
import action.BoardUpdateProAction;
import action.LoginFormAction;
import action.ReviewContentAction;
import action.randomFormAction;
import action.tripFormAction;
import action.SignInFormAction;
import action.qBoardWriteFormAction;
import action.qBoardWriteProAction;
import action.rBoardListAction;
import action.rBoardWriteFormAction;
import action.rBoardWriteProAction;
import action.updatePasswdFormAction;
import action.asdAction;
import action.fsvFormAction;
import action.indexFormAction;
import action.myPageFormAction;
import vo.ActionForward;

/**
 * Servlet implementation class BoardFrontController
 */
@WebServlet("*.bo")
public class BoardFrontController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public BoardFrontController() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		// 1. 요청 파악
		String requestURI = request.getRequestURI();// 요청 URL이 http://localhost:8088/BoardProject/boardWriteFrom.bo
		// requestURI = /BoardProject/boardWriteFrom.bo

		String contextPath = request.getContextPath();// /BoardProject

		String command = requestURI.substring(contextPath.length());// /boardWriteFrom.bo

		// 2. 요청별 처리
		Action action = null;
		// 각각의 요청(게시판 글쓰기, 게시판 목록보기., 게시판 글 삭제하기 등)으ㅜㄹ 처리하는 Action 클래스들의 규격(구조, 기능)을 정의한
		// 인터페이스
		// Action 인터페이스를 이용한 다형성을 활용해서 각 요청을 처리함
		ActionForward forward = null;

		if (command.contentEquals("/qBoardWriteForm.bo")) { //질문 게시판 글 쓰기 폼
			action = new qBoardWriteFormAction();

			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}

		else if (command.contentEquals("/qBoardWritePro.bo")) {
			action = new qBoardWriteProAction();

			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}

		else if (command.contentEquals("/qBoardList.bo")) { //질문 게시판 목록
			action = new qBoardListAction();

			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}

		else if (command.contentEquals("/boardContent.bo")) {
			action = new BoardContentAction();

			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		if (command.contentEquals("/rBoardWriteForm.bo")) {
			action = new rBoardWriteFormAction();

			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}

		else if (command.contentEquals("/rBoardWritePro.bo")) {
			action = new rBoardWriteProAction();

			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}

		else if (command.contentEquals("/rBoardList.bo")) {
			action = new rBoardListAction();

			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		else if (command.contentEquals("/reviewContent.bo")) {
			action = new ReviewContentAction();

			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}

		else if (command.contentEquals("/boardUpdateForm.bo")) {
			action = new BoardUpdateFormAction();

			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		} else if (command.contentEquals("/boardUpdatePro.bo")) {
			action = new BoardUpdateProAction();

			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		} else if (command.contentEquals("/boardDeleteForm.bo")) {
			action = new BoardDeleteFormAction();

			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		} else if (command.contentEquals("/boardDeletePro.bo")) {
			action = new BoardDeleteProAction();

			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		} else if (command.contentEquals("/signInForm.bo")) {// 회원가입
			action = new SignInFormAction();

			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		} else if (command.contentEquals("/loginForm.bo")) {// 로그인
			action = new LoginFormAction();

			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		} else if (command.contentEquals("/myPageForm.bo")) {// 계정 정보
			action = new myPageFormAction();

			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		} else if (command.contentEquals("/updatePasswdForm.bo")) {// 비밀번호 변경
			action = new updatePasswdFormAction();

			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		} else if (command.contentEquals("/indexForm.bo")) {// 메인 페이지
			action = new indexFormAction();

			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		} else if (command.contentEquals("/randomForm.bo")) {// 랜덤 추천 페이지
			action = new randomFormAction();

			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		} else if (command.contentEquals("/tripForm.bo")) {// 여행지 페이지
			action = new tripFormAction();

			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		} else if (command.contentEquals("/tripContentForm.bo")) {// 여행지 내용 페이지
			action = new randomFormAction();

			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}else if (command.contentEquals("/fsvForm.bo")) {// 축제 페이지
			action = new fsvFormAction();

			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		} else if (command.contentEquals("/tripContentForm.bo")) {// 축제 내용 페이지
			action = new randomFormAction();

			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}

		// 3. 포워딩
		if (forward != null)

		{
			// 요청처리가 제대로 되었으면
			if (forward.isRedirect()) {
				response.sendRedirect(forward.getUrl());
			} else {
				RequestDispatcher dispatcher = request.getRequestDispatcher(forward.getUrl());
				dispatcher.forward(request, response);
			}
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("UTF-8");
		doGet(request, response);
	}

}
