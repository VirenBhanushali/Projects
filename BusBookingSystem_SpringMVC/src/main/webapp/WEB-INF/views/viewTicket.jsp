<%@page import="java.io.PrintWriter"%>
<%@page import="com.dev.bss.beans.User"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Get Ticket</title>
<link href="${pageContext.request.contextPath}/resources/css/bootstrap.css"
    rel="stylesheet">
      <link href="${pageContext.request.contextPath}/resources/Spring.css"
    rel="stylesheet"> 
</head>
<body>
<%@ include file="loginheader.jsp" %>
<%  
     User user = (User) session.getAttribute("details");
    if(user != null)
    {
    	PrintWriter output = response.getWriter();
    	output.println("<h1> Welcome "+user.getUserName()+" </h1>");
    	
    }
    else
    {
    	response.sendRedirect("./login");
    }
 
 %>
 <div class="col-md-4 offset-4 mt-4 card">
    <div class="card-body">
    <div class ="form-group">
 <h1>View Tickets</h1>
<form action = "./view" method = "post">
<input class = "form-control" type="text" name="bookingId"/><br>
<input class = "form-control" type = "submit" value="Get Ticket">
</form>
</div>
</div>
</div>
</body>
</html>