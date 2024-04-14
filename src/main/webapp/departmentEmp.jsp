<%@page import="java.util.Random"%>
<%@page import="conn.DBConn"%>
<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Department Employees</title>

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



	<%
	String pic[] = { "https://github.com/mdo.png","https://www.shareicon.net/data/2016/09/15/829452_user_512x512.png" ,"https://github.com/mdo.png","https://www.pngall.com/wp-content/uploads/12/Avatar-Profile-PNG-Photos.png","https://tse1.mm.bing.net/th?id=OIP.hCfHyL8u8XAbreXuaiTMQgHaHZ&pid=Api&P=0&h=180","https://preview.keenthemes.com/metronic-v4/theme/assets/pages/media/profile/profile_user.jpg"};
	%>


    
  
     
 




	<div class="container-fluid mt">
		<div class="row flex-nowrap">

			<%@include file="Adminhome.jsp"%>

			<%-- logout section as a navbar --%>
			<div class="col py-3 bg-body-secondary">

				<div class="dropdown pb-4 bg-warning p-4">
					<a href="#"
						class="d-flex align-items-center text-white text-decoration-none dropdown-toggle"
						id="dropdownUser1" data-bs-toggle="dropdown" aria-expanded="false">
						<img src="<%=pic[0]%>" alt="hugenerd" width="50" height="50"
						class="rounded-circle"> <span
						class="d-none d-sm-inline mx-1">Hello Akshay</span>
					</a>
					<ul class="dropdown-menu dropdown-menu-dark text-small shadow">

						<li><a class="dropdown-item" href="Login.jsp">Sign out</a></li>
					</ul>
				</div>

				<div class="p-3 my-2">
					<h1 class="display-6 text-center">Associated Employees</h1>

				</div>



 <div class="container">
    <%-- Open the initial row --%>
    <div class="row">
        <%
        Connection con = DBConn.getcon();
        Statement stm = con.createStatement();
        ResultSet res = stm.executeQuery("select * from Employee");

        int count = 0;
        while (res.next()) {
        	  Random random = new Random();
              int randomValue = random.nextInt(6);
            String name = res.getString("firstname");
            int eid = res.getInt("empid");
            %>
            <div class="col-md-6 mb-3 ">
                <div class="card employee-card">
                    <div class="d-flex justify-content-center align-items-center" style="height: 200px;">
                        <img src="<%= pic[randomValue] %>" class="mt-3 card-img-top rounded-circle" alt="..." style="max-height: 100%; max-width: 50%;">
                        <!-- Adjusted max-width to 80% -->
                    </div>
                    <div class="card-body text-center">
                        <h5 class="card-title"><%= name %></h5>
                        
                        <form  action="ShowEmpinfo" method="post">
										<!-- <a href="ViewDetails.jsp?id=<%=eid%>"
											class="btn bg-warning bg-gradient">View </a> -->
											
											
											<input type="hidden" name="id" value="<%=eid%>">
											<input type="submit" value="View Details" class="btn btn-info">
									</form>
                        
                        
                       
                    </div>
                </div>
            </div>
            <%
            count++;
            // Close the row and open a new one after every 2 cards
            if (count % 2 == 0) {
            %>
            </div>
            <div class="row">
            <%
            }
        }
        %>
    </div>
</div>







				<%-- Department Employees


				<div class="p-3 border border-dark-subtle bg-light ">

					<div class="d-flex p-2">

						<div class="m-5" style="width: 18rem;">
							<img src="<%=pic[2]%>" class="card-img-top rounded-circle"
								alt="...">
							<div class="card-body text-center">
								<h4 class="card-text ">Akshay sarsamkar</h4>
								<a href="ViewDetails.jsp" class="btn btn-info">View Details</a>
							</div>
						</div>


						<div class="m-5" style="width: 18rem;">
							<img
								src="https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEg_h6iAMCmvNWi6f7zmfJuk6G90EIoZlLABi5PULRhVbI4ni7MPShmOd3pUuLa9vcxdozbJ09agBDc-C7cU80iBUKkwW3hMsW1dxE0j7qqAUeGSYf9dF7UcfEOjOkuZ2S-ND05DDvQaKvQUvgQ5vaSYneqETdwOUNqSqxF_JLd61r_CLiN1sxR1eNvn9yzW/w1200-h630-p-k-no-nu/IMG-20240229-WA0007.jpg"
								class="card-img-top rounded-circle" alt="...">
							<div class="card-body text-center">
								<h4 class="card-text ">Akshay sarsamkar</h4>
								<a href="ViewDetails.jsp" class="btn btn-info">View Details</a>
							</div>
						</div>

						<div class="m-5" style="width: 18rem;">
							<img
								src="https://tse3.mm.bing.net/th?id=OIP.s3RJ4bcuEf9d2BBzCCB_0wHaHa&pid=Api&P=0&h=180"
								class="card-img-top rounded-circle" alt="...">
							<div class="card-body text-center">
								<h4 class="card-text ">Akshay sarsamkar</h4>
								<a href="ViewDetails.jsp" class="btn btn-info">View Details</a>
							</div>
						</div>

					<div class="m-5" style="width: 18rem;">
							<img
								src="https://www.pngall.com/wp-content/uploads/12/Avatar-Profile-PNG-Photos.png"
								class="card-img-top rounded-circle" alt="...">
							<div class="card-body text-center">
								<h4 class="card-text ">Akshay sarsamkar</h4>
								<a href="ViewDetails.jsp" class="btn btn-info">View Details</a>
							</div>
						</div> --%>

					</div> --%>



					<%-- Department Employees --%>


					<%--	<div class="p-3 bg-light ">

						<div class="d-flex p-2">

						<div class="m-5" style="width: 18rem;">
								<img
									src="https://tse3.mm.bing.net/th?id=OIP.2i5UaEHaQM3PYAYXQyM1AAAAAA&pid=Api&P=0&h=180"
									class="card-img-top rounded-circle" alt="...">
								<div class="card-body text-center">
									<h4 class="card-text ">Akshay sarsamkar</h4>
									<a href="ViewDetails.jsp" class="btn btn-info">View Details</a>

								</div>
							</div> 


							<div class="m-5" style="width: 18rem;">
								<img
									src="https://preview.keenthemes.com/metronic-v4/theme/assets/pages/media/profile/profile_user.jpg"
									class="card-img-top rounded-circle" alt="...">
								<div class="card-body text-center">
									<h4 class="card-text ">Akshay sarsamkar</h4>
									<a href="ViewDetails.jsp" class="btn btn-info">View Details</a>

								</div>
							</div>

							<div class="m-5" style="width: 18rem;">
								<img
									src="https://www.pngfind.com/pngs/m/317-3177131_636682202684372240-user-profile-photo-round-hd-png-download.png"
									class="card-img-top rounded-circle" alt="...">
								<div class="card-body text-center">
									<h4 class="card-text ">Akshay sarsamkar</h4>
									<a href="ViewDetails.jsp" class="btn btn-info">View Details</a>

								</div>
							</div>

							<div class="m-5" style="width: 18rem;">
								<img
									src="https://tse1.mm.bing.net/th?id=OIP.hCfHyL8u8XAbreXuaiTMQgHaHZ&pid=Api&P=0&h=180"
									class="card-img-top rounded-circle" alt="...">
								<div class="card-body text-center">
									<h4 class="card-text ">Akshay sarsamkar</h4>
									<a href="ViewDetails.jsp" class="btn btn-info">View Details</a>

								</div>
							</div>
							 --%>
							
							
							
							
							
							

						</div>

					</div>
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
