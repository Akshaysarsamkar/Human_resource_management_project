package entity;

public class Recrument {
	
	public Recrument() {
		super();
		// TODO Auto-generated constructor stub
	}

	private int id;
	
	public Recrument(int id, String fname, String lname, String position, String email, String phone) {
		super();
		this.id = id;
		this.fname = fname;
		this.lname = lname;
		this.position = position;
		this.email = email;
		this.phone = phone;
	}

	private String fname,lname,position,email,phone;
	
	public Recrument(String fname, String lname, String position, String email, String phone) {
		super();
		this.fname = fname;
		this.lname = lname;
		this.position = position;
		this.email = email;
		this.phone = phone;
	}

	public String getFname() {
		return fname;
	}

	public void setFname(String fname) {
		this.fname = fname;
	}

	public String getLname() {
		return lname;
	}

	public void setLname(String lname) {
		this.lname = lname;
	}

	public String getPosition() {
		return position;
	}

	public void setPosition(String position) {
		this.position = position;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	
	
	

}
