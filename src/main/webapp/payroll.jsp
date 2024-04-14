<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="conn.DBConn"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>PayRoll</title>

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
				<div class="mt-3 mx-2">
					<h1>Submitted Applications</h1>
				</div>

				<%-- New Employees Details --%>
				<div class="p-3 border border-dark-subtle bg-light ">



					<%-- table --%>
					<table class="table">
						<thead>
							<tr>
								<th scope="col">Image</th>

								<th scope="col">First Name</th>
								<th scope="col">Last Name</th>
								<th scope="col">Account Number</th>
								<th scope="col">BankName</th>
								<th scope="col">Salary</th>
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
								AccountNo = res.getString("AccountNo");
								Bank = res.getString("BankName");
								salary = Integer.parseInt(res.getString("salary"));
							%>


							<tr>
								<th scope="row">1</th>
								<td><%= FirstName%></td>
								<td><%=LastName %></td>
								<td><%=AccountNo %></td>
								<td><%=Bank %></td>
								<td><%=salary %></td>
								<td>
									<button type="button" class="btn btn-danger"
										onclick="Notification();">Pay</button>
								</td>
							</tr>





							<%
							}
							%>



				<%-- 		<tr>
								<th scope="row">1</th>
								<td>Mark</td>

								<td>Mark</td>
								<td>Otto</td>
								<td>@mdo</td>
								<td>@mdo</td>
								<td>
									<button type="button" class="btn btn-danger"
										onclick="Notification();">Pay</button>
								</td>
							</tr>
							<tr>
								<th scope="row">2</th>
								<td>Jacob</td>
								<td>Mark</td>

								<td>Thornton</td>
								<td>@fat</td>
								<td>@mdo</td>
								<td>
									<button type="button" class="btn btn-danger"
										onclick="Notification();">Pay</button>
								</td>
							</tr>
							<tr>
								<th scope="row">3</th>
								<td>Larry the Bird</td>
								<td>@twitter</td>
								<td>Mark</td>

								<td>@mdo</td>
								<td>@mdo</td>
								<td>
									<button type="button" class="btn btn-danger"
										onclick="Notification();">Pay</button>
							</tr> 
							--%>	
						</tbody>
					</table>
				</div>
			</div>

		</div>
	</div>
	<script>
		function Notification() {

			swal(
					"Transactions Successful!",
					"the sum of #80000 has been deposite into the account Number 1230456987 at SBI Bank Pic!",
					"success");

		}
	</script>
	<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
		crossorigin="anonymous"></script>
</body>
</html>
