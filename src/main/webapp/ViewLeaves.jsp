<%@page import="conn.DBConn"%>
<%@page import="java.sql.*"%>
<%@page import="entity.Emp"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.Date"%>


<%
//System.out.println("11111");
Emp a = (Emp) request.getSession().getAttribute("empinfo");

if (a == null) {
	response.sendRedirect("Login.jsp");
}
int i = a.getEid();
%>





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
				<h1 class="display-5 fw-light text-center">My Leaves History</h1>
				<hr class="text-danger">

				<%-- leaves History --%>


				<%
				Date date = new Date();
				%>


				<div
					class="border px-4 py-4 border-dark-subtle my-3 bg-body-secondary">

					<h3 class="mb-3">Leave History Table</h3>

					<table class="table table-striped">
						<thead>
							<tr>
								<th scope="col">#</th>
								<th scope="col">Type</th>
								<th scope="col">condition</th>
								<th scope="col">From</th>
								<th scope="col">To</th>
								<th scope="col">Applied</th>
								<th scope="col">Admin Remark</th>
							</tr>
						</thead>
						<tbody>
							<%
							Connection con = DBConn.getcon();
							Statement stm = con.createStatement();

							int no=0;
							ResultSet res = stm.executeQuery("select * from leaves where empid = " + i);
							String sdate, edate, status, des, type;
							while (res.next()) {

								sdate = res.getString("sdate");
								edate = res.getString("edate");
								type = res.getString("leavetype");
								status = res.getString("status");
								des = res.getString("decs");
								no++;
							%>



							<tr>
								<th scope="row"><%=no %></th>
								<td><%=type %></td>
								<td><%=des %></td>
								<td><%=sdate %></td>
								<td><%=edate %></td>
								<td><%=date%></td>
								<td><%=status %></td>
							</tr>

							<%
							}
							%>
							<%-- 			<tr>
								<th scope="row">2</th>
								<td>personal Leave</td>
								<td>this is required for me</td>
								<td>15-03-2024</td>
								<td>25-03-2024</td>
								<td><%=date%></td>
								<td>approval</td>
							</tr>
							<tr>
								<th scope="row">3</th>
								<td>Maternity Leave</td>
								<td>this is required for me ed for mhtfyhtft ghy</td>
								<td>15-03-2024</td>
								<td>25-03-2024</td>
								<td><%=date%></td>
								<td>decline</td>
							</tr>
							--%>
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
