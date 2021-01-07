<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" errorPage="error.jsp"%>
<!DOCTYPE html>
<html>
	<head>
	<meta charset="ISO-8859-1">
	<title>Login | OMTBS</title>
	        <link rel="stylesheet" type="text/css" href="css/style.css">
	       <script src="js/validation.js"></script>
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
        <fieldset>
            <legend>Login</legend>
            <form name="myform" method="post" action="Login">
                <label for="email">Email</label>
                <br>
                <input type="text" class="inputfield" name="email" placeholder="Enter email" required>
                <br>
                <label for="password">Password</label>
                <br>
                <input type="password" class="inputfield" name="password" placeholder="Enter password" required>
                <br>
                <input type="submit" class="submitbtn" value="Login"><span style="color:#30080B;">Don't have an account?<a href="register.jsp" class="already">Register</a></span>
           		<br><br>
            </form>
        </fieldset>
    </div>
        <div class="footer">
            <h2>Footer</h2>
        </div>
</body>
</html>