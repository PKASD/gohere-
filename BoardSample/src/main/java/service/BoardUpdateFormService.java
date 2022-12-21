package service;

import static db.JDBCutil.*;

import java.sql.Connection;

import dao.BoardDAO;
import vo.BoardVO;

public class BoardUpdateFormService {

	public BoardVO getUpdateArticle(int num) {
		// TODO Auto-generated method stub
		Connection con = getConnection();
		BoardDAO boardDAO = BoardDAO.getInstace();
		boardDAO.setConnection(con);

		BoardVO article = boardDAO.selectUpdateArticle(num);

		close(con);

		return article;
	}

}
