package dao;

import static db.JDBCutil.*;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import vo.BoardVO;
import vo.ReviewBoardVO;

public class BoardDAO {
	private Connection con;
	// singleton 패턴
	// 객체를 하나만 생성해서 공유하는 패턴
	// DAO는 거의 싱글톤 패턴
	// DBMS로 SQL 문으로 전송
	private static BoardDAO boardDAO;

	private BoardDAO() {
		// TODO Auto-generated constructor stub
	}

	public static BoardDAO getInstace() {
		if (boardDAO == null) {
			// 처음 호출 되었으면
			boardDAO = new BoardDAO();
		}
		return boardDAO;
	}

	public void setConnection(Connection con) {
		// TODO Auto-generated method stub
		this.con = con;
	}

	public int insertArticle(BoardVO article) throws Exception {
		// TODO Auto-generated method stub
		int insertCount = 0;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		int num = article.getNum();
		int ref = article.getRef();
		int re_step = article.getRe_step();
		int re_level = article.getRe_level();
		int number = 0;
		// 새로운 관련글 번호를 저장할 변수
		String sql = "";

		try {
			pstmt = con.prepareStatement("select max(num) from board");
			rs = pstmt.executeQuery();

			if (rs.next()) // 기존에 작성된 글이 있으면, 지금 작성한 글이 첫번째 글이 아니면
				number = rs.getInt(1) + 1;// 지금까지 사용되지 않은 새로운 관련글 번호를 얻는 부분
			else
				number = 1;

			if (num != 0) // 지금 작성한 글이 답변글이면
			{
				sql = "update board set re_step=re_step+1 " + "where ref= ? and re_step> ?";
				pstmt = con.prepareStatement(sql);
				pstmt.setInt(1, ref);
				pstmt.setInt(2, re_step);
				pstmt.executeUpdate();
				re_step = re_step + 1;
				re_level = re_level + 1;
			} else {
				ref = number;
				re_step = 0;
				re_level = 0;
			}
			// 쿼리를 작성
			sql = "insert into board" + "(num,writer,email,subject,passwd,reg_date,";
			sql += "ref,re_step,re_level,content,ip) " + "values(board_seq.nextval,?,?,?,?,?,?,?,?,?,?)";

			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, article.getWriter());
			pstmt.setString(2, article.getEmail());
			pstmt.setString(3, article.getSubject());
			pstmt.setString(4, article.getPasswd());
			pstmt.setTimestamp(5, article.getReg_date());
			pstmt.setInt(6, ref);
			pstmt.setInt(7, re_step);
			pstmt.setInt(8, re_level);
			pstmt.setString(9, article.getContent());
			pstmt.setString(10, article.getIp());

			insertCount = pstmt.executeUpdate();
		} catch (Exception ex) {
			ex.printStackTrace();
		} finally {
			close(rs);
			close(pstmt);
		}
		return insertCount;
	}

	public int insertArticleReview(ReviewBoardVO article) throws Exception {
		// TODO Auto-generated method stub
		int insertCount = 0;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		// 새로운 관련글 번호를 저장할 변수
		String sql = "insert into reviewboard(num,writer,subject,reg_date,readCount,recommend,content,reviewImage)" 
		+ " values(board_seq.nextval,?,?,?,?,?,?,?)";

		try {
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, article.getWriter());
			pstmt.setString(2, article.getSubject());
			pstmt.setTimestamp(3, article.getReg_date());
			pstmt.setString(4, article.getContent());
			pstmt.setInt(5, 0);
			pstmt.setInt(6, 0);
			pstmt.setString(7, article.getReviewImage());

			insertCount = pstmt.executeUpdate();

		} catch (Exception ex) {
			ex.printStackTrace();
		} finally {
			close(rs);
			close(pstmt);
		}
		return insertCount;
	}

	public int selectArticleCount() throws Exception {
		// TODO Auto-generated method stub
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		int articleCount = 0;

		try {
			pstmt = con.prepareStatement("select count(*) from board");
			rs = pstmt.executeQuery();

			if (rs.next()) {
				articleCount = rs.getInt(1);
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		} finally {
			close(con);
			close(pstmt);
		}
		return articleCount;
	}

	public List<BoardVO> selectArticleList(int startRow, int pageSize) throws Exception {
		// TODO Auto-generated method stub
		ResultSet rs = null;
		List<BoardVO> articleList = null;
		PreparedStatement pstmt = null;
		try {
			pstmt = con.prepareStatement("select list2.* from(select rownum r, list1.*  " + "from(select *  from board order by ref desc, re_step asc)list1) " + "list2 where r between ? and ?");
			pstmt.setInt(1, startRow);
			pstmt.setInt(2, startRow + pageSize - 1);
			rs = pstmt.executeQuery();

			if (rs.next()) {
				int i = 0;
				articleList = new ArrayList<BoardVO>();
				BoardVO article = null;
				do {
					article = new BoardVO();
					article.setNum(rs.getInt("num"));
					article.setWriter(rs.getString("writer"));
					article.setEmail(rs.getString("email"));
					article.setSubject(rs.getString("subject"));
					article.setPasswd(rs.getString("passwd"));
					article.setReg_date(rs.getTimestamp("reg_date"));
					article.setReadcount(rs.getInt("readcount"));
					article.setRef(rs.getInt("ref"));
					article.setRe_step(rs.getInt("re_step"));
					article.setRe_level(rs.getInt("re_level"));
					article.setContent(rs.getString("content"));
					article.setIp(rs.getString("ip"));

					articleList.add(article);

				} while (rs.next());
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		} finally {
			close(rs);
			close(pstmt);
		}
		return articleList;
	}

	public int selectArticleCountReview() throws Exception {
		// TODO Auto-generated method stub
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		int articleCount = 0;

		try {
			pstmt = con.prepareStatement("select count(*) from reviewboard");
			rs = pstmt.executeQuery();

			if (rs.next()) {
				articleCount = rs.getInt(1);
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		} finally {
			close(con);
			close(pstmt);
		}
		return articleCount;
	}

	public List<ReviewBoardVO> selectArticleListReview(int startRow, int pageSize) throws Exception {
		// TODO Auto-generated method stub
		ResultSet rs = null;
		List<ReviewBoardVO> articleList = null;
		PreparedStatement pstmt = null;
		try {
			pstmt = con.prepareStatement("select list2.* from(select rownum r, list1.* " + "from(select *  from reviewBoard order by num desc) list1) " + "list2 where r between ? and ?");
			pstmt.setInt(1, startRow);
			pstmt.setInt(2, startRow + pageSize - 1);
			rs = pstmt.executeQuery();

			if (rs.next()) {
				int i = 0;
				articleList = new ArrayList<ReviewBoardVO>();
				ReviewBoardVO article = null;
				do {
					article = new ReviewBoardVO();
					article.setContent(rs.getString("content"));
					article.setNum(rs.getInt("num"));
					article.setRecommend(rs.getInt("recommend"));
					article.setReg_date(rs.getTimestamp("reg_date"));
					article.setReviewImage(rs.getString("reviewImage"));
					article.setSubject(rs.getString("subject"));
					article.setWriter(rs.getString("writer"));

					articleList.add(article);

				} while (rs.next());
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		} finally {
			close(rs);
			close(pstmt);
		}
		return articleList;
	}

	public BoardVO selectArticle(int num) throws Exception {
		// TODO Auto-generated method stub
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		BoardVO article = null;
		try {

			pstmt = con.prepareStatement("update board set readcount=readcount+1 where num = ?");
			pstmt.setInt(1, num);

			int updateCount = pstmt.executeUpdate();
			if (updateCount > 0) {
				commit(con);
			} else {
				rollback(con);
			}

			pstmt = con.prepareStatement("select * from board where num = ?");
			pstmt.setInt(1, num);
			rs = pstmt.executeQuery();

			if (rs.next()) {
				article = new BoardVO();
				article.setNum(rs.getInt("num"));
				article.setWriter(rs.getString("writer"));
				article.setEmail(rs.getString("email"));
				article.setSubject(rs.getString("subject"));
				article.setPasswd(rs.getString("passwd"));
				article.setReg_date(rs.getTimestamp("reg_date"));
				article.setReadcount(rs.getInt("readcount"));
				article.setRef(rs.getInt("ref"));
				article.setRe_step(rs.getInt("re_step"));
				article.setRe_level(rs.getInt("re_level"));
				article.setContent(rs.getString("content"));
				article.setIp(rs.getString("ip"));
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		} finally {
			close(rs);
			close(pstmt);
		}
		return article;
	}

	public BoardVO selectUpdateArticle(int num) {
		// TODO Auto-generated method stub
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		BoardVO article = null;
		try {
			pstmt = con.prepareStatement("select * from board where num = ?");
			pstmt.setInt(1, num);
			rs = pstmt.executeQuery();

			if (rs.next()) {
				article = new BoardVO();
				article.setNum(rs.getInt("num"));
				article.setWriter(rs.getString("writer"));
				article.setEmail(rs.getString("email"));
				article.setSubject(rs.getString("subject"));
				article.setPasswd(rs.getString("passwd"));
				article.setReg_date(rs.getTimestamp("reg_date"));
				article.setReadcount(rs.getInt("readcount"));
				article.setRef(rs.getInt("ref"));
				article.setRe_step(rs.getInt("re_step"));
				article.setRe_level(rs.getInt("re_level"));
				article.setContent(rs.getString("content"));
				article.setIp(rs.getString("ip"));
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		} finally {
			close(rs);
			close(pstmt);
		}
		return article;
	}

	public int updateArticle(BoardVO boardVO) throws Exception {
		// TODO Auto-generated method stub

		PreparedStatement pstmt = null;
		ResultSet rs = null;

		String dbpasswd = "";
		String sql = "";
		int updateCount = -1;// 업데이트 된 레코드 갯수
		try {
			pstmt = con.prepareStatement("select passwd from board where num = ?");
			pstmt.setInt(1, boardVO.getNum());
			rs = pstmt.executeQuery();

			if (rs.next()) {
				dbpasswd = rs.getString("passwd");
				if (dbpasswd.equals(boardVO.getPasswd())) {
					sql = "update board set writer=?,email=?,subject=?,passwd=?";
					sql += ",content=? where num=?";
					pstmt = con.prepareStatement(sql);

					pstmt.setString(1, boardVO.getWriter());
					pstmt.setString(2, boardVO.getEmail());
					pstmt.setString(3, boardVO.getSubject());
					pstmt.setString(4, boardVO.getPasswd());
					pstmt.setString(5, boardVO.getContent());
					pstmt.setInt(6, boardVO.getNum());
					updateCount = pstmt.executeUpdate();

				}
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		} finally {
			close(rs);
			close(pstmt);
		}
		return updateCount;
	}

	public int deleteArticle(int num, String passwd) {
		// TODO Auto-generated method stub
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String dbpasswd = "";
		int deleteCount = -1;
		try {

			pstmt = con.prepareStatement("select passwd from board where num = ?");
			pstmt.setInt(1, num);
			rs = pstmt.executeQuery();

			if (rs.next()) {
				dbpasswd = rs.getString("passwd");
				if (dbpasswd.equals(passwd)) {
					pstmt = con.prepareStatement("delete from board where num=?");
					pstmt.setInt(1, num);
					deleteCount = pstmt.executeUpdate();
				}
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		} finally {
			close(rs);
			close(pstmt);
		}
		return deleteCount;
	}

}