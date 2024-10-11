package adminDash;

public class Admin {
	private String uname;
	private String email;
	private String pass;
	private String role;
	
	public Admin(String uname, String email, String pass, String role) {
		this.uname = uname;
		this.email = email;
		this.pass = pass;
		this.role = "admin";
	}

	public String getUname() {
		return uname;
	}

	public String getEmail() {
		return email;
	}

	public String getPass() {
		return pass;
	}
}
