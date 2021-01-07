<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>AddMovie | OMTBS</title>
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
		else{
			if(session.getAttribute("movieadded")!=null){
				if(((Boolean)session.getAttribute("movieadded"))==true){
					%>
					<script>alert("Movie ADDED!");</script>
					<%
				}
				else{
					%>
					<script>alert("Movie NOT added!");</script>
					<%
				}
			session.removeAttribute("movieadded");
			}
		}
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
        <fieldset>
            <legend>Add Movie Record</legend>
            <form name="myform" method="post" enctype="multipart/form-data" action="AddMovie">
				<label for="title">Movie Title</label>
				<br> 
				<input type="text" class="inputfield" name="title" placeholder="Enter movie title" required>
				<br>
				<label for="year">Year of Release</label>
				<br>
				<input type="number" class="inputfield" name="year" min="1900" max="2020" required placeholder="Enter year(1900-2020)">
				<br>
				<label for="year">Duration (in minutes)</label>
				<br>
				<input type="number" class="inputfield" name="duration" min="30" max="210" placeholder="Enter duration(30-210)">
				<br>
				<label for="director">Director</label>
				<br>
				<input type="text" class="inputfield" name="director" placeholder="Enter movie director">
				<br>
				<label for="cast">Cast</label>
				<br>
				<textarea rows="4" cols="50" name="cast" placeholder="Enter movie cast" class="inputfield"></textarea>
				<br>
				<label for="language">Language</label>
				<br>
				<select name="language">
				    <option value="English">English</option>
				    <option value="Urdu">Urdu</option>
				    <option value="Hindi">Hindi</option>
				    <option value="Punjabi">Punjabi</option>
				    <option value="Punjabi">Chinese</option>
				</select>
				<br><br>
				<label for="type">Movie Type</label>
				<br>
				<input type="checkbox" name="type" value="Action">Action
				<input type="checkbox" name="type" value="Adventure">Adventure
				<input type="checkbox" name="type" value="Fantasy">Fantasy
				<input type="checkbox" name="type" value="Crime">Crime
				<input type="checkbox" name="type" value="Romantic">Romantic
				<input type="checkbox" name="type" value="Romantic">War
				<br>
				<input type="checkbox" name="type" value="Drama">Horror
				<input type="checkbox" name="type" value="Sci-Fi">Sci-Fi
				<input type="checkbox" name="type" value="Family">Thriller
				<input type="checkbox" name="type" value="Comedy">Comedy
				<input type="checkbox" name="type" value="Romantic">Apocolypse
				<input type="checkbox" name="type" value="Other">Other
				<br>
				<br>
				<label for="pic">Movie Picture</label>
				<br>
				<input type="file" class="submitbtn" name="pic" required>
				<br>
				<input type="submit" class="submitbtn" value="Add Movie Record">
				<span>&nbsp;</span>
				<input type="reset" class="submitbtn" value="Reset">
				<br><br>
            </form>       
        </fieldset>
    </div>
    <div class="footer">
        <h2>Footer</h2>
    </div>
</body>
</html>