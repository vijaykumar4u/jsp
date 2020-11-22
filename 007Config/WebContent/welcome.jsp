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
		out.print("Welcome User" + " " + request.getParameter("uname"));
	%><br>
	<%
		String user = config.getInitParameter("user");
		String Pass = config.getInitParameter("pass");
		out.print("Db user is" + user);
	%><br>
	<%
		out.print("Password is" + Pass);
	%>


</body>
</html>