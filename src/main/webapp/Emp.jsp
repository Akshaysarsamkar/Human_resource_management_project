<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="conn.DBConn"%>
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
						class="d-none d-sm-inline mx-1">Hello Akshay</span>
					</a>
					<ul class="dropdown-menu dropdown-menu-dark text-small shadow">

						<li><a class="dropdown-item" href="Login.jsp">Sign out</a></li>
					</ul>
				</div>



				<%-- New Employees Details --%>
				<div class="py-3 border border-dark-subtle bg-light my-3">

					<h4 class="px-5 display-6">All Employees</h4>
					<a href="AddEmp.jsp" class="mx-5 mt-2 btn btn-primary"
						style="width: 15%;"> Add Employee <i class="fa-solid fa-plus"
						style="font-size: 15px;"></i>
					</a>



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
									<form action="ShowEmpinfo" method="post">




										<input type="hidden" name="id" value="<%=eid%>"> 
										<div class="dropdown">
											<a class="btn btn-success rounded-pill dropdown-toggle"
												href="#" role="button" data-bs-toggle="dropdown"
												aria-expanded="false"> <i class="fa fa-plus-circle"></i>
												Manage
											</a>

											<ul class="dropdown-menu">
												<li class="d-flex"> <i
														class="fa-solid fa-eye text-success"></i><input
											type="submit" value="View" class="btn dropdown-item"></li>
														
														
												<li><a class="dropdown-item" href="UpdateEmp.jsp"><i
														class="fa fa-edit text-info"></i>Edit</a></li>
														
														
												<hr class="text-danger">
												
												<li><a class="dropdown-item" href="deleteemp.jsp?eid=<%=eid%>"><i
														class="fa fa-trash-o text-danger"></i> Delete</a></li>
											</ul>
										</div>

									</form>
								</td>
							</tr>
							<%
							}
							
							%>







							<!-- 				<tr>
								<th scope="row">1</th>
								<td>Mark</td>
								<td>Otto</td>
								<td>@mdo</td>
								<td><div class="dropdown">
										<a class="btn btn-success rounded-pill dropdown-toggle"
											href="#" role="button" data-bs-toggle="dropdown"
											aria-expanded="false"> <i class="fa fa-plus-circle"></i>
											Manage
										</a>........................................................
										

										<ul class="dropdown-menu">
											<li><a href="ViewDetails.jsp" class="btn"><i
													class="fa-solid fa-eye text-success"></i> View </a></li>
											<li><a class="dropdown-item" href="UpdateEmp.jsp"><i
													class="fa fa-edit text-info"></i> Edit</a></li>
											<hr class="text-danger">
											<li><a class="dropdown-item" href="#"><i
													class="fa fa-trash-o text-danger"></i> Delete</a></li>
										</ul>
									</div></td>
							</tr>
							<tr>
								<th scope="row">2</th>
								<td>Jacob</td>
								<td>Thornton</td>
								<td>@fat</td>
								<td><div class="dropdown">
										<a class="btn btn-success rounded-pill dropdown-toggle"
											href="#" role="button" data-bs-toggle="dropdown"
											aria-expanded="false"> <i class="fa fa-plus-circle"></i>
											Manage
										</a>

										<ul class="dropdown-menu">
											<li><a href="ViewDetails.jsp" class="btn"><i
													class="fa-solid fa-eye text-success"></i> View </a></li>
											<li><a class="dropdown-item" href="UpdateEmp.jsp"><i
													class="fa fa-edit text-info"></i> Edit</a></li>
											<hr class="text-danger">
											<li><a class="dropdown-item" href="#"><i
													class="fa fa-trash-o text-danger"></i> Delete</a></li>
										</ul>
									</div></td>
							</tr>
							<tr>
								<th scope="row">3</th>
								<td>Larry the Bird</td>
								<td>@twitter</td>
								<td>@mdo</td>
								<td>
									<div class="dropdown">
										<a class="btn btn-success rounded-pill dropdown-toggle"
											href="#" role="button" data-bs-toggle="dropdown"
											aria-expanded="false"> <i class="fa fa-plus-circle"></i>
											Manage
										</a>

										<ul class="dropdown-menu">
											<li><a href="ViewDetails.jsp" class="btn"><i
													class="fa-solid fa-eye text-success"></i> View </a></li>
											<li><a class="dropdown-item" href="UpdateEmp.jsp"><i
													class="fa fa-edit text-info"></i> Edit</a></li>
											<hr class="text-danger">
											<li><a class="dropdown-item" href="#"><i
													class="fa fa-trash-o text-danger"></i> Delete</a></li>
										</ul>
									</div>
								</td>
							</tr>  -->
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
