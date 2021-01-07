<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="omtbs.model.dao.MovieDAO, omtbs.model.beans.MovieBean, java.util.ArrayList"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>SearchMovie | OMTBS</title>
<link rel="stylesheet" type="text/css" href="css/style.css">
<style type="text/css">
	table{
		border-collapse:collapse;
		width:100%;
	}
	table th,table td{
  		border: 1px solid #ddd;
  		padding: 8px;
	}
</style>
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
    	<a href="#" class="submitbtn">Search Movie By Type</a>
    	&nbsp;<a href="#" class="submitbtn">Search Movie By Year</a>
    	<br><br>
    	<%
    		ArrayList<MovieBean> al=MovieDAO.getMovies();
    		if(al.size()==0){
    			%><h2>No Movie Record Found!</h2><%
    		}
    		else{
    			%>
    			<table>
	    		<thead>
	    		<tr>
	   				<th>TITLE</th>
	   				<th>YEAR</th>
	   				<th>DURATION</th>
	   				<th>DIRECTOR</th>
	   				<th>CAST</th>
	   				<th>LANGUAGE</th>
	   				<th>TYPE</th>
	   				<th>POSTER</th>
	   			</tr>
	    		</thead>
	    		<tbody>
	    		<%
	    		for(int i=0; i<al.size(); i++){ 
	    			 MovieBean mBean = (MovieBean)al.get(i);
	    		%>
	    			<tr>
	    				<td><%=mBean.getTitle() %></td>
	    				<td><%=mBean.getYear() %></td>
	    				<td><%=mBean.getDuration() %></td>
	    				<td><%=mBean.getDirector() %></td>
	    				<td><%=mBean.getCast() %></td>
	    				<td><%=mBean.getLanguage() %></td>
	    				<td><%=mBean.getType() %></td>
	    				<td><%="<img src=\"E:/Mine/Semester 5/Web/eclipse/OMTBS/src/img/movies/Hobbit.jpg\" alt=\"N/A\">" %></td>
	    			</tr>
	    		<%
	    		}
	    		%>
	    		</tbody>
	    		</table>
	    		<%
    		}
    	%>
    </div>
    <div class="footer">
        <h2>Footer</h2>
    </div>
</body>
</html>