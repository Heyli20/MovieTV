package Admin_Auth;

import User.*;

public class Admin extends User{
	private String adLev;
	private String per;
	
	public Admin(String uname, String email, String pass, String role, String adLev, String per) {
		super(uname, email, pass, role);
		this.adLev = adLev;
		this.per = per;
	}
	
	public Admin(String uname,String email) {
		super( uname,email);
	}

	public String getAdLev() {
		return adLev;
	}

	public void setAdLev(String adLev) {
		this.adLev = adLev;
	}

	public String getPer() {
		return per;
	}

	public void setPer(String per) {
		this.per = per;
	}
	
	
}
