package Beans;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

//Java Bean
public class logonDbBean {
	
	//default constructor
	logonDbBean() {
		
	}
	
	public static logonDbBean instance = new logonDbBean();
	
	public static logonDbBean getinstance() {
		return instance;
	}
	
	//import java.sql package
	@SuppressWarnings("unused")
	private Connection getConnection() throws ClassNotFoundException, SQLException {
		
		Connection con = null;
		
		String url = "jdbc:oracle:thin:@localhost:1521:xe";
		String dbid="spring";
		String dbpw="1234";
		
		Class.forName("oracle.jdbc.driver.oracleDriver");
		con = DriverManager.getConnection(url, dbid, dbpw);
				
		return con;
	}
	
}
