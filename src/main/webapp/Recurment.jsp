<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Recurment</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css" integrity="sha512-DTOQO9RWCH3ppGqcWaEA1BIZOC6xxalwEsw9c2QQeAIftl+Vegovlnee1c9QX4TctnWMn13TZye+giMm8e2LwA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
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

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">

</head>
<body>
       <%@include file="navbar.jsp" %>
       
       <div class="p-5 container ">

		<form class="card  border-0" style="align-items: center;" action="Recrument" method="post">

			<div class="card-body col-md-6">
     <h1><center><i class="fa-solid fa-registered"></i></center>  </h1>
				<h1 class="text-center display-6 ">Candidate Application Form</h1>
				<div class="border border-black p-3 bg-light">
					
					<div class="mb-3">
						<label for="exampleInputPassword1" class="form-label">First Name</label>
						<input type="text" class="form-control"
							id="exampleInputtext" name="fname">
					</div>
					
					<div class="mb-3">
						<label for="exampleInputPassword1" class="form-label">Last Name</label>
						<input type="text" class="form-control"
							id="exampleInputtext"  name="lname">
							
					</div>					<div class="mb-3">
						<label for="exampleInputPassword1" class="form-label">Position</label>
						<input type="text" class="form-control"
							id="exampleInputPassword1"  name="position">
					</div>
					<div class="mb-3">
						<label for="exampleInputEmail1" class="form-label">Email</label>
						 <input type="email" class="form-control"
							id="exampleInputEmail1" aria-describedby="emailHelp" name="email">
					</div>
					<div class="mb-3">
						<label for="exampleInputPassword1" class="form-label">Phone</label>
						<input type="text" class="form-control"
							id="exampleInputtext" name="phone">
					</div>
					<div class="d-grid gap-2">
						<button class="btn btn-primary" type="submit">Submit</button>
					</div>
					
					
				</div>
			</div>
		</form>
	</div>
</body>
</html>