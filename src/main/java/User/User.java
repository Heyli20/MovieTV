package User;

public class User {
	private String uname;
	private String email;
	private String pass;
	private String role;
	
	public User(String uname, String email, String pass, String role) {
		this.uname = uname;
		this.email = email;
		this.pass = pass;
		this.role = role;
	}
	
	public User(String uname,String email) {
		this.uname= uname;
		this.email = email;
	}
	public String getUname() {
		return uname;
	}

	public void setUname(String uname) {
		this.uname = uname;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPass() {
		return pass;
	}

	public void setPass(String pass) {
		this.pass = pass;
	}

	public String getRole() {
		return role;
	}

	public void setRole(String role) {
		this.role = role;
	}
	
	
	
}
