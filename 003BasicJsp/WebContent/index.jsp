<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<!-- Declaration -->
<%!int a=10,b=20; 
int sum(){
	 
	return a+b;
	
}

%>
<!-- Scriptlet -->
<%out.println("SUM of A and B is ===> " + sum());
out.println("eno"+request.getAttribute("eno"));
%>
<!--  Expression -->
	SUM Of Two Numbers
	<%=sum()%>

</body>
</html>