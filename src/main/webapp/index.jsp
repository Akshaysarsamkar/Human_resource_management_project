<%@page import="conn.DBConn"%>
<%@page import=" java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home</title>
<link rel="stylesheet" href="mycss.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link href="index,css" rel="stylesheet"
	integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css"
	integrity="sha512-DTOQO9RWCH3ppGqcWaEA1BIZOC6xxalwEsw9c2QQeAIftl+Vegovlnee1c9QX4TctnWMn13TZye+giMm8e2LwA=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN"
	crossorigin="anonymous">
</head>
<body class="">
	<%@include file="navbar.jsp"%>


	<div class="card-group bg-dark-subtle my-5">
		<div class="my-5 mx-3">
			<i class="fa fa-group" style="font-size: 200px; color: black;"></i>
			<h1 class="text-center">HRMS</h1>
		</div>
		<div class="my-5 ml">
			<i class="fa fa-group" style="font-size: 200px; color: black;"></i>
			<h1 class="text-center">HRMS</h1>
		</div>
		<div class="my-5 ml">
			<i class="fa fa-group" style="font-size: 200px; color: black;"></i>
			<h1 class="text-center">HRMS</h1>
		</div>
	</div>


	<%
	Connection c = DBConn.getcon();
	out.println(c);
	%>


	<div class="container my-4 border">

		<h1 class="text-center">HRMS SOPFTWARE</h1>
		<p>Imagine a world in which every single person on the planet is
			given free access to the sum of all human knowledge.... Wikipedia is
			a free online encyclopedia that anyone can edit, and millions already
			have. Wikipedia's purpose is to benefit readers by presenting
			information on all branches This is the front page of the Simple
			English Wikipedia. Wikipedias are places where people work together
			to write encyclopedias in different languages. We use Simple English
			words and grammar here. The Simple English Wikipedia is for everyone,
			such as children and adults who are learning English. There are
			247,875 articles on the Simple English Wikipedia. All of the pages
			are free to use. They have all been published under both the Creative
			Commons Attribution/Share-Alike License 4.0 International License and
			the GNU Free Documentation License. You can help here! You may change
			these pages and make new pages. Read the help pages and other good
			pages to learn how to write pages here. If you need help, you may ask
			questions at Simple talk.The open source community is the 💗 heart
			of GitHub and fundamental to how we build software today. See for
			yourself: 1. GitHub Sponsors helped support more than 5kindividuals
			and projects around the world 🌍 2. Open source projects on GitHub
			received a stunning 218 millioncontributions 🚀 in the last year
			alone 3. Every minutea developer creates a...</p>

	</div>
	<footer>
		<div class="bg-dark text-white text-center ">
			<h4>Created By Akshay Sarsamkar | &#169</h4>

			<div class="d-flex row justify-content-center">
				<div class="col-md-1">
					<a href="https://www.linkedin.com/akshaysarsamkar"><i
						class="fa-brands fa-linkedin" style="font-size: 25px;"></i></a>
				</div>

				<div class="col-md-1">
					<a href="https://github.com/Akshaysarsamkar"> <i
						class="fa-brands fa-square-github" style="font-size: 25px;"></i></a>
				</div>

				<div class="col-md-1">
					<a src="#"> <i class="fa-brands fa-square-instagram"
						style="font-size: 25px;"></i></a>
				</div>
			</div>
		</div>
	</footer>

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL"
		crossorigin="anonymous"></script>
</body>
</html>
