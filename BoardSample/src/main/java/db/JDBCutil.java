package db;

import java.sql.*;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class JDBCutil {
	/*static {
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}*/

	/*public static Connection getConnection() {
		Connection con = null;
		try {
			con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE", "java", "java");
			con.setAutoCommit(false);// 트랜잭션 false 설정
			System.out.println("연결 성공");
		} catch (SQLException e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return con;
	
	}*/
	
	public static Connection getConnection(){
		Connection con = null;
		try {
			Context initCtx = new InitialContext();
			//톰캣자체의 컨텍스트 
			Context envCtx = (Context) initCtx.lookup("java:comp/env");
			//서버 컨테이너인 Resource 정의에 대한 컨텍스트
			DataSource ds = (DataSource)envCtx.lookup("jdbc/jsptest");
			
			con = ds.getConnection();
			con.setAutoCommit(false);
			
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return con;
	}

	public static void close(Connection con) {// 커넥션 메소드 클로즈
		try {
			con.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	public static void close(Statement stmt) {// 커넥션 메소드 클로즈
		try {
			stmt.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	public static void close(ResultSet rs) {// 커넥션 메소드 클로즈
		try {
			rs.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	// 트랜잭션 처리
	public static void commit(Connection con) {
		try {
			con.commit();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	public static void rollback(Connection con) {
		try {
			con.rollback();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
