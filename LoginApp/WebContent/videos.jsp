<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	
	<%
	response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
 	//response.setHeader("Expires", "0"); //for proxy server
		if(session.getAttribute("username")==null){
			response.sendRedirect("login.jsp");
		}
	%>
	videos page
	
	<br/>
	<a href="welcome.jsp">back</a>
	<br/>
	<form action="./Logout" method="post">
		<input type="submit" value="logout">
	</form>
</html>