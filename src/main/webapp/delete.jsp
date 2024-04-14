<%@page import="conn.DBConn"%>
<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%
	String id = request.getParameter("rid");
	%>

	<h1><%=id %></h1>

<% 
	try {
		Connection conn = DBConn.getcon();

		String sql = "delete from  recrument where rid=" + id;
		
		System.out.print(sql);

		Statement stmt = conn.createStatement();
		
	
		stmt.execute(sql);
		
		out.print("done");
		
		response.sendRedirect("showrec.jsp");

	} catch (Exception e) {
		out.println("Error" + e.toString());
	}
	
	%>

</body>
</html>