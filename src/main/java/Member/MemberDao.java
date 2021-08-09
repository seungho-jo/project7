package Member;

import java.sql.Connection;



import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Date;
import Member.DBConnection; 

public class MemberDao {

	Connection conn = null; 
	PreparedStatement pstm = null; 
	ResultSet rs = null;  
	
	
	 // 로그인   
	   public boolean login(Member m){
	      boolean flag = false;
	      try {
	    	  
	    	  conn = DBConnection.getConnection();
				String sql = "select * from scrollbook_mem where id=? and pass = ?";	// 아이디 유무
				pstm = conn.prepareStatement(sql);
				conn.setAutoCommit(false);
				pstm.setString(1, m.getEmail());
				pstm.setString(2, m.getPass());
				rs = pstm.executeQuery();
				if(rs.next()) {
					sql = "SELECT * FROM SCROLLBOOK_MEM WHERE ID = ? AND PASS = ?";
					conn = DBConnection.getConnection();
					pstm = conn.prepareStatement(sql);
					pstm.setString(1, m.getEmail());
					pstm.setString(2, m.getPass());
					rs = pstm.executeQuery();
					flag = rs.next(); //true면 로그인 성공, false 면 로그인 실패
				} 
	      }catch (SQLException e1) {
	         System.out.println("예외발생");
	         e1.printStackTrace();
	      } finally{
	         try {
	            if (rs != null) {
	               rs.close();
	            }
	            if (pstm != null) {
	               pstm.close();
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
	
	// 회원가입
		 public boolean register(Member m) {
			  String[] ids = m.getEmail().split("@");
		      boolean flag = false;
		      try {
		         String sql = "insert into member(id,pass,name)\r\n"
		               + "values(?,?,?,?,?)";
		         conn = DBConnection.getConnection();
		         conn.setAutoCommit(false);
		         pstm = conn.prepareStatement(sql);
		         pstm.setString(1, m.getEmail());
		         pstm.setString(2, m.getPass());
		         pstm.setString(3, m.getName());
		         if(pstm.executeUpdate() == 1) { flag = true;}
		         sql = "create sequence seq_"+ids[0]+
		        		 " increment by 1 start with 1 minvalue 1 maxvalue 999999";
		         conn.setAutoCommit(false);
		         pstm = conn.prepareStatement(sql);
		         pstm.executeUpdate();
		      } catch (SQLException e1) {
		         System.out.println("예외발생");
		         e1.printStackTrace();
		      } finally{
		         try {
		            if (rs != null) {
		               rs.close();
		            }
		            if (pstm != null) {
		               pstm.close();
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
		 
		 // 중복된 아이디 확인 
		 public boolean crtId(Member m){
			   boolean flag = false;
			   try {
				   String sql = "SELECT * FROM member where id = ?";
				   conn = DBConnection.getConnection();
				   pstm = conn.prepareStatement(sql);
				   pstm.setString(1, m.getEmail());
				   rs = pstm.executeQuery();
				   flag = rs.next(); //true면 중복, false면 중복되는 정보 없음
			   } catch (SQLException e1) {
				   System.out.println("예외발생");
				   e1.printStackTrace();
			   } finally{
				   try {
					   if (rs != null) {
						   rs.close();
					   }
					   if (pstm != null) {
						   pstm.close();
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
