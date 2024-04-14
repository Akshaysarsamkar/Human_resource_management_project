package dio;

import java.sql.Connection;
import java.sql.PreparedStatement;

import entity.Department;

public class DepartmentDio {
	
	private Connection conn;

	public DepartmentDio(Connection conn) {
		super();
		this.conn = conn;
	}

	
	public boolean AddDepartment(Department d) {
		
		boolean f = false;
		
		try {
			
			String sql = "INSERT INTO Department(DName,History) VALUES(?,?)";
		//	System.out.println(sql);
			
			PreparedStatement pstm = conn.prepareStatement(sql);
//			System.out.println(sql);
		
			pstm.setString(1,d.getDname());
			pstm.setString(2,d.getHistory());
			
			int execute = pstm.executeUpdate();
			if (execute == 1)
				f = true;
			
		} catch (Exception e) {
		
			e.printStackTrace();
		}
		
		
		
		return f;
	}
	
	

}
