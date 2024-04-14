  package dio;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import entity.Admin;


public class AdminDia {
	private Connection conn;

	public AdminDia(Connection conn) {
		super();
		this.conn = conn;
	}

	public boolean AddAdmin(Admin a) {

		boolean f = false;

		try {

			String sql = "INSERT INTO Admin(uname,password,email) VALUES(?,?,?)";
			//System.out.println(sql);
			PreparedStatement pstm = conn.prepareStatement(sql);
		//	System.out.println(sql);

			pstm.setString(1, a.getUsername());
			pstm.setString(2, a.getPassword());
			pstm.setString(3, a.getEmail());

			// pstm.setByte(4, a.getImg());

			int execute = pstm.executeUpdate();
			if (execute == 1)
				f = true;

		} catch (Exception e) {
			e.printStackTrace();
		}

		return f;

	}

	public Admin getUserByUserNamePassword(String username, String password) {

		Admin a = null;

		try {

			String q = "select * from admin where uname = ? and password = ?";
			PreparedStatement pstm = conn.prepareStatement(q);
			pstm.setString(1, username);
			pstm.setString(2, password);
//System.out.println(pstm.toString());
			ResultSet r = pstm.executeQuery();

			if (r.next()) {
				a = new Admin();

				int id = r.getInt("aid");
				String name = r.getString("uname");
				String pass = r.getString("password");
				String email = r.getString("email");

				a.setId(id);
				a.setUsername(name);
				a.setPassword(pass);
				a.setEmail(email);
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return a;

	}

}
