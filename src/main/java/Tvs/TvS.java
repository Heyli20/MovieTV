package Tvs;

public class TvS {
	private String sId;
	private String name;
	private String type;
	private String date;
	private String cId;
	
	public TvS(String sId, String name, String type, String date, String cId) {
		this.sId = sId;
		this.name = name;
		this.type = type;
		this.date = date;
		this.cId = cId;
	}

	public String getsId() {
		return sId;
	}

	public void setsId(String sId) {
		this.sId = sId;
	}

	public String getName() {
		return name;
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
