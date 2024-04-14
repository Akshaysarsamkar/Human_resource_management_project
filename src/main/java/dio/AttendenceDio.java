package dio;
import java.time.LocalTime;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.Time;

import entity.AddAttendence;


public class AttendenceDio {

	private Connection conn;

	public AttendenceDio(Connection conn) {
		super();
		this.conn = conn;
	}

	public boolean Attendence(AddAttendence attandence) {
		
		boolean f = false;
	 
	 
		try {
			
			String sql = "INSERT INTO Attendence(date,staffer,status,intime) VALUES(?,?,?,?)";

			PreparedStatement pstm = conn.prepareStatement(sql);
			
			pstm.setString(1, attandence.getDate());
			pstm.setString(2, attandence.getStaffer());
			pstm.setString(3, attandence.getStatus());
            pstm.setTime(4, Time.valueOf(LocalTime.now())); // Set current time
			
			int execute = pstm.executeUpdate();
			if( execute == 1) {
				f= true;
			}
			
		} catch (Exception e) {
			
			e.printStackTrace();
		}
		return f;
	}
}
