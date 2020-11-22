<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
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
List<String> names = new ArrayList<String>();
names.add("Ganesh");
names.add("Vivek");

%>
<strong>Simple . EL Example:</strong> ${requestScope.person}
<br><br>
<strong>Simple . EL Example without scope:</strong> ${person}  
<br><br>
<strong>Simple [] Example:</strong> ${applicationScope["User.Cookie"]}
<br><br>
<strong>Multiples . EL Example:</strong> ${sessionScope.employee.address.address}
<br><br>
<strong>List EL Example:</strong> ${names[1]}
<br><br>
<strong>Header information EL Example:</strong> ${header["Accept-Encoding"]}
<br><br>
<strong>Cookie EL Example:</strong> ${cookie["User.Cookie"].value}
<br><br>
<strong>pageContext EL Example:</strong> HTTP Method is ${pageContext.request.method}
<br><br>

</body>
</html>