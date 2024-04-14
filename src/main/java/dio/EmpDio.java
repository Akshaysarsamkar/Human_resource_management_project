package dio;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import entity.Emp;

public class EmpDio {
	
	private Connection conn;

	public EmpDio(Connection conn) {
		super();
		this.conn = conn;
	}
	
	
	public boolean AddEmp(Emp e) {
		
		boolean f = false;
		
		try {
			
			String sql = "INSERT INTO Employee(FirstName,LastName,Email,Mobile,Gender,BankName,AccountNo,Language,Department,Emergency,salary) VALUES (?,?,?,?,?,?,?,?,?,?,?)" ;
			
			//System.out.println("22222222222222222222");
			
			PreparedStatement pstm = conn.prepareStatement(sql);
			
			//System.out.println("33333333333333333333");
			
			pstm.setString(1, e.getFirstName());
			pstm.setString(2, e.getLastName());
			pstm.setString(3, e.getEmail());
			pstm.setString(4, e.getMobile());
			pstm.setString(5, e.getGender());
			pstm.setString(6, e.getBank());
			pstm.setString(7, e.getAccountNo());
			pstm.setString(8, e.getLanguage());
			pstm.setString(9,e.getDepartment());
			pstm.setString(10, e.getEmergency());
			pstm.setInt(11, e.getSalary());
			
			
			
			int execute = pstm.executeUpdate();
			
			//System.out.println("4444444444444444");
			
			if(execute == 1) {
				f = true;
			}
			
			
		} catch (Exception e2) {
			
			e2.printStackTrace();
		}
		
		
		
		return f;
	}




	public Emp Login(String email,String password) {
		
		Emp e = null;
		
		try {
			
			String sql = "select * from Employee where Email = ? and  Emergency = ?";
			
			PreparedStatement pstm = conn.prepareStatement(sql);
			
			pstm.setString(1, email);
			pstm.setString(2, password);
			
			ResultSet r = pstm.executeQuery();
			
			if(r.next()) {
				e = new Emp();
				
				String fname = r.getString("FirstName");
				int id = r.getInt("EmpId");
				
				e.setFirstName(fname);
				e.setEid(id);
			
			}
			
		} catch (Exception e2) {
			e2.printStackTrace();
		}
		
		return e;
		
	}
	
	
	
public Emp EmpShow(int eid) {
		
		Emp e = null;
		
		try {
			
			String sql = "select * from Employee where EmpId = ?";
			PreparedStatement pstm = conn.prepareStatement(sql);
			
			pstm.setInt(1, eid);
			
			
			ResultSet r = pstm.executeQuery();
			
			if(r.next()) {
				e = new Emp();
				
				String fname = r.getString("FirstName");
				int id = r.getInt("EmpId");
				String lname = r.getString("LastName");
				String email = r.getString("Email");
				String Mobile = r.getString("Mobile");
				String Gender = r.getString("Gender");
				String AccountNo = r.getString("AccountNo");
				String Language = r.getString("Language");
				String Department = r.getString("Department");
				String Emergency = r.getString("Emergency");
				int salary = r.getInt("salary");
				String BankName	= r.getString("BankName");			
				
				
				
				e.setFirstName(fname);
				e.setEid(id);
				e.setLastName(lname);
			    e.setEmail(email);
			    e.setMobile(Mobile);
			    e.setGender(Gender);
			    e.setAccountNo(AccountNo);
			    e.setLanguage(Language);
			    e.setDepartment(Department);
			    e.setEmergency(Emergency);
			    e.setSalary(salary);
			    e.setBank(BankName);
			    
			}
			
		} catch (Exception e2) {
			e2.printStackTrace();
		}
		
		return e;
		
	}
	

}
