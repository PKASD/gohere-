package service;

import static db.JDBCutil.*;

import java.sql.Connection;

import dao.BoardDAO;
import vo.BoardVO;

public class BoardWriteProService {

	public boolean writeArticle(BoardVO boardVO) throws Exception {
		// TODO Auto-generated method stub

		boolean writeSuccess = false;

		Connection con = getConnection();
		BoardDAO boardDAO = BoardDAO.getInstace();
		boardDAO.setConnection(con);
		
		int insertCount = boardDAO.insertArticle(boardVO);

		if (insertCount > 0) {
			commit(con);
			writeSuccess = true;
		} else {
			rollback(con);
		}

		return writeSuccess;
	}

}
