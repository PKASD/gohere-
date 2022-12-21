package service;

import static db.JDBCutil.*;

import java.sql.Connection;

import dao.BoardDAO;
import vo.BoardVO;

public class asdService {

	public boolean asdd() {
		// TODO Auto-generated method stub
		Connection con = getConnection();
		BoardDAO boardDAO = BoardDAO.getInstace();
		boardDAO.setConnection(con);
		
		close(con);
		
		return true;
	}

}
