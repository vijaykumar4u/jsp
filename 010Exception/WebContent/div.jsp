<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"% errorPage="exception.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%int a = Integer.parseInt(request.getParameter("num1"));
int b = Integer.parseInt(request.getParameter("num2"));
int div = a/b;

%>
Division of two numbers ===><%=div %>

</body>
</html>