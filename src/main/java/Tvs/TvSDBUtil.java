package Tvs;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import Connection.DBCon;

public class TvSDBUtil {
	public static Connection con = null;
	public static Statement stmt = null;
	public static ResultSet rs = null;
	
	public static ArrayList<TvS> getTv(){
		ArrayList<TvS> tv = new ArrayList<>();
		
		try {
			con = DBCon.getConnection();
			stmt = con.createStatement();
			
			String sql = "Select * from tvs";
			
			rs = stmt.executeQuery(sql);
			
			while(rs.next()) {
				String id = rs.getString(1);
				String name = rs.getString(2);
				String type = rs.getString(3);
				String date = rs.getNString(4);
				String cId = rs.getNString(5);
				
				TvS t = new TvS(id,name,type,date,cId);
				
				tv.add(t);
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return tv;
	}
	
}
