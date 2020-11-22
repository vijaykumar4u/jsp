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
		String uname = request.getParameter("uname");
		out.println("welcome" + " " + uname);
		session.setAttribute("user", uname);
	%>
	<a href="Second.jsp">second jsp page</a>

</body>
</html>