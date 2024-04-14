package entity;

public class Department {

	private int DId;
	private String dname;
	private String history;
	
	
	public Department(int dId, String dname, String history) {
		super();
		DId = dId;
		this.dname = dname;
		this.history = history;
	}


	public Department(String dname, String history) {
		super();
		this.dname = dname;
		this.history = history;
	}


	public Department() {
		super();
		
	}


	public int getDId() {
		return DId;
	}


	public void setDId(int dId) {
		DId = dId;
	}


	public String getDname() {
		return dname;
	}


	public void setDname(String dname) {
		this.dname = dname;
	}


	public String getHistory() {
		return history;
	}


	public void setHistory(String history) {
		this.history = history;
	}


	}
	

