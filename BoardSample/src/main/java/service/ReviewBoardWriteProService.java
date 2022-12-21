package service;

import static db.JDBCutil.commit;
import static db.JDBCutil.getConnection;
import static db.JDBCutil.rollback;

import java.sql.Connection;

import dao.BoardDAO;
import vo.ReviewBoardVO;

public class ReviewBoardWriteProService {

	public boolean writeArticle(ReviewBoardVO reviewBoardVO) throws Exception {
		// TODO Auto-generated method stub

		boolean writeSuccess = false;

		Connection con = getConnection();
		BoardDAO boardDAO = BoardDAO.getInstace();
		boardDAO.setConnection(con);
		
		int insertCount = boardDAO.insertArticleReview(reviewBoardVO);

		if (insertCount > 0) {
			commit(con);
			writeSuccess = true;
		} else {
			rollback(con);
		}

		return writeSuccess;
	}
	
}
