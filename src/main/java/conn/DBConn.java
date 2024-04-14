
package conn;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBConn {

	private static Connection conn;

	public static Connection getcon() throws ClassNotFoundException, SQLException {

		try {
			if (conn == null) {
				// Class.forName("com.mysql.cj.jdbc.Driver");
				// conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/hrm", "root",
				// "root");
				// Class.forName("org.postgresql.Driver");
				// conn = DriverManager.getConnection("jdbc:postgresql://localhost:5432/Akshay",
				// "postgres", "postgres");
				Class.forName("org.postgresql.Driver");
				conn = DriverManager.getConnection(
						"jdbc:postgresql://ep-old-forest-a4e4teno.us-east-1.aws.neon.tech:5432/verceldb?sslmode=require",
						"default", "MWHam8qPJi1r");

			}

		} catch (

		SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return conn;
	}

}
