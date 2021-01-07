<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" errorPage="error.jsp"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Home | OMTBS</title>
	<link rel="stylesheet" type="text/css" href="css/style.css">
</head>
<body>
	<%
		String usertype=(String)session.getAttribute("usertype");
		if(usertype!=null){
			if(usertype.equalsIgnoreCase("customer"))
				response.sendRedirect("customerhome.jsp");
			else
				response.sendRedirect("adminhome.jsp");
		}
	%>
	<div class="header">
            <h1>ONLINE MOVIE TICKET BOOKING SYSTEM</h1>
    </div>
    <div class="topnav">
        <a href="home.jsp">Home</a>
        <a href="#">Buy Tickets</a>
        <a href="#">Watch Trailers</a>
        <a href="#">About Us</a>
        <a href="#">Contact Us</a>
        <a href="register.jsp" style="float: right;">Register</a>
        <a href="login.jsp" style="float: right;">Login</a>
    </div>
    <div class="main">
        <h2>Main</h2>
    </div>
    <div class="footer">
        <h2>Footer</h2>
    </div>
</body>
</html>