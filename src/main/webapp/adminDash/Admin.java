package adminDash;

public class Admin {
	private String uname;
	private String email;
	private String pass;
	private String role;
	static int uid=15;
	
	public static void userId() {
		uid++;
	}
	
	public Admin(String uname, String email, String pass, String role) {
		super();
		this.uname = uname;
		this.email = email;
		this.pass = pass;
		this.role = "admin";
	}

	public Admin(String uname, String email) {
		super();
		this.uname = uname;
		this.email = email;
	}

	public String getUname() {
		return uname;
	}

	public String getEmail() {
		return email;
	}
}
