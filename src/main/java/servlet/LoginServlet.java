package servlet;

import java.io.IOException;
import java.sql.SQLException;

import conn.DBConn;
import dio.AdminDia;
import entity.Admin;
import jakarta.servlet.http.HttpSession;

/**
 * Servlet implementation class LoginServlet
 */
@jakarta.servlet.annotation.WebServlet("/LoginServlet")
public class LoginServlet extends jakarta.servlet.http.HttpServlet {

	protected void doPost(jakarta.servlet.http.HttpServletRequest request,
			jakarta.servlet.http.HttpServletResponse response) throws jakarta.servlet.ServletException, IOException {

		String uname = request.getParameter("uname");
		String pass = request.getParameter("pass");
System.out.println(uname +" "+pass);
		try {

			AdminDia a = new AdminDia(DBConn.getcon());
			Admin data = a.getUserByUserNamePassword(uname, pass);
			
			System.out.println(data);
	

			if (data == null) {
      
				System.out.println("not login.......");
				
				
			} else {	
				HttpSession s = request.getSession();
				s.setAttribute("currentAdmin",data);
				response.sendRedirect("Dashboard.jsp");
			}

		} catch (ClassNotFoundException e) {

			e.printStackTrace();

		} catch (SQLException e) {

			e.printStackTrace();
		}

	}

}
