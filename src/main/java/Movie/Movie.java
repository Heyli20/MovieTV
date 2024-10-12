package Movie;

public class Movie {
	private String mId;
	private String mName;
	private String type;
	private String date;
	private String cId;
	
	public Movie(String mId, String mName, String type, String date, String cId) {
		this.mId = mId;
		this.mName = mName;
		this.type = type;
		this.date = date;
		this.cId = cId;
	}

	public String getmId() {
		return mId;
	}

	public String getmName() {
		return mName;
	}

	public String getType() {
		return type;
	}

	public String getDate() {
		return date;
	}

	public String getcId() {
		return cId;
	}
	
}
