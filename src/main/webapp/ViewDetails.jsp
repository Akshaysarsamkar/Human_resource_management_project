<%@page import="java.sql.ResultSet"%>
<%@page import="entity.Emp"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Employees</title>

<link rel="stylesheet" href="mycss.css">

<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css"
	integrity="sha512-DTOQO9RWCH3ppGqcWaEA1BIZOC6xxalwEsw9c2QQeAIftl+Vegovlnee1c9QX4TctnWMn13TZye+giMm8e2LwA=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link href="index,css" rel="stylesheet"
	integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN"
	crossorigin="anonymous">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN"
	crossorigin="anonymous">
</head>
<body>


<%
   
Emp e = (Emp) request.getSession().getAttribute("empdata"); 

%>




	<div class="container-fluid mt">
		<div class="row flex-nowrap">

			<%@include file="Adminhome.jsp"%>

			<%-- logout section as a navbar --%>
			<div class="col py-3 bg-body-secondary">

				<div class="dropdown pb-4 bg-warning p-4">
					<a href="#"
						class="d-flex align-items-center text-white text-decoration-none dropdown-toggle"
						id="dropdownUser1" data-bs-toggle="dropdown" aria-expanded="false">
						<img src="https://github.com/mdo.png	" alt="hugenerd" width="50"
						height="50" class="rounded-circle"> <span
						class="d-none d-sm-inline mx-1">Hello Akshay</span>
					</a>
					<ul class="dropdown-menu dropdown-menu-dark text-small shadow">

						<li><a class="dropdown-item" href="Login.jsp">Sign out</a></li>
					</ul>
				</div>

				<h1 class="display-5 text-info text-center m-3">
					<i class="fa fa-address-book" style="font-size: 36px"></i>
					Employees Profile
				</h1>
				<div
					class="d-flex justify-content-around border border border-black m-2 align-middle">

					<div class="p-3 m-4 text-center">
						<hr class="text-success fs-2" style="height: 3rem;">
						<a href="#"
							class="d-flex align-items-center text-white text-decoration-none"
							aria-expanded="false"> <img src="https://github.com/mdo.png	"
							alt="hugenerd" width="70" height="70" class="rounded-circle">
						</a>
						<h4>Akshay Sarsamkar</h4>

					</div>

					<div class="p-3 m-4 text-center">
						<hr class="text-success" style="height: 3rem;">
						<h2 class="display-4 text-center">Personal info</h2>
						<table class="table table-striped table-hover">
							<tbody>
								<tr>
									<td scope="col">First Name :<%=e.getFirstName()%></td>
								</tr>
								<tr>
									<td scope="col">Last Name : <%=e.getLastName()%></td>
								</tr>
								<tr>
									<td scope="col">Mobile : <%= e.getMobile() %></td>
								</tr>
								<tr>
									<td scope="col">Email :<%=e.getEmail() %></td>
								</tr>
								<tr>
									<td scope="col">Gender : <%= e.getGender() %></td>
								</tr>
								<tr>
									<td scope="col">Department : <%=e.getDepartment() %></td>
								</tr>
								<tr>
									<td scope="col">Language : <%=e.getLanguage()%></td>
								</tr>
								<tr>
									<td scope="col">Monthly Salary : <%=e.getSalary() %></td>
								</tr>

								<tr>
									<td scope="col">Enrollment Date : 12/02/2024</td>
								</tr>

								<tr>
									<td scope="col">Account Number : <%=e.getAccountNo() %></td>
								</tr>

								<tr>
									<td scope="col">Bank : <%=e.getBank() %></td>
								</tr>

								<tr>
									<td><a href="UpdateEmp.jsp" class="btn btn-warning">Update</a>
									</td>
								</tr>
						</table>

					</div>

					<div class="p-3 text-center m-4">
						<hr class="text-success" style="height: 3rem;">
						<h1>Update More Information !!</h1>
						<button type="button" class="btn btn-danger">
							<i class="fa fa-pencil-square"></i> Update Now
						</button>

					</div>


				</div>



			</div>
		</div>
	</div>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
		crossorigin="anonymous"></script>
</body>
</html>
