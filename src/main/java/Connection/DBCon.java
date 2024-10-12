package Connection;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBCon {
	private static String url = "jdbc:mysql://localhost:3306/movie_tv";
	private static String user="root";
	private static String psw="";
	private static Connection con; 
	
	public static Connection getConnection() {
		try {
			Class.forName("com.mysql.jdbc.Driver");
			
			con = DriverManager.getConnection(url,user,psw);
			
		}catch(Exception e) {
		System.out.println("DB connection is not success");
		}
		return con;
	}

}