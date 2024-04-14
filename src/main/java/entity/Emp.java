package entity;

public class Emp{

	
	private String FirstName,LastName,Email,Mobile,Gender,Bank,AccountNo,Language,Department,Emergency;
	private int salary,Eid;
	
	public Emp() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
	
	
	
	public Emp(String firstName, String lastName, String email, String mobile, String gender, String bank,
			String accountNo, String language, String department, String emergency, int salary, int eid) {
		super();
		FirstName = firstName;
		LastName = lastName;
		Email = email;
		Mobile = mobile;
		Gender = gender;
		Bank = bank;
		AccountNo = accountNo;
		Language = language;
		Department = department;
		Emergency = emergency;
		this.salary = salary;
		Eid = eid;
	}





	public Emp(String firstName, String lastName, String email, String mobile, String gender, String bank,
			String accountNo, String language, String department, String emergency, int salary) {
		super();
		FirstName = firstName;
		LastName = lastName;
		Email = email;
		Mobile = mobile;
		Gender = gender;
		Bank = bank;
		AccountNo = accountNo;
		Language = language;
		Department = department;
		Emergency = emergency;
		this.salary = salary;
	}
	
	
	@Override
	public String toString() {
		return "EmpDio [FirstName=" + FirstName + ", LastName=" + LastName + ", Email=" + Email + ", Mobile=" + Mobile
				+ ", Gender=" + Gender + ", Bank=" + Bank + ", AccountNo=" + AccountNo + ", Language=" + Language
				+ ", Department=" + Department + ", Emergency=" + Emergency + ", salary=" + salary + ", Eid=" + Eid
				+ "]";
	}
	
	
	public String getFirstName() {
		return FirstName;
	}
	public void setFirstName(String firstName) {
		FirstName = firstName;
	}
	public String getLastName() {
		return LastName;
	}
	public void setLastName(String lastName) {
		LastName = lastName;
	}
	public String getEmail() {
		return Email;
	}
	public void setEmail(String email) {
		Email = email;
	}
	public String getMobile() {
		return Mobile;
	}
	public void setMobile(String mobile) {
		Mobile = mobile;
	}
	public String getGender() {
		return Gender;
	}
	public void setGender(String gender) {
		Gender = gender;
	}
	public String getBank() {
		return Bank;
	}
	public void setBank(String bank) {
		Bank = bank;
	}
	public String getAccountNo() {
		return AccountNo;
	}
	public void setAccountNo(String accountNo) {
		AccountNo = accountNo;
	}
	public String getLanguage() {
		return Language;
	}
	public void setLanguage(String language) {
		Language = language;
	}
	public String getDepartment() {
		return Department;
	}
	public void setDepartment(String department) {
		Department = department;
	}
	public String getEmergency() {
		return Emergency;
	}
	public void setEmergency(String emergency) {
		Emergency = emergency;
	}
	public int getSalary() {
		return salary;
	}
	public void setSalary(int salary) {
		this.salary = salary;
	}
	public int getEid() {
		return Eid;
	}
	public void setEid(int eid) {
		Eid = eid;
	}
	
	
	
	
	
	
	
	
}
