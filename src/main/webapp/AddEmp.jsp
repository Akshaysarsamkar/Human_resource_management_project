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


				<div class="border px-4 py-4 border-dark-subtle my-3 bg-light">
					<h1 class="text-center display-5"><i class="fa fa-plus" style="font-size:48px;color:skyblue"></i> Add Employee</h1>
					<form action="AddEmpsevrlet" method="post">
						<div class="mb-3">
							<label for="exampleInputtext" class="form-label">First
								Name</label> <input name="fname" type="text" class="form-control"
								id="exampleInputtext" aria-describedby="textHelp">

						</div>


						<div class="mb-3">
							<label for="exampleInputlastname" class="form-label">Last
								Name</label> <input name="lname" type="text" class="form-control"
								id="exampleInputlastname">
						</div>


						<div class="mb-3">
							<label for="exampleInputphone" class="form-label">Mobile
							</label> <input  name="mobile" type="number" class="form-control"
								id="exampleInputphone">
						</div>

						<div class="mb-3">
							<label for="exampleInputEmail1" class="form-label">Email
							</label> <input name="email" type="email" class="form-control" id="exampleInputEmail1"
								aria-describedby="emailHelp">

						</div>

						<div class="mb-3">
							<label for="exampleInputemergency" class="form-label">
								Password</label> <input name="Emergency" type="number" class="form-control"
								id="exampleInputemergency">
						</div>

						<div class="mb-3">
							<label for="exampleInputSalary" class="form-label">
								Salary</label> <input name="Salary" type="number" class="form-control"
								id="exampleInputSalary">
						</div>



						<div class="mb-3">
							<label for="exampleInputGender" class="form-label">
								Gender</label> <input name="Gender" type="text" class="form-control"
								id="exampleInputGender">
						</div>


						<div class="mb-3">
							<label for="exampleInputDepartment" class="form-label">
								Department</label> <input name="Department" type="text" class="form-control"
								id="exampleInputDepartment">
						</div>

						<div class="mb-3">
							<label for="exampleInputBank" class="form-label"> Bank</label> <input
								name="Bank" type="text" class="form-control" id="exampleInputBank">
						</div>


						<div class="mb-3">
							<label for="exampleInputNuban" class="form-label">Account No</label>
							<input name="accno"  type="number" class="form-control" id="exampleInputNuban">
						</div>

						<div class="mb-3">
							<label for="exampleInputLanguage" class="form-label">Language</label>
							<input name="Language" type="text" class="form-control" id="exampleInputLanguage">
						</div>
						
						<div class="mb-3">
							<label for="exampleInputThumbe" class="form-label">Thumbe</label>
							<input type="text" class="form-control" id="exampleInputThumbe">
						</div>
						
						
				<button type="submit" class="btn btn-outline-success text-center"><i class="fa fa-plus-circle"></i>Add Employee</button>
					</form>
				</div>



			</div>
		</div></div>
		<script
			src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
			integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
			crossorigin="anonymous"></script>
</body>
</html>
