<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"  errorPage="error.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Profile | OMTBS</title>
</head>
<body>
<%
	String usertype=(String)session.getAttribute("usertype");
	if(usertype==null)
		response.sendRedirect("home.jsp");
	else{
		if(usertype.equalsIgnoreCase("customer")==false)
			response.sendRedirect("adminhome.jsp");
	}
%>
</body>
</html>