<%@page import="conn.DBConn"%>
<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Recruments</title>

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

				<div class="dropdown pb-4 bg-warning p-4 justify-content-end">
					<a href="#"
						class="d-flex align-items-center text-white text-decoration-none dropdown-toggle"
						id="dropdownUser1" data-bs-toggle="dropdown" aria-expanded="false">
						<img src="https://avatars.githubusercontent.com/u/112844228?v=4" alt="hugenerd" width="50"
						height="50" class="rounded-circle"> <span
						class="d-none d-sm-inline mx-1">Hello Akshay</span>
					</a>
					<ul class="dropdown-menu dropdown-menu-dark text-small shadow">

						<li><a class="dropdown-item" href="Login.jsp">Sign out</a></li>
					</ul>
				</div>
				<div class="mt-3 mx-2">
					<h1>Submitted Applications</h1>
				</div>

				<%-- New Employees Details --%>
				<div class="p-3 border border-dark-subtle bg-light ">

					<%-- table --%>
					<table class="table">
						<thead>
							<tr>
								<th scope="col">First Name</th>
								<th scope="col">Last Name</th>
								<th scope="col">Mobile</th>
								<th scope="col">Email</th>
								<th scope="col">Position</th>
								<th scope="col">Manage</th>

							</tr>
						</thead>


						<%
						int id;
						String fname, lname, position, email, phone;
						Connection c = DBConn.getcon();

						Statement st = c.createStatement();

						ResultSet rs = st.executeQuery("select * from recrument");

						while (rs.next()) {
							id = rs.getInt("rid");
							fname = rs.getString("Fname");
							lname = rs.getString("lname");
							position = rs.getString("position");
							email = rs.getString("email");
							phone = rs.getString("phone");
						%>

						<tbody>
							<tr>
								<th scope="row"><%= id %></th>
								<td><%= fname %></td>
								<td><%= lname %></td>
								<td><%= position %></td>
								<td><%= email %></td>
								<td>
									<a type="button" class="btn btn-danger" href="delete.jsp?rid=<%=id%>">Delete</a>
								</td>
							</tr>
						</tbody>
						<%
						}
						%>
						</table>
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
