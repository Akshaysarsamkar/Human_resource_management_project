

<%@page import="entity.Admin"%>
<%@page import="jakarta.servlet.http.HttpSession"%>
<%

System.out.println("11111");
Admin a = (Admin) request.getSession().getAttribute("currentAdmin");
if (a == null) {
	response.sendRedirect("Login.jsp");
}
//System.out.println(a.getEmail());

%>



<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<div class="col-auto col-md-3 col-xl-2 px-sm-2 px-0 bg-dark ">
	<div
		class="d-flex flex-column align-items-center align-items-sm-start px-3 pt-2 text-white min-vh-100">




		<div class="d-flex flex-row mb-3 mt-3">
			<div class="p-2">
				<a href="#"
					class="d-flex align-items-center text-white text-decoration-none"
					id="dropdownUser1" data-bs-toggle="dropdown" aria-expanded="false">
					<img src="https://www.pngarts.com/files/5/User-Avatar-PNG-Free-Download.png" alt="hugenerd" width="50"
					height="50" class="rounded-circle">
				</a>
			</div>
			<div class="p-2">
				<h5>
					<span class="d-none d-sm-inline mx-1"></span>
				</h5>
				<h5>Administration</h5>
			</div>

		</div>





		<ul
			class="nav nav-pills flex-column mb-sm-auto mb-0 align-items-center align-items-sm-start"
			id="menu">



			<li class="my-4">
				<a href="AddEmp.jsp" class="btn btn-success fs-5">
					Add Employee <i class="fa-solid fa-plus"></i>
				</a>
			</li>




			<li class="nav-item"><a href="Dashboard.jsp"
				class="nav-link align-middle px-0"> <i class=" bi-house"></i> <span
					class="ms-1 d-none d-sm-inline"><i class="fa fa-dashboard"
						style="font-size: 24px"></i> Dashboard</span>
			</a></li>
			<li class="nav-item"><a href="Emp.jsp"
				class="nav-link align-middle px-0"> <i class="bi-house"></i> <span
					class="ms-1 d-none d-sm-inline"><i class="fa fa-server"
						style="font-size: 24px"></i> Employee</span>
			</a></li>
			<li><a href="Attendence.jsp" class="nav-link px-0 align-middle"> <i
					class="bi-table"></i> <span class="ms-1 d-none d-sm-inline"><i
						class="fa fa-calendar" style="font-size: 24px"></i> Attendance</span></a></li>
			<li><a href="Leave.jsp" class="nav-link px-0 align-middle"> <i
					class="bi-table"></i> <span class="ms-1 d-none d-sm-inline"><i
						class="fa-solid fa-arrow-right-from-bracket"></i> Leaves</span></a></li>
			<li><a href="#submenu2" data-bs-toggle="collapse"
				class="nav-link px-0 align-middle "> <i class="bi-bootstrap"></i>
					<span class="ms-1 d-none d-sm-inline"><i
						class="fa fa-folder" style="font-size: 24px"></i> Department</span></a>
				<ul class="collapse nav flex-column ms-1" id="submenu2"
					data-bs-parent="#menu">
					<li class="w-100"><a href="departmentEmp.jsp" class="nav-link px-0"> <span
							class="d-none d-sm-inline">FrontEnd</span> 
					</a></li>
					<li><a href="departmentEmp.jsp" class="nav-link px-0"> <span
							class="d-none d-sm-inline">BackEnd</span>
					</a></li>
					<li><a href="departmentEmp.jsp" class="nav-link px-0"> <span
							class="d-none d-sm-inline">Technician</span> 
					</a></li>
					<li><a href="departmentEmp.jsp" class="nav-link px-0"> <span
							class="d-none d-sm-inline">FullStack</span> 
					</a></li>
					
				</ul></li>
			<li><a href="AddDepartment.jsp" class="nav-link px-0 align-middle"> <i
					class="bi-people"></i> <span class="ms-1 d-none d-sm-inline"><i
						class="fa-solid fa-plus"></i> New Department</span>
			</a></li>


			<li class="nav-item"><a href="showrec.jsp"
				class="nav-link align-middle px-0"> <i class="bi-house"></i> <span
					class="ms-1 d-none d-sm-inline"><i
						class="fa fa-drivers-license" style="font-size: 24px"></i>
						Recuritment</span>
			</a></li>

			<li class="nav-item"><a href="payroll.jsp"
				class="nav-link align-middle px-0"> <i class="bi-house"></i> <span
					class="ms-1 d-none d-sm-inline"><i
						class="fa-solid fa-indian-rupee-sign"></i> PayRoll</span>
			</a></li>


		</ul>
		<hr>
			</div>
</div>
