<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.Date"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Leave</title>

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


				<%-- Leave section --%>

				<div class="py-3 border border-dark-subtle bg-light my-3">
					<h1 class="display-5 text-center" style="color: skyblue;">
						<i class="fa fa-check-circle-o"></i> Employees Attendence
					</h1>




					<div class="border border-dark-subtle bg-light p-4 mx-3">
						<p>***All Field Are Required</p>
						<hr class="text-danger">

						<form>
							<div class="mb-3">
								<label for="exampleInputsdate" class="form-label">Start
									Date </label> <input type="date" class="form-control"
									id="exampleInputsdate" aria-describedby="emailHelp">

							</div>

							<div class="mb-3">
								<label for="exampleInputedate" class="form-label">End
									Date </label> <input type="date" class="form-control"
									id="exampleInputedate" aria-describedby="emailHelp">

							</div>

							<div class="mb-3">
								<label for="exampleInputstatus" class="form-label">Status
								</label> <select class="form-select" aria-label="Size 3 select example"
									id="exampleInputstatus">
									<option value="1">Approval</option>
									<option value="2">Unapproval</option>
									<option value="3">Decline</option>
								</select>
							</div>


							<div class="mb-3">
								<label for="exampleInputemp" class="form-label">Employee
								</label> <select class="form-select" aria-label="Size 3 select example"
									id="exampleInputemp">
									<option value="0">Select Employee</option>
									<option value="1">22222222222221</option>
									<option value="2">122222222</option>
									<option value="3">dddddddddddddddd 2</option>
								</select>
							</div>

							<centre>
							<button type="submit" class="btn btn-outline-success"
								style="width: 100%;">
								<i class="fa fa-check"></i> Submit
							</button>
							</centre>
						</form>
					</div>
				</div>

				<%-- approval Attendance List --%>
				<div class="my-3 border border-dark-subtle bg-light p-4">

					<h1 class="text-center display-6 text-primary">
						<i class="fa fa-sign-in" style="font-size: 36px"></i> Approval Applications
							</h1>

					<p class="">this is a list of Approval Staffer Leave Applications</p>




					<hr class="text-danger">

					<%-- table --%>
					<table class="table">
						<thead>
							<tr>
								<th scope="col">Start Date</th>
								<th scope="col">EndDate</th>
								<th scope="col">Status</th>
								<th scope="col">Employee</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<th scope="row">1</th>
								<td>Mark</td>
								<td>Otto</td>
								<td><button type="button" class="btn btn-primary">
										<i class="fa fa-sign-in"></i> SignOut
									</button></td>
							</tr>
							<tr>
								<th scope="row">2</th>
								<td>Jacob</td>
								<td>Thornton</td>
								<td><button type="button" class="btn btn-primary">
										<i class="fa fa-sign-in"></i> SignOut
									</button></td>
							</tr>
							<tr>
								<th scope="row">3</th>
								<td>Larry the Bird</td>
								<td>@twitter</td>
								<td><button type="button" class="btn btn-primary">
										<i class="fa fa-sign-in"></i> SignOut
									</button></td>
							</tr>
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
