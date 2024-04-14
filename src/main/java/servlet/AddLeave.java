package servlet;

import java.io.IOException;

import conn.DBConn;
import dio.LeaveDio;
import entity.Leaves;


@jakarta.servlet.annotation.WebServlet("/AddLeaves")
public class AddLeave extends jakarta.servlet.http.HttpServlet {
	
	
	private static final long serialVersionUID = 1L;

	protected void doPost(jakarta.servlet.http.HttpServletRequest request, jakarta.servlet.http.HttpServletResponse response) throws jakarta.servlet.ServletException, IOException {
		
		String sdate = request.getParameter("sdate");
	    String edate = request.getParameter("edate");
	    String ltype = request.getParameter("ltype");
	    String des = request.getParameter("dec");
		
	    Leaves leave = new Leaves();
	    leave.setStaringDate(sdate);
	    leave.setEnddate(edate);
	    leave.setLeaveType(ltype);
	    leave.setDec(des);
	    
	    
	    try {
	    	
	    	LeaveDio ld = new LeaveDio(DBConn.getcon());
	    	
	    	boolean b = ld.Addleanve(leave);
	    	
	    	if(b) {
	    		System.out.println("leave added");
	    		response.sendRedirect("AddLeaves");
	    	}
	    	else {
	    		System.out.println("leave not added");
	    	}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}

}
