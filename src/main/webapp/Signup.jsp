<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>SignUp</title>

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

	<%@include file="navbar.jsp"%>


	<div class="p-5 container mt-5 ">

		<form action="AddAdmin" method="post" class="card  border-0" style="align-items: center;">

			<div class="card-body col-md-6">

				<div>
					<h1 class="text-center ">
						<i class="fa-solid fa-user-plus" style="font-size:50px; color:skyblue;"></i>
					</h1>
				</div>
				<h1 class="text-center display-6 ">Administrator Registration</h1>
				<div class="border border-black p-3 bg-light">

					<div class="mb-3">
						<label for="exampleInputPassword1" class="form-label">
							UserName</label> <input type="text" class="form-control"
							id="exampleInputtext" name="uname">
					</div>
					<div class="mb-3">
						<label for="exampleInputPassword1" class="form-label">
							Password</label> <input type="text" class="form-control"
							id="exampleInputtext" name="pass">
					</div>
					<div class="mb-3">
						<label for="exampleInputPassword1" class="form-label">
							Email</label> <input type="text" class="form-control"
							id="exampleInputtext" name="email">
					</div>

					<div class="mb-3">
						<label for="exampleInputPassword1" class="form-label">
							Phone No</label> <input type="file" class="form-control"
							id="exampleInputtext" name="img">
					</div>

					<div class="text-center">
						<p>
							Not a Member ? <a href="Login.jsp">Login</a>
						</p>
					</div>

					<div class="d-grid gap-2">
						<button class="btn btn-primary" type="submit">Register</button>
					</div>
				</div>
			</div>
		</form>
	</div>




</body>
</html>
