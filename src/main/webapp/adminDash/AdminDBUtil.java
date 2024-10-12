package Admin_Auth;

import Connection.DBCon;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class AdminDBUtil {
	private static Connection con = null;
	private static PreparedStatement pstmt = null;
	private static ResultSet rs = null;
	
	public static ArrayList<Admin> getDetails(){
		ArrayList<Admin> ad = new ArrayList<>();
		try {
			con = DBCon.getConnection();
			
			//sql
			String sql = "Select name,email From userss Where role = 'admin'";
			
			pstmt = con.prepareStatement(sql);
			rs = pstmt.executeQuery();
			System.out.println(rs);
			while(rs.next()) {
				Admin adm = new Admin(rs.getString("name"),rs.getString("email"));
			
				ad.add(adm);
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
	
		return ad;
	}
	
	public static boolean insertNew(String name,String email,String psw,String lev,String per) {
		boolean isSucc = false;
		
		try {
			con = DBCon.getConnection();
			
			//sql
			String sql = "Insert into userss (name, email, password, role) values ('"+name+"','"+email+"','"+psw+"', 'admin')";
			pstmt = con.prepareStatement(sql,PreparedStatement.RETURN_GENERATED_KEYS);
			
			int resu = pstmt.executeUpdate();
			
			if( resu == 1) {
				 rs = pstmt.getGeneratedKeys();
		         int id = 0;
				
		         if (rs.next()) {
		                id = rs.getInt(1);
		         }
				
				String s = "Insert into adminuserss values ('"+id+"','"+lev+"','"+per+"')";
				
				pstmt = con.prepareStatement(s);
				int res = pstmt.executeUpdate();
				
				if(res == 1) {
					isSucc = true;
				}
			}	
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return isSucc;
	}
	
	public static Admin getAdminByEmail(String email) {
		Admin ad = null;
		
		try {
			con = DBCon.getConnection();
			pstmt = con.prepareStatement("Select * from userss where email = ?");
			
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				ad = new Admin(rs.getString("name"),rs.getString("email"));
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return ad;
	}
	
	public static boolean updateAd(String name,String email,String psw,String lev,String per) {
		boolean isSucc = false;
		
		try {
			con = DBCon.getConnection();
			
			//sql
			String sql = "Update userss set password = '"+psw+"' where email = '"+email+"')";
			
			pstmt = con.prepareStatement(sql);
			int resu= pstmt.executeUpdate();
			
			if(resu == 1) {
				String id = "Select id from userss where email = '"+email+"'";
				
				String s = "Update adminuserss set admin_level = '"+lev+"', permissions = '"+per+"')";
				
				pstmt = con.prepareStatement(s);
				
				int res = pstmt.executeUpdate();
				
				if( res == 1) {
					isSucc = true;
				}
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return isSucc;
	}
	
	public static void deleteAdmin(String email) {
		try {
			con = DBCon.getConnection();
			
			String sql = "Delete from adminuserss where id =(Select id from userss where email = '"+email+"')";
			pstmt = con.prepareStatement(sql);
			pstmt.executeUpdate();
			
			String s = "Delete from userss where id=(Select id from userss where email = '"+email+"')";
			pstmt = con.prepareStatement(s);
			pstmt.executeUpdate();
		}catch(Exception e) {
			e.printStackTrace();
		}
	}

}
