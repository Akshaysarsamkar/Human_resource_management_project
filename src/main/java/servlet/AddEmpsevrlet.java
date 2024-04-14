package servlet;

import java.io.IOException;

import conn.DBConn;
import dio.EmpDio;
import entity.Emp;

/**
 * Servlet implementation class AddEmpsevrlet
 */
@jakarta.servlet.annotation.WebServlet("/AddEmpsevrlet")
public class AddEmpsevrlet extends jakarta.servlet.http.HttpServlet {
	private static final long serialVersionUID = 1L;

  
	protected void doPost(jakarta.servlet.http.HttpServletRequest request, jakarta.servlet.http.HttpServletResponse response) throws jakarta.servlet.ServletException, IOException {
		
		
		String fname = request.getParameter("fname");
		String lname = request.getParameter("lname");
		String mobile = request.getParameter("mobile");
		String email = request.getParameter("email");
		String Emergency = request.getParameter("Emergency");
		int Salary =Integer.parseInt(request.getParameter("Salary"));
		String Gender = request.getParameter("Gender");
		String Department = request.getParameter("Department");
		String Bank = request.getParameter("Bank");
		String Ano = request.getParameter("accno");
		String Language = request.getParameter("Language");

		//PrintWriter out = response.getWriter();
		
		
		Emp e = new Emp();
		e.setAccountNo(Ano);
		e.setBank(Bank);
		e.setDepartment(Department);
		e.setEmail(email);
		e.setEmergency(Emergency);
		e.setFirstName(fname);
		e.setGender(Gender);
		e.setLastName(lname);
		e.setMobile(mobile);
		e.setSalary(Salary);
		e.setLanguage(Language);
	
		
		try {
			
			EmpDio empDio = new EmpDio(DBConn.getcon());
			
			boolean b = empDio.AddEmp(e);
			
			if(b) {
				System.out.println("done");
				response.sendRedirect("Dashboard.jsp");
			}
			else
			{
				System.out.println("undone");
			}
			
			
			
		} catch (Exception e2) {
			// TODO: handle exception
		}
	



	}

}
