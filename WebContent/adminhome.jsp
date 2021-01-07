<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"  errorPage="error.jsp"%>
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
	if(usertype==null)
		response.sendRedirect("home.jsp");
	else{ 
		if(usertype.equalsIgnoreCase("customer")==true)
			response.sendRedirect("customerhome.jsp");	
	}
%>
	<div class="header">
            <h1>ONLINE MOVIE TICKET BOOKING SYSTEM</h1>
    </div>
    <div class="topnav">
        <a href="adminhome.jsp">Home</a>
        <a href="addmovie.jsp">Add Movie</a>
        <a href="asearchmovie.jsp">Search Movie</a>
        <a href="#">Update Movie</a>
        <a href="#">Delete Movie</a>
        <a href="adminprofile.jsp" style="float: right;">Account</a>
        <a href="logout.jsp" style="float: right;">Logout</a>
    </div>
    <div class="main">
        <h2>Main</h2>
    </div>
    <div class="footer">
        <h2>Footer</h2>
    </div>
</body>
</html>