<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Leaves</title>

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

			<%@include file="Empnavbar.jsp"%>

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

				<hr class="text-danger">
				<h1 class="display-5 fw-light text-center">Apply For Leaves Day</h1>
				<hr class="text-danger">

				<%-- Leave Application Form --%>
				<div
					class="border px-4 py-4 border-dark-subtle my-3 bg-body-secondary">
					<form  method="post" action="Addleave">
						<h3 class="mb-3">Employees Leave Form</h3>
						<div class="mb-3">
							<label for="exampleInputsdate" class="form-label">Staring
								Date </label> <input name="sdate" type="date" class="form-control"
								id="exampleInputsdate" aria-describedby="emailHelp">

						</div>
						<div class="mb-3">
							<label for="exampleInputedate" class="form-label">Ending
								Date</label> <input name="edate" type="date" class="form-control"
								id="exampleInputedate">
						</div>

						<div class="mb-3">
							<label for="exampleInputtype" class="form-label">Your
								Leave Type </label> <select name="ltype" class="form-select form-select-lg mb-3"
								aria-label="Large select example" id="exampleInputtype">
								<option selected>Click Here To Select Any</option>
								<option value="Casual Leave">Casual Leave</option>
								<option value="Medical Leave">Medical Leave</option>
								<option value="Voting Leave">Voting Leave</option>
								<option value="Paternity Leave">Paternity Leave</option>
								<option value="Maternity Leave">Maternity Leave</option>
								<option value="Personal Time Off">Personal Time Off</option>
								<option value="Religious Holiday">Religious Holiday</option>
								<option value="Compensatory Leave">Compensatory Leave</option>
							</select>
						</div>

						<div class="mb-3">
							<label for="floatingTextarea" class="form-label">Describe
								Your Condition Date</label>
							<textarea name="dec" class="form-control" placeholder="Leave a comment here"
								id="floatingTextarea"></textarea>

						</div>


						<button type="submit" class="btn btn-primary">Submit</button>
					</form>
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
