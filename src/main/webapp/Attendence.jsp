<%@page import="conn.DBConn"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.Date"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Attendence</title>

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
				<%-- attendence section --%>

				<div class="py-3 border border-dark-subtle bg-light my-3">
					<h1 class="display-5 text-center" style="color: skyblue;">
						<i class="fa fa-check-circle-o"></i> Employees Attendence
					</h1>


					<%
					Date date = new Date();
					%>


					<div class="border border-dark-subtle bg-light p-4 mx-3">
						<p>***All Field Are Required</p>
						<hr class="text-danger">

						<form action="EmpAttendence" method="post">
							<div class="mb-3">
								<label for="exampleInputdate" class="form-label">Date</label> <input
									name="date" type="" class="form-control" id="exampleInputdate"
									aria-describedby="emailHelp" value="<%=date%>">

							</div>
							<div class="mb-3">
								<label for="exampleInputstaffer" class="form-label">Staffer
								</label> <select class="form-select" aria-label="Size 3 select example"
									id="exampleInputstaffer" name="staffer">
									<option selected>-----------------</option>



									<%
									int eid, salary;
									String FirstName, LastName, Email, Mobile, Gender, Bank, AccountNo, Language, Department, Emergency;
									Connection con = DBConn.getcon();
									Statement stm = con.createStatement();

									ResultSet res = stm.executeQuery("select * from Employee");
									int i = 0;
									while (res.next()) {
										i++;
										FirstName = res.getString("FirstName");
										LastName = res.getString("LastName");
									%>
									<option value="<%=FirstName + " " + LastName%>"><%=FirstName + " " + LastName%></option>
									<%
									}
									%>

									<%-- 	<option value="1">One</option>
									<option value="2">Two</option>
									<option value="3">Three</option>--%>
								</select>
							</div>






							<div class="mb-3">
								<label for="" exampleInputstatus"" class="form-label">Status
								</label> <select class="form-select form-select-sm"
									aria-label="Small select example" name="status">

									<option value="Present">Present</option>
									<option value="Absents">Absents</option>


								</select>
							</div>
							<centre>
							<button type="submit" class="btn btn-outline-success"
								style="width: 100%;">
								<i class="fa fa-check"></i> SignIn
							</button>
							</centre>
						</form>
					</div>
				</div>

				<div class="my-3 border border-dark-subtle bg-light p-4">

					<h1 class="text-center display-6 text-primary">
						<i class="fa fa-sign-in" style="font-size: 36px"></i> Signed In
						Staffer(s)
					</h1>

					<p class="">this is a list of staffer which is present</p>




					<hr class="text-danger">

					<%-- table --%>
					<table class="table">
						<thead>
							<tr>
								<th scope="col">Date</th>
								<th scope="col">FirstIn(Arrival)</th>
								<th scope="col">LastOut(Departure)</th>
								<th scope="col">Name</th>
								<th scope="col">Action</th>
							</tr>
						</thead>
						<tbody>

							<%
							Statement st1 = con.createStatement();

							ResultSet res1 = st1.executeQuery("select * from attendence");
							while (res1.next()) {
								String tdate = res1.getString("date");
								String status = res1.getString("status");
								String intime = res1.getString("intime");
								String staffer = res1.getString("staffer");
								String outtime = res1.getString("outtime");
							%>

							<tr>
								<th scope="row"><%=tdate %></th>
								<td><%=intime %></td>
								<td><%=outtime %></td>
								<td><%=staffer %></td>
								<td><button type="button" class="btn btn-primary">
										<i class="fa fa-sign-in"></i> SignOut
									</button></td>
							</tr>

							<%
							}
							%>




				<%-- 		<tr>
								<th scope="row">1</th>
								<td>Mark</td>
								<td>Otto</td>
								<td>@mdo</td>
								<td><button type="button" class="btn btn-primary">
										<i class="fa fa-sign-in"></i> SignOut
									</button></td>
							</tr>
							<tr>
								<th scope="row">2</th>
								<td>Jacob</td>
								<td>Thornton</td>
								<td>@fat</td>
								<td><button type="button" class="btn btn-primary">
										<i class="fa fa-sign-in"></i> SignOut
									</button></td>
							</tr>
							<tr>
								<th scope="row">3</th>
								<td>Larry the Bird</td>
								<td>@twitter</td>
								<td>@mdo</td>
								<td><button type="button" class="btn btn-primary">
										<i class="fa fa-sign-in"></i> SignOut
									</button></td>
							</tr> --%>	
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
