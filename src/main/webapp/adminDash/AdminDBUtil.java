package adminDash;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

public class AdminDBUtil {
	private static Connection con = null;
	private static Statement stmt= null;
	private static ResultSet rs = null;
	
	public static boolean insertAdmin(String name,String email,String pwd){
		boolean isSucc = false;
		
		try {
			con = DBCon.getConnection();
			stmt=con.createStatement();
			
			//query 
			String sql="INSERT INTO admin values (0,'"+name+"','"+email+"','"+pwd+"', 'admin')";
			
			//inserting data
			int res=stmt.executeUpdate(sql);
			
			if(res > 0) {
				isSucc = true;
			}
			else {
				isSucc = false;
			}
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		return isSucc;
	}
	
	public static ArrayList<Admin> getAdDetails(){
		ArrayList<Admin> admin = new ArrayList<Admin>();
		
		try {
			con = DBCon.getConnection();
			stmt = con.createStatement();
			
			String sql = "Select * from admin where role like 'admin'";
			
			rs = stmt.executeQuery(sql);
			
			while(rs.next()) {
				String un = rs.getString(2);
				String email=rs.getString(3);
				
				Admin ad = new Admin(un,email);
				
				admin.add(ad);
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return admin;
	}
}
