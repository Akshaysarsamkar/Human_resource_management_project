package entity;

public class Leaves {

	
	private String StaringDate;
	private String Enddate;
	private String LeaveType;
	private String dec;
	
	public Leaves() {
		super();
		// TODO Auto-generated constructor stub
	}
	

	public Leaves(String staringDate, String enddate, String leaveType, String dec) {
		super();
		StaringDate = staringDate;
		Enddate = enddate;
		LeaveType = leaveType;
		this.dec = dec;
	}


	public String getStaringDate() {
		return StaringDate;
	}


	public void setStaringDate(String staringDate) {
		StaringDate = staringDate;
	}


	public String getEnddate() {
		return Enddate;
	}


	public void setEnddate(String enddate) {
		Enddate = enddate;
	}


	public String getLeaveType() {
		return LeaveType;
	}


	public void setLeaveType(String leaveType) {
		LeaveType = leaveType;
	}


	public String getDec() {
		return dec;
	}


	public void setDec(String dec) {
		this.dec = dec;
	}
	
	
	
	
	
	
}
