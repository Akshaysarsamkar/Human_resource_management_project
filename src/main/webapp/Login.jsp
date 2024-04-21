
<%@page import="entity.Massage"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>
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

		<form class="card  border-0" style="align-items: center;"
			action="LoginServlet" method="post">

			<div class="card-body col-md-6">
				<p class="text-center">
					. <i class="fa fa-universal-access"
						style="font-size: 98px; color: skyblue"></i>
				</p>
				<h1 class="text-center display-6 ">Administrator Sign in Portal</h1>
				<div class="border border-black p-3 bg-light">


					<%
					Massage a = (Massage) request.getSession().getAttribute("invalidmsg");

					if (a != null) {
					%>
					<div class="alert alert-danger container-fluid" role="alert"><%=a.getMsg()%></div>

					<%
					session.removeAttribute("invalidmsg");
					}
					%>


					<div class="mb-3">
						<label for="exampleInputPassword1" class="form-label">
							UserName</label> <input name="uname" type="text" class="form-control"
							id="exampleInputtext" required>
					</div>
					<div class="mb-3">
						<label for="exampleInputPassword1" class="form-label">
							Password</label> <input name="pass" type="pass" class="form-control"
							id="exampleInputtext" required>
					</div>


					<div class="text-center">
						<p>
							Not a Member ? <a href="Signup.jsp">Create new Account</a>
						</p>
						<p>
							Employees ? <a href="EmpLogin.jsp">Login</a>
						</p>
					</div>

					<div class="d-grid gap-2">
						<button class="btn btn-primary" type="submit">Login</button>
					</div>
				</div>
			</div>
		</form>
	</div>


</body>
</html>
