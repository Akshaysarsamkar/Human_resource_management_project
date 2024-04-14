package dio;

import java.sql.Connection;
import java.sql.PreparedStatement;

import entity.Recrument;

public class RecrumentDao {

	private Connection conn;

	public RecrumentDao(Connection conn) {
		super();
		this.conn = conn;
	}

	public boolean AddRecrument(Recrument r) {

		boolean f = false;

		try {

			String sql = "INSERT INTO recrument(Fname,lname, position,email,phone) VALUES(?,?,?,?,?)";
			System.out.println(sql);
			PreparedStatement pstm = conn.prepareStatement(sql);
			pstm.setString(1, r.getFname());
			pstm.setString(2, r.getLname());
			pstm.setString(3, r.getPosition());
			pstm.setString(4, r.getEmail());
			pstm.setString(5, r.getPhone());
			System.out.println(pstm.toString());

			int execute = pstm.executeUpdate();
			if (execute == 1)
				f = true;
		
		

		} catch (Exception e) {
			e.printStackTrace();
		}

		return f;

	}

}
