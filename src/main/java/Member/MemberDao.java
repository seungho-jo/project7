package Member;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import ceo.DBConnection;
import ceo.Member;

public class MemberDao {

	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;

	// 로그인
	public Member login(String id, String pass, String checked) {
		Member m1 = new Member();
		try {
			String sql = "";
			if(checked.equals("사장님")) {
				sql = "select * from MEMBER a, CEO b where a.id=? and a.pass = ? and a.id = b.id"; // 아이디 유무
				conn = DBConnection.getConnection();
				pstmt = conn.prepareStatement(sql);
				conn.setAutoCommit(false);
				pstmt.setString(1, id);
				pstmt.setString(2, pass);
				rs = pstmt.executeQuery();
				if (rs.next()) {
					m1.setId(rs.getString("id"));
					m1.setPass(rs.getString("pass"));
					m1.setName(rs.getString("name"));
					m1.setCeo_ckeck(rs.getString("ceo_check"));
					m1.setCeo_num(rs.getLong("ceo_num"));
					m1.setBs_name(rs.getString("bs_name"));
				}
			}else {
				sql = "select * from Member where id = ? and pass = ?";
				conn = DBConnection.getConnection();
				pstmt = conn.prepareStatement(sql);
				conn.setAutoCommit(false);
				pstmt.setString(1, id);
				pstmt.setString(2, pass);
				rs = pstmt.executeQuery();
				if (rs.next()) {
					m1.setId(rs.getString("id"));
					m1.setPass(rs.getString("pass"));
					m1.setName(rs.getString("name"));
					m1.setCeo_ckeck(rs.getString("ceo_check"));
				}
			}
		} catch (SQLException e1) {
			System.out.println("예외발생");
			e1.printStackTrace();
		} finally {
			try {
				if (rs != null) {
					rs.close();
				}
				if (pstmt != null) {
					pstmt.close();
				}
				if (conn != null) {
					conn.close();
				}
			} catch (Exception e1) {
				throw new RuntimeException(e1.getMessage());
			}
		}
		return m1;
	}

	// 회원가입
	public boolean register(Member m) {
		boolean isTrue = false;
		try {
			String sql = "INSERT ALL\r\n" + "INTO MEMBER values(?,?,?,?)\r\n" + "INTO ceo values(?,?,?)\r\n"
					+ "SELECT * FROM dual";
			conn = DBConnection.getConnection();
			conn.setAutoCommit(false);
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, m.getId());
			pstmt.setString(2, m.getPass());
			pstmt.setString(3, m.getName());
			pstmt.setString(4, m.getCeo_ckeck());
			pstmt.setLong(5, m.getCeo_num());
			pstmt.setString(6, m.getBs_name());
			pstmt.setString(7, m.getId());
			pstmt.executeUpdate();
			conn.commit();
			isTrue = true;
		} catch (SQLException e) {
			e.printStackTrace();
			try {
				conn.rollback();
			} catch (SQLException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
		} finally {
			try {
				if (pstmt != null)
					pstmt.close();
				if (conn != null)
					conn.close();
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return isTrue;
	}

	// 중복된 아이디 확인
	public boolean crtId(Member m) {
		boolean flag = false;
		try {
			String sql = "SELECT * FROM member where id = ?";
			conn = DBConnection.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, m.getId());
			rs = pstmt.executeQuery();
			flag = rs.next(); // true면 중복, false면 중복되는 정보 없음
		} catch (SQLException e1) {
			System.out.println("예외발생");
			e1.printStackTrace();
		} finally {
			try {
				if (rs != null) {
					rs.close();
				}
				if (pstmt != null) {
					pstmt.close();
				}
				if (conn != null) {
					conn.close();
				}
			} catch (Exception e1) {
				throw new RuntimeException(e1.getMessage());
			}
		}
		return flag;
	}

}
