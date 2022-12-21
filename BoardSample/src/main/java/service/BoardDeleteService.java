package service;

import static db.JDBCutil.*;

import java.sql.Connection;

import dao.BoardDAO;

public class BoardDeleteService {

	public boolean removeArticle(int num, String passwd) {
		// TODO Auto-generated method stub
		boolean removeSuccess = false;

		Connection con = getConnection();
		BoardDAO boardDAO = BoardDAO.getInstace();
		boardDAO.setConnection(con);

		int deleteCount = boardDAO.deleteArticle(num, passwd);
		if (deleteCount > 0) {
			commit(con);
			removeSuccess = true;
		} else {
			rollback(con);
		}
		return removeSuccess;
	}

}
