package servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import conn.DBConn;
import dio.AdminDia;
import entity.Admin;

@jakarta.servlet.annotation.WebServlet("/AddAdmin")
public class AddAdmin extends jakarta.servlet.http.HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(jakarta.servlet.http.HttpServletRequest request,
			jakarta.servlet.http.HttpServletResponse response) throws jakarta.servlet.ServletException, IOException {

		String uname = request.getParameter("uname");
		String pass = request.getParameter("pass");
		String email = request.getParameter("email");
		//Part file = request.getPart("img");

		Admin a = new Admin();
		a.setEmail(email);
		a.setUsername(uname);
		a.setPassword(pass);
	

		try {
			
			AdminDia ad = new AdminDia(DBConn.getcon());

			boolean b = ad.AddAdmin(a);
			PrintWriter out = response.getWriter();
			if (b) {
				out.print("done");
				System.out.println("inserted");
				response.sendRedirect("Login.jsp");

			} else {
				out.print("undone");
			}

		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
