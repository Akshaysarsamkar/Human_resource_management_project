package dio;

import java.sql.Connection;
import java.sql.PreparedStatement;

import entity.Leaves;

public class LeaveDio {
	
	private Connection conn;

	public LeaveDio(Connection conn) {
		super();
		this.conn = conn;
	}
	
	
	public boolean Addleanve(Leaves l) {
		
		boolean f = false;
	
	    try {
			
	    	String sql = "insert into Leaves(sdate,edate,leavetype,decs) values(?,?,?,?)";
	    	PreparedStatement pstm = conn.prepareStatement(sql);
			System.out.println(sql);

			pstm.setString(1,l.getStaringDate());
			pstm.setString(2, l.getEnddate());
			pstm.setString(3, l.getLeaveType());
			pstm.setString(4,l.getDec());
			
			// pstm.setByte(4, a.getImg());

			int execute = pstm.executeUpdate();
			if (execute == 1)
				f = true;
	    	
	    	
		} catch (Exception e) {
			e.printStackTrace();
		}
		return f;
	}
	
	
	

}
