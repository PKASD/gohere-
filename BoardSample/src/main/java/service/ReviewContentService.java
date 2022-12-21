package service;

import static db.JDBCutil.close;
import static db.JDBCutil.getConnection;

import java.sql.Connection;

import dao.BoardDAO;
import vo.ReviewBoardVO;

public class ReviewContentService {

	public ReviewBoardVO getArticle(int num) {
		// TODO Auto-generated method stub
		Connection con = getConnection();
		BoardDAO boardDAO = BoardDAO.getInstace();
		boardDAO.setConnection(con);
		
		ReviewBoardVO article = boardDAO.selectArticle(num);
		
		close(con);
		
		return article;
	}

}
