package servlet;

import java.io.IOException;

import conn.DBConn;
import dio.AttendenceDio;
import entity.AddAttendence;

@jakarta.servlet.annotation.WebServlet("/EmpAttendence")
public class EmpAttendence extends jakarta.servlet.http.HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(jakarta.servlet.http.HttpServletRequest request,
			jakarta.servlet.http.HttpServletResponse response) throws jakarta.servlet.ServletException, IOException {

		String date = request.getParameter("date");
		String staffer = request.getParameter("staffer");
		String status = request.getParameter("status");

		System.out.println(date + staffer + status);

		AddAttendence a = new AddAttendence();

		a.setDate(date);
		a.setStaffer(staffer);
		a.setStatus(status);

		try {

			AttendenceDio ad = new AttendenceDio(DBConn.getcon());

			boolean b = ad.Attendence(a);

			if (b) {
				System.out.println("attendence add");
				response.sendRedirect("Attendence.jsp");
			} else {
				System.out.println("attends not done");
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

	}

}
