package servlet;

import java.io.IOException;

import conn.DBConn;
import dio.EmpDio;
import entity.Emp;
import jakarta.servlet.http.HttpSession;

@jakarta.servlet.annotation.WebServlet("/ShowEmpinfo")
public class ShowEmpinfo extends jakarta.servlet.http.HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(jakarta.servlet.http.HttpServletRequest request,
			jakarta.servlet.http.HttpServletResponse response) throws jakarta.servlet.ServletException, IOException {

		String id = request.getParameter("id");
		int i = Integer.parseInt(id);
		try {

			EmpDio e = new EmpDio(DBConn.getcon());
			Emp data = e.EmpShow(i);

			System.out.println("fetch data succefully.....");
			HttpSession s = request.getSession();
			s.setAttribute("empdata", data);

			response.sendRedirect("ViewDetails.jsp");

		} catch (Exception e) {
			System.out.println(e);

		}

	}

}

//
//System.out.println("id is:"+id);
//
//
//
//Connection con = DBConn.getcon();
//
////String sql = "select * from Employees where EmpId = ? ";
////
////PreparedStatement stm = con.prepareStatement(sql);
////
////stm.setString(1, id);
//
//Statement stm = con.createStatement();
//
//
//ResultSet res = stm.executeQuery("select * from Employee where EmpId = " + id);
//
//
//HttpSession s = request.getSession();
//s.setAttribute("Empinfo", res);
//