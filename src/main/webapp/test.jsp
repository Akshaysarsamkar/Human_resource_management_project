<%@page import="conn.DBConn"%>
<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Employee Details</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
<style>
  .employee-card {
    width: 18rem;
  }
</style>
</head>
<body>
    <div class="container">
        <div class="row">
            <%
            String pic[] = { "https://github.com/mdo.png", "https://www.shareicon.net/data/2016/09/15/829452_user_512x512.png",
                    "https://github.com/mdo.png" };

            Connection con = DBConn.getcon();
            Statement stm = con.createStatement();
            ResultSet res = stm.executeQuery("select * from Employee");

            int count = 0;
            while (res.next()) {
                String name = res.getString("firstname");
                %>
                <div class="col-md-4 mb-3">
                    <div class="card employee-card">
                        <img src="<%= pic[count % 3] %>" class="card-img-top rounded-circle" alt="...">
                        <div class="card-body text-center">
                            <h5 class="card-title"><%= name %></h5>
                            <a href="ViewDetails.jsp" class="btn btn-info">View Details</a>
                        </div>
                    </div>
                </div>
                <%
                count++;
            }
            %>
        </div>
    </div>
</body>
</html>
