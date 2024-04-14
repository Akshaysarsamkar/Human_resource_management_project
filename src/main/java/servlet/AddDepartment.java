package servlet;

import java.io.IOException;

import conn.DBConn;
import dio.DepartmentDio;
import entity.Department;

/**
 * Servlet implementation class AddDepartment
 */
@jakarta.servlet.annotation.WebServlet("/AddDepartment")
public class AddDepartment extends jakarta.servlet.http.HttpServlet {
	private static final long serialVersionUID = 1L;

  
	protected void doPost(jakarta.servlet.http.HttpServletRequest request, jakarta.servlet.http.HttpServletResponse response) throws jakarta.servlet.ServletException, IOException {
		
		String dname = request.getParameter("dname");
		String his = request.getParameter("hostory");
		
		Department d = new Department();
		d.setDname(dname);
		d.setHistory(his);
		
		try {
			
			DepartmentDio dd = new DepartmentDio(DBConn.getcon());
			boolean b = dd.AddDepartment(d);
			
			//PrintWriter out = response.getWriter();
			
			if(b) {
				System.out.println("depaert ment add");
				response.sendRedirect("AddDepartment.jsp");
			}else {
				System.out.println("department not added");
			}
					
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
