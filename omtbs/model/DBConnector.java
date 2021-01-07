package omtbs.model;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnector {
	private static Connection con=null;
	static{
		try {
			Class.forName("com.mysql.jdbc.Driver");
			String url="jdbc:mysql://localhost/omtbs";
			String username="root";
			String password="aforapple";
			con=DriverManager.getConnection(url,username,password);
		}catch(Exception e) {
			e.printStackTrace();
		}
	}
	public static Connection getDBConnection() {
		return con;
	}
}
