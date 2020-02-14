package Beans;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class LogonDBBean {
	
	
	public static LogonDBBean instance = new LogonDBBean();

	public static LogonDBBean getInstance() {
		
		return instance;
	}
	
	public LogonDBBean() { }
	
	@SuppressWarnings("unused")
	private Connection getConnection() throws Exception {
		Connection con = null;
		
		String url="jdbc:oracle:thin:@localhost:1521/xe";
		String dbid="spring";
		String dbPass="1234";
		
		Class.forName("oracle.jdbc.driver.OracleDriver");
		con = DriverManager.getConnection(url, dbid, dbPass);
				
		return con;		
	}
	
	
	//회원 가입 처리 부분
	public void insertMember(LogonDataBean member) 
		    throws Exception {
		        Connection conn = null;
		        PreparedStatement pstmt = null;
		        
		        try {
		            conn = getConnection();
		            
		            pstmt = conn.prepareStatement(
		            	"insert into member values (?,?,?,?)");
		            pstmt.setString(1, member.getId());
		            pstmt.setString(2, member.getPasswd());
		            pstmt.setString(3, member.getName());
					pstmt.setTimestamp(4, member.getReg_date());
		            pstmt.executeUpdate();
		        } catch(Exception ex) {
		            ex.printStackTrace();
		        } finally {
		            if (pstmt != null) 
		            	try { 
		            	pstmt.close(); 
		            	} catch(SQLException ex) {}
		            if (conn != null) 
		            	try { conn.close(); 
		            	} catch(SQLException ex) {}
		        }
		    }
		
	
	//아이디와 패스워드 처리 부분.
	
	public int userCheck(String id, String passwd) throws Exception {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String dbpasswd = "";
		int x = -1;//처음에는 아무런 데이터가 존재하지 않으므로...
		
		try {
			con = getConnection();
		
		pstmt = con.prepareStatement("select password from member where id= ?");
		pstmt.setString(1, id);
		
		rs = pstmt.executeQuery();
		
		if(rs.next()) {
			dbpasswd = rs.getString("password");
			
			if(dbpasswd.equals(passwd)) 
				x = 1;//패스워드에 대한 인증 성공
				else 
					x = 0;//패스워드에 대한 인증 실패
			} else 
				x = -1;//해당 아이디가 없음.			
		}catch(Exception e ) {
			System.out.println("PW process failed");
		}finally {
			if(rs != null) {
				rs.close();
			if(pstmt != null) {
				pstmt.close();
			if(con != null) {
				con.close();
					}
				}
			}
		}
			
		return x;
	}
	
		
}
