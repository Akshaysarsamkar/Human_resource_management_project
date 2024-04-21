package servlet;

import java.io.IOException;

import conn.DBConn;
import dio.EmpDio;
import entity.Emp;
import entity.Massage;
import jakarta.servlet.http.HttpSession;


@jakarta.servlet.annotation.WebServlet("/EmpLogin")
public class EmpLogin extends jakarta.servlet.http.HttpServlet {
	private static final long serialVersionUID = 1L;

  
	protected void doPost(jakarta.servlet.http.HttpServletRequest request, jakarta.servlet.http.HttpServletResponse response) throws jakarta.servlet.ServletException, IOException {
	
		
		String email = request.getParameter("email");
		String pass = request.getParameter("password");
		
		System.out.println(email + pass );
		
		try {
			
			EmpDio e = new EmpDio(DBConn.getcon());
			Emp data = e.Login(email, pass);
			
			System.out.println(data);
			
			if(data == null) {
			     Massage m = new Massage("Please Enter valid Username & Password","alert-danger");
			     HttpSession s = request.getSession();
			     s.setAttribute("invalidmsg", m);
			     response.sendRedirect("EmpLogin.jsp");
			     
			     }else {
				System.out.println("login.....");
				HttpSession s = request.getSession();
				s.setAttribute("empinfo",data);
				
				System.out.println("bbbbbbbbbbbbbbbbbb");
				
		       response.sendRedirect("ViewLeaves.jsp");
			}
			
		} catch (Exception e) {
			
			
		}
		
	}

}
