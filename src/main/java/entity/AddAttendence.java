package entity;

public class AddAttendence {
	
	private String date;
	private String Staffer;
	private String status;
	
	
	public AddAttendence(String date, String staffer, String status) {
		super();
		this.date = date;
		Staffer = staffer;
		this.status = status;
	}


	public AddAttendence() {
		super();
		// TODO Auto-generated constructor stub
	}


	public String getDate() {
		return date;
	}


	public void setDate(String date) {
		this.date = date;
	}


	public String getStaffer() {
		return Staffer;
	}


	public void setStaffer(String staffer) {
		Staffer = staffer;
	}


	public String getStatus() {
		return status;
	}


	public void setStatus(String status) {
		this.status = status;
	}
}
