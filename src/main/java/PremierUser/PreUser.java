package PremierUser;

import User.*;

public class PreUser extends User{
	private String subDate;
	private String endDate;
	private String preL;
	private String feature;
	
	public PreUser(String uname, String email, String pass, String role, String subDate, String endDate,
			String preL, String feature) {
		super(uname, email, pass, role);
		this.subDate = subDate;
		this.endDate = endDate;
		this.preL = preL;
		this.feature = feature;
	}

	public String getSubDate() {
		return subDate;
	}

	public void setSubDate(String subDate) {
		this.subDate = subDate;
	}

	public String getEndDate() {
		return endDate;
	}

	public void setEndDate(String endDate) {
		this.endDate = endDate;
	}

	public String getPreL() {
		return preL;
	}

	public void setPreL(String preL) {
		this.preL = preL;
	}

	public String getFeature() {
		return feature;
	}

	public void setFeature(String feature) {
		this.feature = feature;
	}
	
	
	
}
