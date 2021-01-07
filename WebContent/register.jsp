<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" errorPage="error.jsp"%>
<!DOCTYPE html>
<html>
	<head>
	<meta charset="ISO-8859-1">
	<title>Register | OMTBS</title>
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
                <legend>
                    Register
                </legend>
                <form name="myform" method="post" action="Register" onsubmit="return validatePass()">
                    <label for="name">Full Name</label>
                    <br>
                    <input type="text" class="inputfield" name="name" placeholder="Enter full name" required onkeypress="return validateName(event)">
                    <br>
                    <label for="email">Email</label>
                    <br>
                    <input type="email" class="inputfield" name="email" placeholder="Enter email address" required>
                    <br>
                    <label for="password">Password</label>
                    <br>
                    <input type="password" class="inputfield" name="password" placeholder="Enter password" required>
                    <br>
                    <label for="cpassword">Confirm Password</label>
                    <br>
                    <input type="password" class="inputfield" name="cpassword" placeholder="Confirm password" required>
                    <br>
                    <label for="ccn">Credit Card Number</label>
                    <br>
                    <input type="password" class="inputfield" name="ccn" placeholder="Enter credit-card number" required onkeypress="return validateNumber(event)">
                    <br>
                    <label for="address">Address</label>
                    <br>
                    <input type="text" class="inputfield" name="address" placeholder="Enter address" required>
                    <br>
                    <label for="phone">Phone Number</label>
                    <br>
                    <input type="text" class="inputfield" name="phone" placeholder="Enter mobile number" required onkeypress="return validateNumber(event)">
                    <br>
                    <label for="gender">Gender</label>
                    <br>
                    <input type="radio" style="padding: 12px 20px; margin: 8px 0; width: 5%;" name="gender" value="m" checked>Male
                    <input type="radio" style="padding: 12px 20px; margin: 8px 0; width: 5%;" name="gender" value="f">Female
                    <br>
                    <input type="submit" class="submitbtn" value="Register">
             		<span style="color: #30080B;">Already have an account?<a href="login.jsp" class="already">Login</a></span>
                	<br><br>
                </form>
            </fieldset>
        </div>
        <div class="footer">
            <h2>Footer</h2>
        </div>
	</body>
</html>