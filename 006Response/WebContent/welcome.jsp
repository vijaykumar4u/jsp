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
String userName = request.getParameter("user");
String pswd = request.getParameter("pass");
if(userName.equals("vijay")&& pswd.equals("123456")){
	response.sendRedirect("http://www.google.com");
	
}else{
	
%>
<h2 style="color: red">Invaild UserName and PassWord</h2>
<%} %>
</body>
</html>