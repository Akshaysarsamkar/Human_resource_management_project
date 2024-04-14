<%@page import="conn.DBConn"%>
<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Dashboard</title>

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



	<div class="container-fluid mt">
		<div class="row flex-nowrap">

			<%@include file='Adminhome.jsp'%>

			<%-- logout section as a navbar --%>
			<div class="col py-3 bg-body-secondary">

				<div class="dropdown pb-4 bg-warning p-4">
					<a href="#"
						class="d-flex align-items-center text-white text-decoration-none dropdown-toggle"
						id="dropdownUser1" data-bs-toggle="dropdown" aria-expanded="false">
						<img src="https://github.com/mdo.png	" alt="hugenerd" width="50"
						height="50" class="rounded-circle"> <span
						class="d-none d-sm-inline mx-1">Hello </span>
					</a>
					<ul class="dropdown-menu dropdown-menu-dark text-small shadow">

						<li><a class="dropdown-item" href="SignServlet">Sign out</a></li>
					</ul>
				</div>

				<%-- content section / organization info  --%>
				<div class="my-5 d-flex flex-row bg-light py-4">

					<div class="border border-dark-subtle bg-body p-5 mx-5"
						style="width: 18rem;">
						<div class="card-body">
							<h4 class="card-title text-end">Administration</h4>
							<h1 class="card-text text-end">3</h1>
							<h6 class="fw-light text-start">
								<i class="fa fa-address-card-o fw-light"></i> Administrator
							</h6>
						</div>

					</div>

					<%-- 	<div class="border border-dark-subtle bg-body p-5 mx-5"
						style="width: 18rem;">
						<div class="card-body">
							<h4 class="card-title text-end">Department</h4>
							<h1 class="card-text text-end">5</h1>
							<h6 class="fw-light text-start">
								<i class="fa fa-bar-chart fw-light"></i> Avialiable Department
							</h6>
						</div>

					</div> --%>

					<div class="border border-dark-subtle bg-body p-5 mx-5"
						style="width: 18rem;">
						<div class="card-body">
							<h4 class="card-title text-end">Employees</h4>
							<h1 class="card-text text-end">23</h1>
							<h6 class="fw-light text-start">
								<i class="fa fa-user-o fw-light"></i> Total Present Emp
							</h6>
						</div>

					</div>

					<div class="border border-dark-subtle bg-body p-5 mx-5"
						style="width: 18rem;">
						<div class="card-body">
							<h4 class="card-title text-end">Employees</h4>
							<h1 class="card-text text-end">3</h1>
							<h6 class="fw-light text-start">
								<i class="fa fa-user-times fw-light"></i> On Leave Emp
							</h6>
						</div>

					</div>
				</div>


				<%-- New Employees Details --%>
				<div class="py-3 border border-dark-subtle bg-light">
					<h1 class="text-center display-6">New Employees</h1>
					<hr class="text-danger">

					<%-- table --%>
					<table class="table">
						<thead>
							<tr>
								<th scope="col">Image</th>
								<th scope="col">First Name</th>
								<th scope="col">Last Name</th>
								<th scope="col">Mobile</th>
								<th scope="col">Action</th>
							</tr>
						</thead>
						<tbody>

							<%
							int eid, salary;
							String FirstName, LastName, Email, Mobile, Gender, Bank, AccountNo, Language, Department, Emergency;
								Connection con = DBConn.getcon();
								Statement stm = con.createStatement();
	
								ResultSet res = stm.executeQuery("select * from Employee");
	
								while (res.next()) {
	
									eid = res.getInt("EmpId");
									FirstName = res.getString("FirstName");
									LastName = res.getString("LastName");
									Mobile = res.getString("Mobile");
							%>
						
						<tbody>
							<tr>
								<th scope="row"><%=eid%></th>
								<td><%=FirstName%></td>
								<td><%=LastName%></td>
								<td><%=Mobile%></td>
								<td>
									<form  action="ShowEmpinfo" method="post">
										<!-- <a href="ViewDetails.jsp?id=<%=eid%>"
											class="btn bg-warning bg-gradient">View </a> -->
											
											
											<input type="hidden" name="id" value="<%=eid%>">
											<input type="submit" value="View" class="btn btn-danger">
									</form>
								</td>
							</tr>
							<%
							}
							%>

							<%--
							
							
							
						<tbody>
							<tr>
								<th scope="row">1</th>
								<td>Mark</td>
								<td>Otto</td>
								<td>@mdo</td>
								<td><a href="ViewDetails.jsp"
									class="btn bg-warning bg-gradient
">View </a></td>
							</tr>
							<tr>
								<th scope="row">2</th>
								<td>Jacob</td>
								<td>Thornton</td>
								<td>@fat</td>
								<td><a href="ViewDetails.jsp"
									class="btn bg-warning bg-gradient
">View </a></td>
							</tr>
							<tr>
								<th scope="row">3</th>
								<td>Larry the Bird</td>
								<td>@twitter</td>
								<td>@mdo</td>
								<td><a href="ViewDetails.jsp"
									class="btn bg-warning bg-gradient
">View </a></td>
							</tr>
							
							
							
							
							
							
							
							 --%>












						</tbody>
					</table>
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
