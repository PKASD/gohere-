package service;
import static db.JDBCutil.*;

import java.sql.Connection;

import dao.BoardDAO;
import vo.BoardVO;
public class BoardContentServuce {

	public BoardVO getArticle(int num) throws Exception {
		// TODO Auto-generated method stub
		Connection con = getConnection();
		BoardDAO boardDAO = BoardDAO.getInstace();
		boardDAO.setConnection(con);
		
		BoardVO article = boardDAO.selectArticle(num);
		
		close(con);
		
		return article;
	}

}
