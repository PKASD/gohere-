package service;

import static db.JDBCutil.*;

import java.sql.Connection;
import java.util.List;

import dao.BoardDAO;
import vo.ReviewBoardVO;

public class ReviewBoardListService {

	public int getArticleCount() throws Exception {
		// TODO Auto-generated method stub
		Connection con = getConnection();
		BoardDAO boardDAO = BoardDAO.getInstace();
		boardDAO.setConnection(con);

		int articleCount = boardDAO.selectArticleCountReview();
		
		close(con);
		
		return articleCount;
	}

	public List<ReviewBoardVO> getArticles(int startRow, int pageSize) throws Exception {
		// TODO Auto-generated method stub
		Connection con = getConnection();
		BoardDAO boardDAO = BoardDAO.getInstace();
		boardDAO.setConnection(con);
		
		List<ReviewBoardVO> articleList = boardDAO.selectArticleListReview(startRow, pageSize);
		
		close(con);

		return articleList;
	}

}
