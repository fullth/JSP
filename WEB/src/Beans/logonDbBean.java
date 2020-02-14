package Beans;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

//Java Bean
public class logonDbBean {
	
	public static logonDbBean instance = new logonDbBean();
	
	public static logonDbBean getinstance() {
		return instance;
	}
	
	//default constructor
	logonDbBean() {}
		
	//import java.sql package
	@SuppressWarnings("unused")
	private Connection getConnection() throws ClassNotFoundException, SQLException {
		
		Connection con = null;
		
		String url = "jdbc:oracle:thin:@localhost:1521:xe";
		String dbid="spring";
		String dbpw="1234";
		
		Class.forName("oracle.jdbc.driver.OracleDriver");
		con = DriverManager.getConnection(url, dbid, dbpw);
				
		return con;
	}
	
	public int userCheck(String id, String password) throws SQLException, ClassNotFoundException {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String dbpw = "";
		
		int x = -1 ;
		
		try {		
		con = getConnection();
		
		//prepared statement
		pstmt = con.prepareStatement("SELECT password FROM member WHERE id= ?");
		pstmt.setString(1, id);
		
		//result set
		rs = pstmt.executeQuery();
		
		if(rs.next()) {
			dbpw = rs.getString("password");
			if(dbpw.equals(dbpw)) 
				x = 1; //success
			else
				x = 0; //failed
		} else {
			x = -1;
		} } catch (Exception e) {
				System.out.println("Ocuured exception");
		} finally { //finally process
			if (rs != null) {
				rs.close();
				if( pstmt != null ) {
					pstmt.close();
					if( con != null ) {
						con.close();
					}
				}
			}
		}
		return x;
	}
	
}
