package Movie;

import Connection.DBCon;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

public class MovieDBUtil {
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	
	public static ArrayList<Movie> getMvList(){
		ArrayList<Movie> mv = new ArrayList<Movie>();
		
		try {
			con = DBCon.getConnection();
			stmt = con.createStatement();
			
			//sql
			String sql = "Select * from Movie";
			
			rs = stmt.executeQuery(sql);
			
			while(rs.next()) {
				String mId = rs.getString(1);
				String mName = rs.getString(2);
				String type = rs.getString(3);
				String date = rs.getString(4);
				String cId = rs.getString(5);
				
				
				Movie m = new Movie(mId,mName,type,date,cId);
				
				mv.add(m);
			}
			
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return mv;
	}
}
