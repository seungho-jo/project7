package main_content;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class CategoryDao {
	Connection conn = null; 
	PreparedStatement pstmt = null; 
	ResultSet rs = null;
	
	// 배달할 메뉴 카테고리(대분류) 보여줌
	public ArrayList<Category> showCategory(){
		ArrayList<Category> clist = new ArrayList<Category>();
		try {
			String sql = "SELECT DISTINCT kind FROM CATEGORY";
			conn = DBConnection.getConnection();
			conn.setAutoCommit(false);
	        pstmt = conn.prepareStatement(sql);
	        rs = pstmt.executeQuery();
	        while(rs.next()) {
	        	String kind = rs.getString("kind");
	        	Category c = new Category(kind);
	        	clist.add(c);
	        }
		}catch (SQLException e1) {
	         System.out.println("예외발생");
	         e1.printStackTrace();
	      } finally{
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
		return clist;
	}
	public ArrayList<Shop> showMenuCategory(String category){
		ArrayList<Shop> slist = new ArrayList<Shop>();
		try {
			if(category.equals("전체보기")){
				String sql = "SELECT shop_name FROM shop s, category c\r\n"
						+ "WHERE s.SHOP_CODE = c.SHOP_CODE\r\n"
						+ "ORDER BY SHOP_NAME";
				conn = DBConnection.getConnection();
				conn.setAutoCommit(false);
		        pstmt = conn.prepareStatement(sql);
		        rs = pstmt.executeQuery();
		        while(rs.next()) {
		        	String shopName = rs.getString("shop_name");
		        	Shop mc = new Shop(shopName);
		        	slist.add(mc);
		        }
			}else {
				String sql = "SELECT shop_name FROM shop s, category c\r\n"
						+ "WHERE s.SHOP_CODE = c.SHOP_CODE \r\n"
						+ "AND c.KIND = ?"
						+ "ORDER BY SHOP_NAME";
				conn = DBConnection.getConnection();
				conn.setAutoCommit(false);
		        pstmt = conn.prepareStatement(sql);
		        pstmt.setString(1, category);
		        rs = pstmt.executeQuery();
		        while(rs.next()) {
		        	String shopName = rs.getString("shop_name");
		        	Shop mc = new Shop(shopName);
		        	slist.add(mc);
		        }
			}
			
		}catch (SQLException e1) {
	         System.out.println("예외발생");
	         e1.printStackTrace();
	      } finally{
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
		return slist;
	}
}
