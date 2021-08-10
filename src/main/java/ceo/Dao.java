package ceo;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class Dao {
	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	// 회원가입
	public boolean register(Member m) {
		boolean isTrue = false;
		try {
			String sql = "INSERT ALL\r\n"
					+ "INTO MEMBER values(?,?,?,?)\r\n"
					+ "INTO ceo values(?,?,?)\r\n"
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
		}catch(SQLException e) {
			e.printStackTrace();
			try {
				conn.rollback();
			} catch (SQLException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
		}finally {
			try {
				if(pstmt!=null) pstmt.close();
				if(conn!=null) conn.close();
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return isTrue;
	}
	// 가게정보 조회
	public Shop shopInfo(String id) {
		Shop sp = new Shop();
		try {
			String sql = "SELECT a.*,opentime,endtime,kind,ceo_num,bs_name  \r\n"
					+ "FROM shop a,BUSINESS_TIME b, CATEGORY c, ceo d \r\n"
					+ "WHERE a.SHOP_CODE = b.SHOP_CODE \r\n"
					+ "AND a.SHOP_CODE = c.SHOP_CODE \r\n"
					+ "AND d.id = a.id\r\n"
					+ "AND a.id = ?";
			conn = DBConnection.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);			
			rs = pstmt.executeQuery();
			while(rs.next()) {
				sp.setShop_code(rs.getString("shop_code"));
				sp.setShop_name(rs.getString("shop_name"));
				sp.setShop_zipcode(rs.getString("shop_zipcode"));
				sp.setShop_addr(rs.getString("shop_addr"));
				sp.setShop_phone(rs.getString("shop_phone"));
				sp.setId(rs.getString("id"));
				sp.setOpenTime(rs.getString("openTime"));
				sp.setEndTime(rs.getString("endTime"));
				sp.setCategory(rs.getString("kind"));
				sp.setCeo_num(rs.getLong("ceo_num"));
				sp.setBs_name(rs.getString("bs_name"));
			}		
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			try {
				if(rs!=null) rs.close();
				if(pstmt!=null) pstmt.close();
				if(conn!=null) conn.close();
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		
		return sp;
	}
	// 가게 등록
	public void shop_add(Shop s) {
		try {
			String sql = "INSERT ALL \r\n"
					+ "INTO shop values(?,?,?,?,?,?)\r\n"
					+ "INTO BUSINESS_TIME values(?,?,?)\r\n"
					+ "INTO category values(?,?)\r\n"
					+ "SELECT * FROM dual";
			conn = DBConnection.getConnection();
			conn.setAutoCommit(false);
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, s.getShop_code());
			pstmt.setString(2, s.getShop_name());
			pstmt.setString(3, s.getShop_zipcode());
			pstmt.setString(4, s.getShop_addr());
			pstmt.setString(5, s.getShop_phone());
			pstmt.setString(6, s.getId());
			pstmt.setString(7, s.getShop_code());
			pstmt.setString(8, s.getOpenTime());
			pstmt.setString(9, s.getEndTime());
			pstmt.setString(10, s.getShop_code());
			pstmt.setString(11, s.getCategory());
			pstmt.executeUpdate();
			conn.commit();
		}catch(SQLException e) {
			e.printStackTrace();
			try {
				conn.rollback();
			} catch (SQLException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
		}finally {
			try {
				if(pstmt!=null) pstmt.close();
				if(conn!=null) conn.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	}
	// 가게 삭제
	public String shop_del(String id,String pass) {
		String del = "";
		String shop_code = "";
		try {
			String sql = "select * from member where id = ? and pass = ?";
			conn = DBConnection.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			pstmt.setString(2, pass);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				sql = "select * from shop where id = ?";
				conn = DBConnection.getConnection();
				pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, id);
				rs = pstmt.executeQuery();
				if(rs.next()) {
					shop_code = rs.getString("shop_code");
					sql = "delete from shop where shop_code = ?";
					conn = DBConnection.getConnection();
					conn.setAutoCommit(false);
					pstmt = conn.prepareStatement(sql);
					pstmt.setString(1, shop_code);
					pstmt.executeUpdate();
					conn.commit();
					sql = "delete from business_time where shop_code = ?";
					conn = DBConnection.getConnection();
					conn.setAutoCommit(false);
					pstmt = conn.prepareStatement(sql);
					pstmt.setString(1, shop_code);
					pstmt.executeUpdate();
					conn.commit();
					sql = "delete from category where shop_code = ?";
					conn = DBConnection.getConnection();
					conn.setAutoCommit(false);
					pstmt = conn.prepareStatement(sql);
					pstmt.setString(1, shop_code);
					pstmt.executeUpdate();
					conn.commit();
					del = "삭제완료하였습니다";
				}else {
					del = "가게를 등록해주세요";
				}
			}else {
				del = "비밀번호를 확인해주세요";
			}
		}catch(SQLException e) {
			e.printStackTrace();
			try {
				conn.rollback();
			} catch (SQLException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
		}finally {
			try {
				if(rs!=null) rs.close();
				if(pstmt!=null) pstmt.close();
				if(conn!=null) conn.close();
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return del;
	}
}
